<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DiscountCode;
use App\Models\DiscountCodeBranch;
use App\Models\DiscountCodeProduct;
use App\Models\UserDiscountCode;
use App\Models\DiscountUsageHistory;
use App\Models\Branch;
use App\Models\Product;
use App\Models\Category;
use App\Models\Combo;
use App\Models\User;
use App\Models\ProductVariant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

/**
 * Get users by rank IDs for AJAX request
 * 
 * @param Request $request
 * @return \Illuminate\Http\JsonResponse
 */

class DiscountCodeController extends Controller
{
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
            'status' => 'nullable|string',
            'date_from' => 'nullable|date',
            'date_to' => 'nullable|date|after_or_equal:date_from',
            'discount_type' => 'nullable|string'
        ]);

        $search = $request->input('search', '');
        $status = $request->input('status', 'all');
        $dateFrom = $request->input('date_from');
        $dateTo = $request->input('date_to');
        $discountType = $request->input('discount_type');
        
        $now = now();
        $query = DiscountCode::with(['createdBy', 'branches', 'products.product', 'products.category', 'products.combo'])
                ->orderBy('display_order', 'asc')
                ->orderBy('start_date', 'desc');

        if ($search) {
            $query->where(function($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('code', 'like', "%{$search}%");
            });
        }

        if ($status && $status !== 'all') {
            switch ($status) {
                case 'active':
                    $query->where('is_active', true)
                          ->where('start_date', '<=', $now)
                          ->where('end_date', '>=', $now);
                    break;
                case 'inactive':
                    $query->where('is_active', false);
                    break;
                case 'expired':
                    $query->where('is_active', true)
                          ->where('end_date', '<', $now);
                    break;
                case 'upcoming':
                    $query->where('is_active', true)
                          ->where('start_date', '>', $now);
                    break;
            }
        }

        if ($dateFrom) {
            $query->where('end_date', '>=', $dateFrom);
        }

        if ($dateTo) {
            $query->where('start_date', '<=', $dateTo);
        }

        if ($discountType) {
            $query->where('discount_type', $discountType);
        }

        $discountCodes = $query->paginate(10);

        // Calculate statistics
        $totalCodes = DiscountCode::count();
        $activeCodes = DiscountCode::where('is_active', true)
            ->where('start_date', '<=', $now)
            ->where('end_date', '>=', $now)
            ->count();
        $expiringSoon = DiscountCode::where('is_active', true)
            ->where('end_date', '>', $now)
            ->where('end_date', '<=', $now->copy()->addDays(7))
            ->count();
        $expiredCodes = DiscountCode::where('end_date', '<', $now)->count();

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'html' => view('admin.discount_codes.partials.discount_codes_table', compact('discountCodes'))->render(),
                'pagination' => view('admin.discount_codes.partials.pagination', compact('discountCodes'))->render(),
                'total' => $discountCodes->total(),
                'from' => $discountCodes->firstItem() ?? 0,
                'to' => $discountCodes->lastItem() ?? 0
            ]);
        }

        return view('admin.discount_codes.index', compact('discountCodes', 'totalCodes', 'activeCodes', 'expiringSoon', 'expiredCodes'));
    }

    public function create()
    {
        $branches = Branch::orderBy('name')->get();
        $categories = Category::orderBy('name')->get();
        $products = Product::orderBy('name')->get();
        $combos = Combo::orderBy('name')->get();
        
        return view('admin.discount_codes.create', compact('branches', 'categories', 'products', 'combos'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'code' => 'required|unique:discount_codes,code',
            'name' => 'required',
            'discount_type' => 'required|in:percentage,fixed_amount,free_shipping',
            'discount_value' => 'required|numeric|min:0',
            'min_order_amount' => 'nullable|numeric|min:0',
            'max_discount_amount' => 'nullable|numeric|min:0',
            'applicable_items' => 'nullable|string',
            'applicable_scope' => 'nullable|string',
            'applicable_ranks' => 'nullable|array',
            'applicable_ranks.*' => 'integer|between:1,5',
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
            'valid_days_of_week' => 'nullable|array',
            'valid_days_of_week.*' => 'integer|between:0,6',
            'valid_from_time' => 'nullable|date_format:H:i',
            'valid_to_time' => 'nullable|date_format:H:i|after_or_equal:valid_from_time',
            'usage_type' => 'required|in:public,personal',
            'max_total_usage' => 'nullable|integer|min:0',
            'max_usage_per_user' => 'nullable|integer|min:1',
            'assigned_users' => 'nullable|array',
            'assigned_users.*' => 'exists:users,id',
        ]);

        DB::beginTransaction();
        
        try {
            // Dữ liệu tạo mới
            $createData = [
                'code' => $request->code,
                'name' => $request->name,
                'description' => $request->description,
                'image' => $request->image, 
                'discount_type' => $request->discount_type,
                'discount_value' => $request->discount_value,
                'min_order_amount' => $request->min_order_amount ?? 0,
                'max_discount_amount' => $request->max_discount_amount,
                'applicable_scope' => $request->applicable_scope ?? 'all_branches',
                'applicable_items' => $request->applicable_items ?? 'all_items',
                'applicable_ranks' => $request->applicable_ranks,
                'rank_exclusive' => $request->has('rank_exclusive'),
                'valid_days_of_week' => $request->valid_days_of_week,
                'valid_from_time' => $request->valid_from_time,
                'valid_to_time' => $request->valid_to_time,
                'usage_type' => $request->usage_type ?? 'public',
                'max_total_usage' => $request->max_total_usage,
                'max_usage_per_user' => $request->max_usage_per_user ?? 1,
                'is_active' => $request->has('is_active'),
                'is_featured' => $request->has('is_featured'),
                'display_order' => $request->display_order ?? 0,
                'created_by' => Auth::guard('admin')->id(),
                'start_date' => $request->start_date,
                'end_date' => $request->end_date,
            ];
            
            Log::info('Create data: ' . json_encode($createData));
            $discountCode = DiscountCode::create($createData);
            
            // Handle specific branches if applicable
            if ($request->applicable_scope === 'specific_branches' && $request->has('branch_ids')) {
                // Kiểm tra xem đã chọn tất cả chi nhánh chưa
                $allBranchCount = Branch::count();
                $selectedBranchCount = count($request->branch_ids);
                
                // Nếu đã chọn tất cả chi nhánh, chuyển thành 'all_branches'
                if ($allBranchCount === $selectedBranchCount) {
                    Log::info('All branches are selected, switching to all_branches mode');
                    $discountCode->update(['applicable_scope' => 'all_branches']);
                } else {
                    // Nếu chỉ chọn một số chi nhánh, thêm vào bảng liên kết
                    foreach ($request->branch_ids as $branchId) {
                        DiscountCodeBranch::create([
                            'discount_code_id' => $discountCode->id,
                            'branch_id' => $branchId,
                        ]);
                    }
                }
            }
            
            // Handle specific products/categories/combos if applicable
            Log::info('Create applicable_items: ' . $request->applicable_items);
            if ($request->applicable_items !== 'all_items') {
                $type = $request->applicable_items;
                $shouldSwitchToAllItems = false;
                
                switch ($type) {
                    case 'specific_products':
                        if ($request->has('product_ids')) {
                            // Kiểm tra xem đã chọn tất cả sản phẩm chưa
                            $allProductCount = Product::count();
                            $selectedProductCount = count($request->product_ids);
                            
                            if ($allProductCount === $selectedProductCount) {
                                Log::info('All products are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->product_ids as $productId) {
                                    // Kiểm tra xem sản phẩm có tồn tại không
                                    $productExists = Product::where('id', $productId)->exists();
                                    if (!$productExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => $productId,
                                        'category_id' => null,
                                        'combo_id' => null,
                                    ]);
                                }
                            }
                        }
                        break;
                        
                    case 'specific_categories':
                        if ($request->has('category_ids')) {
                            // Kiểm tra xem đã chọn tất cả danh mục chưa
                            $allCategoryCount = Category::count();
                            $selectedCategoryCount = count($request->category_ids);
                            
                            if ($allCategoryCount === $selectedCategoryCount) {
                                Log::info('All categories are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->category_ids as $categoryId) {
                                    // Kiểm tra xem danh mục có tồn tại không
                                    $categoryExists = Category::where('id', $categoryId)->exists();
                                    if (!$categoryExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => null,
                                        'category_id' => $categoryId,
                                        'combo_id' => null,
                                    ]);
                                }
                            }
                        }
                        break;
                        
                    case 'combos_only':
                        if ($request->has('combo_ids')) {
                            // Kiểm tra xem đã chọn tất cả combo chưa
                            $allComboCount = Combo::count();
                            $selectedComboCount = count($request->combo_ids);
                            
                            if ($allComboCount === $selectedComboCount) {
                                Log::info('All combos are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->combo_ids as $comboId) {
                                    // Kiểm tra xem combo có tồn tại không
                                    $comboExists = Combo::where('id', $comboId)->exists();
                                    if (!$comboExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => null,
                                        'category_id' => null,
                                        'combo_id' => $comboId,
                                    ]);
                                }
                            }
                        }
                        break;
                }
                
                // Nếu đã chọn tất cả sản phẩm/danh mục/combo, chuyển thành 'all_items'
                if ($shouldSwitchToAllItems) {
                    $discountCode->update(['applicable_items' => 'all_items']);
                }
            }
            
            // Handle assigned users if discount code is personal
            if ($request->usage_type === 'personal' && $request->has('assigned_users')) {
                // Get users with eligible ranks
                $eligibleUserIds = $request->assigned_users;
                $requestedUserCount = count($request->assigned_users);
                
                // If there are rank restrictions, filter users by rank
                if (!empty($request->applicable_ranks)) {
                    $selectedRanks = (array) $request->applicable_ranks;
                    $eligibleUsers = User::whereIn('id', $request->assigned_users)
                                        ->whereIn('user_rank_id', $selectedRanks)
                                        ->get();
                    $eligibleUserIds = $eligibleUsers->pluck('id')->toArray();
                    $eligibleUserCount = count($eligibleUserIds);
                    
                    // Add a warning message if some users were filtered out
                    if ($eligibleUserCount < $requestedUserCount) {
                        $filteredOutCount = $requestedUserCount - $eligibleUserCount;
                        session()->flash('warning', "Có {$filteredOutCount} người dùng không được gán mã giảm giá vì không đạt hạng thành viên yêu cầu.");
                    }
                }
                
                foreach ($eligibleUserIds as $userId) {
                    UserDiscountCode::create([
                        'discount_code_id' => $discountCode->id,
                        'user_id' => $userId,
                        'status' => 'available'
                    ]);
                }
            }
            
            DB::commit();
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Mã giảm giá '{$request->code}' đã được tạo thành công."
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->back()->withInput()->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Không thể tạo mã giảm giá: ' . $e->getMessage()
            ]);
        }
    }

    public function edit($id)
    {
        $discountCode = DiscountCode::with(['branches', 'products'])->findOrFail($id);
        $branches = Branch::orderBy('name')->get();
        $categories = Category::orderBy('name')->get();
        $products = Product::orderBy('name')->get();
        $combos = Combo::orderBy('name')->get();
        
        $selectedBranches = $discountCode->branches->pluck('id')->toArray();
        $selectedProducts = $discountCode->products->where('product_id', '!=', null)->pluck('product_id')->toArray();
        $selectedCategories = $discountCode->products->where('category_id', '!=', null)->pluck('category_id')->toArray();
        $selectedCombos = $discountCode->products->where('combo_id', '!=', null)->pluck('combo_id')->toArray();
        
        return view('admin.discount_codes.edit', compact(
            'discountCode', 'branches', 'categories', 'products', 'combos',
            'selectedBranches', 'selectedProducts', 'selectedCategories', 'selectedCombos'
        ));
    }

    public function update(Request $request, $id)
    {
        $discountCode = DiscountCode::findOrFail($id);

        $request->validate([
            'code' => 'required|unique:discount_codes,code,' . $id,
            'name' => 'required',
            'discount_type' => 'required|in:percentage,fixed_amount,free_shipping',
            'discount_value' => 'required|numeric|min:0',
            'min_order_amount' => 'nullable|numeric|min:0',
            'max_discount_amount' => 'nullable|numeric|min:0',
            'applicable_items' => 'nullable|string',
            'applicable_scope' => 'nullable|string',
            'applicable_ranks' => 'nullable|array',
            'applicable_ranks.*' => 'integer|between:1,5',
            'start_date' => 'required|date',
            'end_date' => 'required|date|after_or_equal:start_date',
            'valid_days_of_week' => 'nullable|array',
            'valid_days_of_week.*' => 'integer|between:0,6',
            'valid_from_time' => 'nullable|date_format:H:i',
            'valid_to_time' => 'nullable|date_format:H:i|after_or_equal:valid_from_time',
            'usage_type' => 'required|in:public,personal', 
            'max_total_usage' => 'nullable|integer|min:0',
            'max_usage_per_user' => 'nullable|integer|min:1',
            'assigned_users' => 'nullable|array',
            'assigned_users.*' => 'exists:users,id',
        ]);

        DB::beginTransaction();
        
        try {
            // Dữ liệu cập nhật
            $updateData = [
                'code' => $request->code,
                'name' => $request->name,
                'description' => $request->description,
                'image' => $request->image,
                'discount_type' => $request->discount_type,
                'discount_value' => $request->discount_value,
                'min_order_amount' => $request->min_order_amount ?? 0,
                'max_discount_amount' => $request->max_discount_amount,
                'applicable_scope' => $request->applicable_scope ?? 'all_branches',
                'applicable_items' => $request->applicable_items ?? 'all_items',
                'applicable_ranks' => $request->applicable_ranks,
                'rank_exclusive' => $request->has('rank_exclusive'),
                'valid_days_of_week' => $request->valid_days_of_week,
                'valid_from_time' => $request->valid_from_time,
                'valid_to_time' => $request->valid_to_time,
                'usage_type' => $request->usage_type,
                'max_total_usage' => $request->max_total_usage,
                'max_usage_per_user' => $request->max_usage_per_user ?? 1,
                'is_active' => $request->has('is_active'),
                'is_featured' => $request->has('is_featured'),
                'display_order' => $request->display_order ?? 0,
                'start_date' => $request->start_date,
                'end_date' => $request->end_date,
            ];
            
            Log::info('Update data: ' . json_encode($updateData));
            $discountCode->update($updateData);
            
            // Handle specific branches update if applicable
            Log::info('Update applicable_scope: ' . $request->applicable_scope);
            if ($request->applicable_scope === 'specific_branches') {
                // Remove existing branch relationships
                DiscountCodeBranch::where('discount_code_id', $discountCode->id)->delete();
                Log::info('Deleted existing branch relationships for specific branches');
                
                // Add new branch relationships
                if ($request->has('branch_ids')) {
                    Log::info('Adding new branch relationships: ' . json_encode($request->branch_ids));
                    
                    // Kiểm tra xem đã chọn tất cả chi nhánh chưa
                    $allBranchCount = Branch::count();
                    $selectedBranchCount = count($request->branch_ids);
                    
                    // Nếu đã chọn tất cả chi nhánh, chuyển thành 'all_branches'
                    if ($allBranchCount === $selectedBranchCount) {
                        Log::info('All branches are selected, switching to all_branches mode');
                        $discountCode->update(['applicable_scope' => 'all_branches']);
                    } else {
                        // Nếu chỉ chọn một số chi nhánh, thêm vào bảng liên kết
                        foreach ($request->branch_ids as $branchId) {
                            DiscountCodeBranch::create([
                                'discount_code_id' => $discountCode->id,
                                'branch_id' => $branchId,
                            ]);
                        }
                    }
                }
            } else {
                // Nếu chọn "Tất cả chi nhánh", xóa tất cả liên kết chi nhánh cụ thể
                Log::info('All branches selected, deleting all branch relationships');
                DiscountCodeBranch::where('discount_code_id', $discountCode->id)->delete();
            }
            
            // Handle specific products/categories/combos update if applicable
            Log::info('Update applicable_items: ' . $request->applicable_items);
            if ($request->applicable_items !== 'all_items') {
                // Remove existing product relationships
                DiscountCodeProduct::where('discount_code_id', $discountCode->id)->delete();
                Log::info('Deleted existing product relationships for specific items');
                
                // Add new product relationships based on the type
                $type = $request->applicable_items;
                $shouldSwitchToAllItems = false;
                
                switch ($type) {
                    case 'specific_products':
                        if ($request->has('product_ids')) {
                            // Kiểm tra xem đã chọn tất cả sản phẩm chưa
                            $allProductCount = Product::count();
                            $selectedProductCount = count($request->product_ids);
                            
                            if ($allProductCount === $selectedProductCount) {
                                Log::info('All products are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->product_ids as $productId) {
                                    // Kiểm tra xem sản phẩm có tồn tại không
                                    $productExists = Product::where('id', $productId)->exists();
                                    if (!$productExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => $productId,
                                        'category_id' => null,
                                        'combo_id' => null,
                                    ]);
                                }
                            }
                        }
                        break;
                        
                    case 'specific_categories':
                        if ($request->has('category_ids')) {
                            // Kiểm tra xem đã chọn tất cả danh mục chưa
                            $allCategoryCount = Category::count();
                            $selectedCategoryCount = count($request->category_ids);
                            
                            if ($allCategoryCount === $selectedCategoryCount) {
                                Log::info('All categories are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->category_ids as $categoryId) {
                                    // Kiểm tra xem danh mục có tồn tại không
                                    $categoryExists = Category::where('id', $categoryId)->exists();
                                    if (!$categoryExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => null,
                                        'category_id' => $categoryId,
                                        'combo_id' => null,
                                    ]);
                                }
                            }
                        }
                        break;
                        
                    case 'combos_only':
                        if ($request->has('combo_ids')) {
                            // Kiểm tra xem đã chọn tất cả combo chưa
                            $allComboCount = Combo::count();
                            $selectedComboCount = count($request->combo_ids);
                            
                            if ($allComboCount === $selectedComboCount) {
                                Log::info('All combos are selected, switching to all_items mode');
                                $shouldSwitchToAllItems = true;
                            } else {
                                foreach ($request->combo_ids as $comboId) {
                                    // Kiểm tra xem combo có tồn tại không
                                    $comboExists = Combo::where('id', $comboId)->exists();
                                    if (!$comboExists) {
                                        continue; // Bỏ qua nếu không tồn tại
                                    }
                                    
                                    DiscountCodeProduct::create([
                                        'discount_code_id' => $discountCode->id,
                                        'product_id' => null,
                                        'category_id' => null,
                                        'combo_id' => $comboId,
                                    ]);
                                }
                            }
                        }
                        break;
                }
                
                // Nếu đã chọn tất cả sản phẩm/danh mục/combo, chuyển thành 'all_items'
                if ($shouldSwitchToAllItems) {
                    $discountCode->update(['applicable_items' => 'all_items']);
                }
            } else {
                // Nếu chọn "Tất cả sản phẩm", xóa tất cả các liên kết sản phẩm cụ thể
                Log::info('All items selected, deleting all product relationships');
                DiscountCodeProduct::where('discount_code_id', $discountCode->id)->delete();
            }
            
            // Handle assigned users if discount code is personal
            if ($request->usage_type === 'personal') {
                // Remove existing user assignments
                UserDiscountCode::where('discount_code_id', $discountCode->id)->delete();
                
                // Add new user assignments
                if ($request->has('assigned_users')) {
                    // Get users with eligible ranks
                    $eligibleUserIds = $request->assigned_users;
                    $requestedUserCount = count($request->assigned_users);
                    
                    // If there are rank restrictions, filter users by rank
                    if (!empty($request->applicable_ranks)) {
                        $selectedRanks = (array) $request->applicable_ranks;
                        $eligibleUsers = User::whereIn('id', $request->assigned_users)
                                            ->whereIn('user_rank_id', $selectedRanks)
                                            ->get();
                        $eligibleUserIds = $eligibleUsers->pluck('id')->toArray();
                        $eligibleUserCount = count($eligibleUserIds);
                        
                        // Add a warning message if some users were filtered out
                        if ($eligibleUserCount < $requestedUserCount) {
                            $filteredOutCount = $requestedUserCount - $eligibleUserCount;
                            session()->flash('warning', "Có {$filteredOutCount} người dùng không được gán mã giảm giá vì không đạt hạng thành viên yêu cầu.");
                        }
                    }
                    
                    foreach ($eligibleUserIds as $userId) {
                        UserDiscountCode::create([
                            'discount_code_id' => $discountCode->id,
                            'user_id' => $userId,
                            'status' => 'available'
                        ]);
                    }
                }
            }
            
            DB::commit();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => true,
                    'message' => "Mã giảm giá '{$request->code}' đã được cập nhật thành công."
                ]);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Mã giảm giá '{$request->code}' đã được cập nhật thành công."
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->back()->withInput()->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Không thể cập nhật mã giảm giá: ' . $e->getMessage()
            ]);
        }
    }

    public function destroy($id)
    {
        try {
            DB::beginTransaction();
            
            // Delete related records first
            DiscountCodeBranch::where('discount_code_id', $id)->delete();
            DiscountCodeProduct::where('discount_code_id', $id)->delete();
            UserDiscountCode::where('discount_code_id', $id)->delete();
            
            // Then delete the discount code
            $discountCode = DiscountCode::findOrFail($id);
            $codeName = $discountCode->code;
            $discountCode->delete();
            
            DB::commit();
            
            if (request()->ajax()) {
                return response()->json([
                    'success' => true,
                    'message' => "Mã giảm giá '{$codeName}' đã được xóa thành công."
                ]);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Mã giảm giá '{$codeName}' đã được xóa thành công."
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            
            if (request()->ajax()) {
                return response()->json([
                    'success' => false, 
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Không thể xóa mã giảm giá: ' . $e->getMessage()
            ]);
        }
    }

    public function show($id)
    {
        $discountCode = DiscountCode::with([
            'createdBy', 
            'branches', 
            'products.product', 
            'products.category', 
            'products.combo',
            'users.user'
        ])->findOrFail($id);
        
        $usageCount = DiscountUsageHistory::where('discount_code_id', $id)->count();
        $discountCode->current_usage_count = $usageCount;
        
        // Get available branches for this discount code
        $availableBranches = $this->getAvailableBranchesForDiscountCode($discountCode);
        
        return view('admin.discount_codes.show', compact('discountCode', 'availableBranches'));
    }

    /**
     * Get branches available for a discount code based on its applicable scope
     * 
     * @param DiscountCode $discountCode
     * @return \Illuminate\Database\Eloquent\Collection
     */
    protected function getAvailableBranchesForDiscountCode(DiscountCode $discountCode)
    {
        // If the discount code applies to all branches
        if ($discountCode->applicable_scope === 'all_branches') {
            return Branch::orderBy('name')->get();
        }
        
        // If the discount code applies to specific branches
        if ($discountCode->applicable_scope === 'specific_branches') {
            // Get the IDs of branches already linked to this discount code
            $linkedBranchIds = $discountCode->branches->pluck('id')->toArray();
            
            // Return only branches that are already linked
            return Branch::whereIn('id', $linkedBranchIds)
                ->orderBy('name')
                ->get();
        }
        
        // Default to empty collection if applicable_scope is not recognized
        return collect();
    }

    public function toggleStatus(Request $request, $id)
    {
        try {
            $discountCode = DiscountCode::findOrFail($id);
            $discountCode->update(['is_active' => !$discountCode->is_active]);
            
            $statusText = $discountCode->is_active ? 'kích hoạt' : 'vô hiệu hóa';
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => true,
                    'message' => "Mã giảm giá '{$discountCode->code}' đã được {$statusText} thành công.",
                    'is_active' => $discountCode->is_active,
                    'status_html' => view('admin.discount_codes.partials.status_badge', ['discountCode' => $discountCode])->render()
                ]);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Mã giảm giá '{$discountCode->code}' đã được {$statusText} thành công."
            ]);
        } catch (\Exception $e) {
            if ($request->ajax()) {
                return response()->json([
                    'success' => false, 
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Lỗi: ' . $e->getMessage()
            ]);
        }
    }

    public function bulkStatusUpdate(Request $request)
    {
        try {
            $request->validate(['ids' => 'required|array', 'is_active' => 'required|boolean']);
            
            $isActive = $request->is_active;
            $count = count($request->ids);
            $action = $isActive ? 'kích hoạt' : 'vô hiệu hóa';
            
            DiscountCode::whereIn('id', $request->ids)->update(['is_active' => $isActive]);
            
            // Lấy thông tin cập nhật về các mã giảm giá
            $updatedCodes = DiscountCode::whereIn('id', $request->ids)
                ->select('id', 'code', 'is_active', 'start_date', 'end_date')
                ->get();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => true,
                    'message' => "Đã {$action} thành công {$count} mã giảm giá.",
                    'codes' => $updatedCodes,
                    'count' => $count
                ]);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Đã {$action} thành công {$count} mã giảm giá."
            ]);
        } catch (\Exception $e) {
            if ($request->ajax()) {
                return response()->json([
                    'success' => false, 
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Lỗi: ' . $e->getMessage()
            ]);
        }
    }

    public function bulkDelete(Request $request)
    {
        try {
            $request->validate(['ids' => 'required|array']);
            
            DB::beginTransaction();
            
            foreach ($request->ids as $id) {
                DiscountCodeBranch::where('discount_code_id', $id)->delete();
                DiscountCodeProduct::where('discount_code_id', $id)->delete();
                UserDiscountCode::where('discount_code_id', $id)->delete();
            }
            
            $count = DiscountCode::whereIn('id', $request->ids)->count();
            DiscountCode::whereIn('id', $request->ids)->delete();
            
            DB::commit();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => true,
                    'message' => "Đã xóa thành công {$count} mã giảm giá.",
                    'count' => $count
                ]);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'success',
                'title' => 'Thành công!',
                'message' => "Đã xóa thành công {$count} mã giảm giá."
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            
            if ($request->ajax()) {
                return response()->json([
                    'success' => false, 
                    'message' => 'Lỗi: ' . $e->getMessage()
                ], 500);
            }
            
            return redirect()->route('admin.discount_codes.index')->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Không thể xóa mã giảm giá: ' . $e->getMessage()
            ]);
        }
    }

    public function export()
    {
        // Logic xuất Excel/CSV sử dụng package như Maatwebsite\Excel
        return redirect()->route('admin.discount_codes.index')->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Xuất danh sách thành công.'
        ]);
    }

    public function linkBranch(Request $request, $id)
    {
        $discountCode = DiscountCode::findOrFail($id);
        
        // Validate the basic request
        $request->validate(['branch_id' => 'required|exists:branches,id']);
        
        // Get available branches for this discount code
        $availableBranchIds = [];
        
        if ($discountCode->applicable_scope === 'all_branches') {
            // If applicable to all branches, any branch can be linked
            $availableBranchIds = Branch::pluck('id')->toArray();
        } else if ($discountCode->applicable_scope === 'specific_branches') {
            // If applicable to specific branches, only certain branches can be linked
            // Get the branches already linked
            $linkedBranchIds = $discountCode->branches->pluck('id')->toArray();
            $availableBranchIds = $linkedBranchIds;
        }
        
        // Check if the requested branch is in the available branches
        if (!in_array($request->branch_id, $availableBranchIds)) {
            return redirect()->back()->with('toast', [
                'type' => 'error',
                'title' => 'Lỗi!',
                'message' => 'Chi nhánh này không thể liên kết với mã giảm giá do phạm vi áp dụng.'
            ]);
        }
        
        // Check if the branch is already linked
        $exists = DiscountCodeBranch::where('discount_code_id', $id)
            ->where('branch_id', $request->branch_id)
            ->exists();
        
        if ($exists) {
            return redirect()->back()->with('toast', [
                'type' => 'warning',
                'title' => 'Cảnh báo!',
                'message' => 'Chi nhánh này đã được liên kết với mã giảm giá.'
            ]);
        }
        
        // Create the link
        DiscountCodeBranch::create([
            'discount_code_id' => $id,
            'branch_id' => $request->branch_id,
        ]);
        
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Liên kết chi nhánh thành công.'
        ]);
    }

    public function unlinkBranch($id, $branch)
    {
        DiscountCodeBranch::where('discount_code_id', $id)
            ->where('branch_id', $branch)
            ->delete();
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Hủy liên kết chi nhánh thành công.'
        ]);
    }

    public function linkProduct(Request $request, $id)
    {
        $request->validate([
            'product_id' => 'nullable|exists:products,id',
            'category_id' => 'nullable|exists:categories,id',
            'combo_id' => 'nullable|exists:combos,id',
        ]);

        DiscountCodeProduct::create([
            'discount_code_id' => $id,
            'product_id' => $request->product_id,
            'category_id' => $request->category_id,
            'combo_id' => $request->combo_id,
        ]);

        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Liên kết sản phẩm/danh mục/combo thành công.'
        ]);
    }

    public function unlinkProduct($id, $product)
    {
        DiscountCodeProduct::where('discount_code_id', $id)
            ->where(function ($query) use ($product) {
                $query->where('product_id', $product)
                     ->orWhere('category_id', $product)
                     ->orWhere('combo_id', $product);
            })->delete();
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Hủy liên kết sản phẩm/danh mục/combo thành công.'
        ]);
    }

    public function assignUsers(Request $request, $id)
    {
        $request->validate(['user_ids' => 'required|array', 'user_ids.*' => 'exists:users,id']);
        foreach ($request->user_ids as $user_id) {
            UserDiscountCode::firstOrCreate([
                'discount_code_id' => $id,
                'user_id' => $user_id,
                'status' => 'available',
            ]);
        }
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Gán mã giảm giá cho người dùng thành công.'
        ]);
    }

    public function unassignUser($id, $user)
    {
        UserDiscountCode::where('discount_code_id', $id)
            ->where('user_id', $user)
            ->delete();
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Hủy gán mã giảm giá thành công.'
        ]);
    }

    public function linkCombo(Request $request, $id)
    {
        $request->validate([
            'combo_id' => 'required|exists:combos,id',
        ]);

        // Kiểm tra xem combo đã được liên kết chưa
        $exists = DiscountCodeProduct::where('discount_code_id', $id)
            ->where('combo_id', $request->combo_id)
            ->exists();
        
        if ($exists) {
            return redirect()->back()->with('toast', [
                'type' => 'warning',
                'title' => 'Cảnh báo!',
                'message' => 'Combo này đã được liên kết với mã giảm giá.'
            ]);
        }

        DiscountCodeProduct::create([
            'discount_code_id' => $id,
            'product_id' => null,
            'category_id' => null,
            'combo_id' => $request->combo_id,
        ]);

        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Liên kết combo thành công.'
        ]);
    }

    public function unlinkCombo($id, $combo)
    {
        DiscountCodeProduct::where('discount_code_id', $id)
            ->where('combo_id', $combo)
            ->delete();
            
        return redirect()->back()->with('toast', [
            'type' => 'success',
            'title' => 'Thành công!',
            'message' => 'Hủy liên kết combo thành công.'
        ]);
    }

    public function getUsersByRank(Request $request)
    {
        // Kiểm tra xem dữ liệu có phải là JSON không
        if ($request->isJson()) {
            $data = $request->json()->all();
            $rankIds = $data['ranks'] ?? [];
            $discountCodeId = $data['discount_code_id'] ?? null;
        } else {
            $request->validate([
                'ranks' => 'required|array',
                'ranks.*' => 'integer|between:1,5',
                'discount_code_id' => 'nullable|exists:discount_codes,id'
            ]);
            $rankIds = $request->ranks;
            $discountCodeId = $request->discount_code_id;
        }

        // Ghi log để debug
        Log::info('getUsersByRank called with ranks: ' . json_encode($rankIds) . ' and discount_code_id: ' . $discountCodeId);
        
        // Get users with selected ranks
        $users = User::whereIn('user_rank_id', $rankIds)
            ->whereDoesntHave('roles', function($query) {
                $query->where('name', 'admin');
            })
            ->orderBy('full_name')
            ->get();
            
        // Get assigned users if discount code ID is provided
        $assignedUsers = [];
        if ($discountCodeId) {
            $assignedUsers = UserDiscountCode::where('discount_code_id', $discountCodeId)
                ->pluck('user_id')
                ->toArray();
        }
        
        // Prepare the response data
        $userData = [];
        foreach ($users as $user) {
            $rankName = '';
            $rankClass = 'bg-gray-100 text-gray-800';
            
            if ($user->user_rank_id == 1) {
                $rankName = 'Đồng';
                $rankClass = 'bg-amber-100 text-amber-800 dark:bg-amber-950 dark:text-amber-200';
            } elseif ($user->user_rank_id == 2) {
                $rankName = 'Bạc';
                $rankClass = 'bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-200';
            } elseif ($user->user_rank_id == 3) {
                $rankName = 'Vàng';
                $rankClass = 'bg-yellow-100 text-yellow-800 dark:bg-yellow-950 dark:text-yellow-200';
            } elseif ($user->user_rank_id == 4) {
                $rankName = 'Bạch Kim';
                $rankClass = 'bg-indigo-100 text-indigo-800 dark:bg-indigo-950 dark:text-indigo-200';
            } elseif ($user->user_rank_id == 5) {
                $rankName = 'Kim Cương';
                $rankClass = 'bg-blue-100 text-blue-800 dark:bg-blue-950 dark:text-blue-200';
            }
            
            $userData[] = [
                'id' => $user->id,
                'full_name' => $user->full_name,
                'email' => $user->email,
                'phone' => $user->phone ?? 'Không có SĐT',
                'rank_id' => $user->user_rank_id,
                'rank_name' => $rankName,
                'rank_class' => $rankClass,
                'is_assigned' => in_array($user->id, $assignedUsers)
            ];
        }
        
        return response()->json([
            'success' => true,
            'users' => $userData,
            'count' => count($userData)
        ]);
    }

    public function usageHistory($id)
    {
        $discountCode = DiscountCode::findOrFail($id);
        $usageHistory = DiscountUsageHistory::with(['discountCode', 'user', 'branch'])
            ->where('discount_code_id', $id)
            ->orderBy('used_at', 'desc')
            ->paginate(15);
        
        return view('admin.discount_codes.usage_history', compact('discountCode', 'usageHistory'));
    }

    public function getItemsByType(Request $request)
    {
        try {
            $request->validate([
                'type' => 'required|string|in:products,categories,combos,variants',
                'search' => 'nullable|string|max:255',
            ]);
            
            $type = $request->type;
            $search = $request->search ?? '';
            $limit = $request->limit ?? 50;
            
            Log::info("getItemsByType called with type: {$type}, search: {$search}, limit: {$limit}");
            
            switch ($type) {
                case 'products':
                    $items = Product::where(function($query) use ($search) {
                            $query->where('name', 'like', "%{$search}%")
                                ->orWhere('description', 'like', "%{$search}%");
                        })
                        ->with(['variants' => function($query) {
                            $query->select('id', 'product_id');
                        }])
                        ->orderBy('name')
                        ->limit($limit)
                        ->get(['id', 'name', 'base_price', 'short_description']);
                    
                    // Transform the data to include variant information
                    $items = $items->map(function($product) {
                        return [
                            'id' => $product->id,
                            'name' => $product->name,
                            'price' => $product->base_price,
                            'short_description' => $product->short_description,
                            'variant_count' => $product->variants->count(),
                        ];
                    });
                    Log::info("Products fetched: " . $items->count());
                    break;
                    
                case 'categories':
                    $items = Category::where('name', 'like', "%{$search}%")
                        ->orderBy('name')
                        ->limit($limit)
                        ->get(['id', 'name', 'image']);
                    Log::info("Categories fetched: " . $items->count());
                    break;
                    
                case 'combos':
                    $items = Combo::where('name', 'like', "%{$search}%")
                        ->orWhere('description', 'like', "%{$search}%")
                        ->orderBy('name')
                        ->limit($limit)
                        ->get(['id', 'name', 'image', 'price']);
                    Log::info("Combos fetched: " . $items->count());
                    break;
                    
                case 'variants':
                    $query = ProductVariant::with(['product', 'variantValues'])
                        ->whereHas('product', function($q) use ($search) {
                            if (!empty($search)) {
                                $q->where('name', 'like', "%{$search}%");
                            }
                        })
                        ->orderBy('id')
                        ->limit($limit);
                    
                    $variants = $query->get();
                    
                    // Transform the data to include product and variant information
                    $items = $variants->map(function($variant) {
                        $variantDescription = $variant->variantValues->pluck('value')->implode(', ');
                        
                        return [
                            'id' => $variant->id,
                            'product_id' => $variant->product_id,
                            'product_name' => $variant->product->name,
                            'variant_description' => $variantDescription,
                            'price' => $variant->price,
                            'sku' => $variant->sku
                        ];
                    });
                    
                    Log::info("Variants fetched: " . $items->count());
                    break;
                    
                default:
                    Log::error("Invalid type: {$type}");
                    return response()->json(['success' => false, 'message' => 'Loại không hợp lệ'], 400);
            }
            
            return response()->json([
                'success' => true,
                'items' => $items,
                'count' => $items->count(),
                'type' => $type
            ]);
        } catch (\Exception $e) {
            Log::error("Error in getItemsByType: " . $e->getMessage());
            Log::error($e->getTraceAsString());
            return response()->json([
                'success' => false, 
                'message' => 'Lỗi: ' . $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ], 500);
        }
    }
}