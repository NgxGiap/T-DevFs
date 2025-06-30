<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use App\Models\ProductVariant;
use App\Models\Cart;
use App\Models\CartItem;
use App\Services\BranchService;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use App\Models\DiscountCode;
use Carbon\Carbon;

class CartController extends Controller
{
    protected $branchService;

    public function __construct(BranchService $branchService)
    {
        $this->branchService = $branchService;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Debug session id và user id
        \Log::info('CartController@index - Session ID: ' . session()->getId());
        \Log::info('CartController@index - User ID: ' . (Auth::id() ?? 'null'));
        
        // Determine if user is authenticated or using session
        $userId = Auth::id();
        $sessionId = session()->getId();
        
        // Query the cart based on user_id or session_id
        $cartQuery = Cart::query()->where('status', 'active');
        
        if ($userId) {
            $cartQuery->where('user_id', $userId);
        } else {
            $cartQuery->where('session_id', $sessionId);
        }
        
        $cart = $cartQuery->first();
        \Log::info('CartController@index - Cart found: ' . ($cart ? 'YES' : 'NO'));
        if ($cart) {
            \Log::info('CartController@index - Cart ID: ' . $cart->id . ' | session_id: ' . $cart->session_id . ' | user_id: ' . $cart->user_id);
        }
        
        // Initialize cartItems as an empty collection rather than an array
        $cartItems = collect();
        $subtotal = 0;
        
        if ($cart) {
            $cartItems = CartItem::with([
                'variant.product' => function($query) {
                    $query->with('images', 'variants.variantValues');
                },
                'variant.variantValues.attribute',
                'toppings'
            ])->where('cart_id', $cart->id)->get();
            
            // Calculate subtotal
            foreach ($cartItems as $item) {
                $subtotal += $item->variant->price * $item->quantity;
                
                // Add topping prices to subtotal
                foreach ($item->toppings as $topping) {
                    $subtotal += $topping->price * $item->quantity;
                }
                
                // Set primary image for display
                $item->variant->product->primary_image = $item->variant->product->images
                    ->where('is_primary', true)
                    ->first() ?? $item->variant->product->images->first();
            }
        }
        
        // Store cart count in session
        $cartCount = $cartItems->count();
        session(['cart_count' => $cartCount]);

        // === SUGGESTED PRODUCTS LOGIC ===
        $suggestedProducts = collect();
        $cartProductIds = $cartItems->pluck('variant.product.id')->unique()->toArray();
        $cartCategoryIds = $cartItems->pluck('variant.product.category_id')->unique()->toArray();
        $cartProducts = $cartItems->map(function($item) {
            return [
                'product_id' => $item->variant->product->id,
                'category_id' => $item->variant->product->category_id
            ];
        });

        $cartCount = $cartProducts->count();
        $suggestionPlan = [];
        if ($cartCount == 1) {
            $suggestionPlan = [4];
        } elseif ($cartCount == 2) {
            $suggestionPlan = [2,2];
        } elseif ($cartCount == 3) {
            $suggestionPlan = [1,1,2];
        } elseif ($cartCount >= 4) {
            $suggestionPlan = array_fill(0, min(4, $cartCount), 1);
        }
        $usedProductIds = $cartProductIds;
        $suggested = collect();
        foreach ($suggestionPlan as $i => $num) {
            if (!isset($cartProducts[$i])) break;
            $catId = $cartProducts[$i]['category_id'];
            $query = Product::with(['primaryImage', 'images'])
                ->where('category_id', $catId)
                ->where('status', 'selling')
                ->whereNotIn('id', $usedProductIds)
                ->whereHas('variants.branchStocks', function($q) {
                    $q->where('stock_quantity', '>', 0);
                })
                ->orderByDesc('favorite_count')
                ->limit($num)
                ->get();
            foreach ($query as $p) {
                if (count($suggested) < 4 && !$usedProductIds || !in_array($p->id, $usedProductIds)) {
                    $suggested->push($p);
                    $usedProductIds[] = $p->id;
                }
            }
        }
        // Nếu chưa đủ 4 sản phẩm, lấy thêm sản phẩm yêu thích nhất ngoài giỏ hàng, không trùng
        if ($suggested->count() < 4) {
            $fill = Product::with(['primaryImage', 'images'])
                ->where('status', 'selling')
                ->whereNotIn('id', $usedProductIds)
                ->whereHas('variants.branchStocks', function($q) {
                    $q->where('stock_quantity', '>', 0);
                })
                ->orderByDesc('favorite_count')
                ->limit(4 - $suggested->count())
                ->get();
            foreach ($fill as $p) {
                if ($suggested->count() < 4 && !in_array($p->id, $usedProductIds)) {
                    $suggested->push($p);
                    $usedProductIds[] = $p->id;
                }
            }
        }
        $suggestedProducts = $suggested;

        // === DISCOUNT CODE LOGIC ===
        $now = Carbon::now();
        $selectedBranchId = $cart ? $cart->branch_id : null;
        $currentTime = $now->format('H:i:s');
        $activeDiscountCodesQuery = DiscountCode::where('is_active', true)
            ->where('start_date', '<=', $now)
            ->where('end_date', '>=', $now)
            ->where(function($query) use ($selectedBranchId) {
                if ($selectedBranchId) {
                    $query->whereDoesntHave('branches')
                        ->orWhereHas('branches', function($q) use ($selectedBranchId) {
                            $q->where('branches.id', $selectedBranchId);
                        });
                }
            });
        $activeDiscountCodesQuery->where(function($query) {
            $query->where('usage_type', 'public');
            if (Auth::check()) {
                $query->orWhere(function($q) {
                    $q->where('usage_type', 'personal')
                        ->whereHas('users', function($userQuery) {
                            $userQuery->where('user_id', Auth::id());
                        });
                });
            }
        });
        $activeDiscountCodes = $activeDiscountCodesQuery->with(['products' => function($query) {
            $query->with(['product', 'category']);
        }])->get()->filter(function($discountCode) use ($currentTime) {
            if ($discountCode->valid_from_time && $discountCode->valid_to_time) {
                $from = Carbon::parse($discountCode->valid_from_time)->format('H:i:s');
                $to = Carbon::parse($discountCode->valid_to_time)->format('H:i:s');
                if ($from < $to) {
                    if (!($currentTime >= $from && $currentTime <= $to)) return false;
                } else {
                    if (!($currentTime >= $from || $currentTime <= $to)) return false;
                }
            }
            return true;
        });
        // Tính min_price cho mỗi product trong cart (giống show/index)
        foreach ($cartItems as $item) {
            $product = $item->variant->product;
            $product->min_price = $product->base_price;
            if ($product->variants && $product->variants->count() > 0) {
                $variantPrices = [];
                foreach ($product->variants as $variant) {
                    $variantPrice = $product->base_price;
                    if ($variant->variantValues && $variant->variantValues->count() > 0) {
                        $variantPrice += $variant->variantValues->sum('price_adjustment');
                    }
                    $variantPrices[] = $variantPrice;
                }
                if (!empty($variantPrices)) {
                    $product->min_price = min($variantPrices);
                }
            }
            // DEBUG: Log variant prices to find discrepancy
            \Illuminate\Support\Facades\Log::debug('CartController@index - Variant Prices for Product ID ' . $product->id, [
                'variant_prices' => $variantPrices ?? [],
                'calculated_min_price' => $product->min_price,
                'base_price' => $product->base_price
            ]);
        }
        // Tính discount cho từng item
        foreach ($cartItems as $item) {
            $product = $item->variant->product;
            $originPrice = $item->variant->price;
            $item->origin_price = $originPrice;
            $applicableDiscounts = $activeDiscountCodes->filter(function($discountCode) use ($item) {
                if (($discountCode->applicable_scope === 'all') || ($discountCode->applicable_items === 'all_items')) {
                    if ($discountCode->min_requirement_type && $discountCode->min_requirement_value > 0) {
                        if ($discountCode->min_requirement_type === 'order_amount') {
                            return true;
                        } elseif ($discountCode->min_requirement_type === 'product_price') {
                            if ($item->variant->product->min_price < $discountCode->min_requirement_value) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
                $applies = $discountCode->products->contains(function($discountProduct) use ($item) {
                    if ($discountProduct->product_id === $item->variant->product->id) return true;
                    if ($discountProduct->category_id === $item->variant->product->category_id) return true;
                    return false;
                });
                if ($applies && $discountCode->min_requirement_type === 'product_price' && $discountCode->min_requirement_value > 0) {
                    if ($item->variant->product->min_price < $discountCode->min_requirement_value) {
                        return false;
                    }
                }
                return $applies;
            });
            $maxDiscount = null;
            $maxValue = 0;
            foreach ($applicableDiscounts as $discountCode) {
                $value = 0;
                if ($discountCode->discount_type === 'fixed_amount') {
                    $value = $discountCode->discount_value;
                } elseif ($discountCode->discount_type === 'percentage') {
                    $value = $originPrice * $discountCode->discount_value / 100;
                }
                if ($value > $maxValue) {
                    $maxValue = $value;
                    $maxDiscount = $discountCode;
                }
            }
            $item->best_discount = $maxDiscount;
            $item->best_discount_value = $maxValue;
            $item->final_price = max(0, $originPrice - $maxValue) + $item->toppings->sum('price');
        }

        return view("customer.cart.index", compact('cartItems', 'subtotal', 'cart', 'suggestedProducts'));
    }
    
    /**
     * Add a product to cart
     */
    public function addToCart(Request $request)
    {
        try {
            // Log request data
            \Log::debug('Add to cart request:', $request->all());
            
            // Log variant values details
            $variantValues = $request->variant_values;
            foreach ($variantValues as $valueId) {
                $variantValue = \App\Models\VariantValue::with('attribute')->find($valueId);
                \Log::debug('Variant Value Details:', [
                    'id' => $valueId,
                    'name' => $variantValue->value,
                    'variant_type' => $variantValue->attribute->name
                ]);
            }

            // Validate request
            $request->validate([
                'product_id' => 'required|exists:products,id',
                'variant_values' => 'required|array',
                'branch_id' => 'required|exists:branches,id',
                'quantity' => 'required|integer|min:1',
                'toppings' => 'nullable|array',
                'toppings.*' => 'exists:toppings,id'
            ]);

            // Get or create cart
            $userId = Auth::id();
            $sessionId = session()->getId();
            
            $cart = Cart::where('status', 'active')
                ->when($userId, function($query) use ($userId) {
                    return $query->where('user_id', $userId);
                }, function($query) use ($sessionId) {
                    return $query->where('session_id', $sessionId);
                })
                ->first();

            if (!$cart) {
                $cart = Cart::create([
                    'user_id' => $userId,
                    'session_id' => $sessionId,
                    'status' => 'active'
                ]);
            }

            // Find product variant based on selected values
            $variantValueIds = $request->variant_values;
            $variantValueIds = array_map('intval', $variantValueIds);
            $variant = ProductVariant::where('product_id', $request->product_id)
                ->whereHas('variantValues', function($query) use ($variantValueIds) {
                    $query->whereIn('variant_value_id', $variantValueIds);
                }, '=', count($variantValueIds))
                ->whereHas('variantValues', function($query) use ($variantValueIds) {
                    $query->whereNotIn('variant_value_id', $variantValueIds);
                }, '=', 0)
                ->first();

            if (!$variant) {
                Log::error('Variant not found:', [
                    'product_id' => $request->product_id,
                    'variant_values' => $request->variant_values
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Không tìm thấy biến thể sản phẩm'
                ], 404);
            }

            // Check stock
            $stock = $variant->branchStocks()
                ->where('branch_id', $request->branch_id)
                ->first();

            if (!$stock || $stock->stock_quantity < $request->quantity) {
                Log::error('Insufficient stock:', [
                    'variant_id' => $variant->id,
                    'branch_id' => $request->branch_id,
                    'requested_quantity' => $request->quantity,
                    'available_stock' => $stock ? $stock->stock_quantity : 0
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Số lượng sản phẩm không đủ'
                ], 400);
            }

            // Begin transaction
            DB::beginTransaction();
            try {
                // Get the array of topping IDs from the request, sort them for consistent comparison
                $requestToppingIds = $request->input('toppings', []);
                sort($requestToppingIds);

                // Find all existing cart items for the same product variant
                $existingCartItems = CartItem::where('cart_id', $cart->id)
                    ->where('product_variant_id', $variant->id)
                    ->with('toppings')
                    ->get();

                $matchingCartItem = null;

                // Loop through existing items to find an exact match (including toppings)
                foreach ($existingCartItems as $item) {
                    $itemToppingIds = $item->toppings->pluck('id')->sort()->values()->all();
                    
                    if ($itemToppingIds == $requestToppingIds) {
                        $matchingCartItem = $item;
                        break;
                    }
                }

                if ($matchingCartItem) {
                    // If a match is found, update the quantity
                    $matchingCartItem->quantity += $request->quantity;
                    $matchingCartItem->save();
                    $cartItem = $matchingCartItem;
                } else {
                    // If no match is found, create a new cart item
                    $cartItem = CartItem::create([
                        'cart_id' => $cart->id,
                        'product_variant_id' => $variant->id,
                        'quantity' => $request->quantity,
                        'notes' => $request->notes,
                    ]);

                    // Attach toppings if they exist in the request
                    if (!empty($requestToppingIds)) {
                        $toppings = collect($requestToppingIds)->mapWithKeys(function ($toppingId) {
                            return [$toppingId => ['quantity' => 1]];
                        })->all();
                        
                        $cartItem->toppings()->attach($toppings);
                    }
                }

                DB::commit();

                // Log success
                Log::info('Product added/updated in cart successfully:', [
                    'cart_id' => $cart->id,
                    'cart_item_id' => $cartItem->id,
                    'product_id' => $request->product_id,
                    'variant_id' => $variant->id,
                    'quantity' => $request->quantity,
                    'toppings' => $request->toppings
                ]);

                // Get updated cart count
                $cartCount = $cart->items()->count();

                return response()->json([
                    'success' => true,
                    'message' => 'Sản phẩm đã được thêm vào giỏ hàng',
                    'cart_count' => $cartCount
                ]);

            } catch (\Exception $e) {
                DB::rollBack();
                Log::error('Error adding to cart:', [
                    'error' => $e->getMessage(),
                    'trace' => $e->getTraceAsString()
                ]);
                throw $e;
            }

        } catch (\Exception $e) {
            Log::error('Add to cart failed:', [
                'error' => $e->getMessage(),
                'trace' => $e->getTraceAsString()
            ]);
            
            return response()->json([
                'success' => false,
                'message' => 'Có lỗi xảy ra khi thêm sản phẩm vào giỏ hàng'
            ], 500);
        }
    }

    /**
     * Update cart item quantity
     */
    public function update(Request $request)
    {
        try {
            $request->validate([
                'cart_item_id' => 'required|exists:cart_items,id',
                'quantity' => 'required|integer|min:1'
            ]);

            $userId = Auth::id();
            $sessionId = session()->getId();

            // Find cart item and ensure it belongs to current user/session
            $cartItem = CartItem::whereHas('cart', function($query) use ($userId, $sessionId) {
                $query->where('status', 'active')
                    ->when($userId, function($q) use ($userId) {
                        return $q->where('user_id', $userId);
                    }, function($q) use ($sessionId) {
                        return $q->where('session_id', $sessionId);
                    });
            })->findOrFail($request->cart_item_id);

            // Check stock availability
            $stock = $cartItem->variant->branchStocks()
                ->where('branch_id', $cartItem->cart->branch_id ?? 1) // Default branch if not set
                ->first();

            if (!$stock || $stock->stock_quantity < $request->quantity) {
                return response()->json([
                    'success' => false,
                    'message' => 'Số lượng sản phẩm không đủ'
                ], 400);
            }

            // Update quantity
            $cartItem->update(['quantity' => $request->quantity]);

            // Get updated cart count
            $cartCount = $cartItem->cart->items()->count();
            session(['cart_count' => $cartCount]);

            return response()->json([
                'success' => true,
                'message' => 'Cập nhật số lượng thành công',
                'cart_count' => $cartCount
            ]);

        } catch (\Exception $e) {
            Log::error('Update cart item failed:', [
                'error' => $e->getMessage(),
                'cart_item_id' => $request->cart_item_id ?? null
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Có lỗi xảy ra khi cập nhật giỏ hàng'
            ], 500);
        }
    }

    /**
     * Remove item from cart
     */
    public function remove(Request $request)
    {
        try {
            $request->validate([
                'cart_item_id' => 'required|exists:cart_items,id'
            ]);

            $userId = Auth::id();
            $sessionId = session()->getId();

            // Find cart item and ensure it belongs to current user/session
            $cartItem = CartItem::whereHas('cart', function($query) use ($userId, $sessionId) {
                $query->where('status', 'active')
                    ->when($userId, function($q) use ($userId) {
                        return $q->where('user_id', $userId);
                    }, function($q) use ($sessionId) {
                        return $q->where('session_id', $sessionId);
                    });
            })->findOrFail($request->cart_item_id);

            // Store cart reference before deletion
            $cart = $cartItem->cart;

            // Remove toppings first
            $cartItem->toppings()->detach();

            // Delete cart item
            $cartItem->delete();

            // Get updated cart count
            $cartCount = $cart->items()->count();
            session(['cart_count' => $cartCount]);

            return response()->json([
                'success' => true,
                'message' => 'Sản phẩm đã được xóa khỏi giỏ hàng',
                'cart_count' => $cartCount
            ]);

        } catch (\Exception $e) {
            Log::error('Remove cart item failed:', [
                'error' => $e->getMessage(),
                'cart_item_id' => $request->cart_item_id ?? null
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Có lỗi xảy ra khi xóa sản phẩm'
            ], 500);
        }
    }
}
