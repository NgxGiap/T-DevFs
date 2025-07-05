<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\ProductVariant;          // Added
use App\Models\Favorite;                 // Added
use Illuminate\Support\Facades\DB;
use App\Services\BranchService;
use Illuminate\Support\Facades\Auth;
use App\Models\Combo; // Thêm dòng này ở đầu file

class HomeController extends Controller
{
    protected $branchService;

    public function __construct(BranchService $branchService)
    {
        $this->branchService = $branchService;
    }

    public function index(Request $request) // Added $request parameter
    {
        // Get selected branch ID from BranchService
        $currentBranch = $this->branchService->getCurrentBranch();
        $selectedBranchId = $currentBranch ? $currentBranch->id : null;

        // Query for general products (existing logic)
        $productsQuery = Product::with(['category', 'images' => function($query) {
            $query->orderBy('is_primary', 'desc');
        }])
        ->where('status', 'selling');

        // Filter general products by selected branch (only show products available in this branch)
        if ($selectedBranchId) {
            $productsQuery->whereHas('variants', function($q) use ($selectedBranchId) {
                $q->whereHas('branchStocks', function($q2) use ($selectedBranchId) {
                    $q2->where('branch_id', $selectedBranchId)
                       ->where('stock_quantity', '>', 0);
                });
            });
        }
        $products = $productsQuery->get(); // Assuming you might still need this $products list elsewhere or will adapt it.

        // --- Start: Logic for Featured Products ---

        // Get user's favorites
        $favorites = [];
        if (auth()->check()) {
            $favorites = Favorite::where('user_id', auth()->id())
                ->pluck('product_id')
                ->toArray();
        } elseif ($request->session()->has('wishlist_items')) {
            $favorites = $request->session()->get('wishlist_items', []);
        }

        // Query for featured products
        $featuredQuery = Product::with([
            'category',
            'images' => function($query) {
                $query->orderBy('is_primary', 'desc');
            },
            'reviews' => function($query) {
                $query->where('approved', true);
            },
            'variants.branchStocks' => function($query) use ($selectedBranchId) {
                if ($selectedBranchId) {
                    $query->where('branch_id', $selectedBranchId);
                }
            }
        ])
        ->where('is_featured', true)
        ->where('status', 'selling'); // Ensure featured products are also sellable

        // Filter featured products by selected branch (only show products available in this branch)
        if ($selectedBranchId) {
            $featuredQuery->whereHas('variants.branchStocks', function($q) use ($selectedBranchId) {
                $q->where('branch_id', $selectedBranchId)
                  ->where('stock_quantity', '>', 0);
            });
        }
        // If no branch is selected, featured products are shown if they are 'is_featured' and 'selling',
        // their stock status will be determined during transformation.

        $featuredProducts = $featuredQuery->take(8)->get();

        // Transform featured products to add necessary details
        $featuredProducts->transform(function ($product) use ($favorites, $selectedBranchId) {
            $product->average_rating = $product->reviews->avg('rating') ?? 0;
            $product->reviews_count = $product->reviews->count();

            $product->primary_image = $product->images->where('is_primary', true)->first()
                                    ?? $product->images->first();

            if ($product->primary_image && $product->primary_image->img) {
                $product->primary_image->s3_url = Storage::disk('s3')->url($product->primary_image->img);
            } else {
                // To prevent errors in the view if no image and no s3_url property
                if ($product->primary_image) {
                    $product->primary_image->s3_url = null;
                }
            }

            $product->is_favorite = in_array($product->id, $favorites);

            // Check stock status
            if ($selectedBranchId) {
                $product->has_stock = $product->variants->contains(function($variant) use ($selectedBranchId) {
                    // branchStocks for this variant are already filtered to the selected branch by eager loading
                    return $variant->branchStocks->contains(function($stock){
                        return $stock->stock_quantity > 0;
                    });
                });

                $product->first_variant = ProductVariant::where('product_id', $product->id)
                                        ->whereHas('branchStocks', function($query) use ($selectedBranchId) {
                                            $query->where('branch_id', $selectedBranchId);
                                        })
                                        ->orderBy('id', 'asc')
                                        ->first();
            } else {
                $product->has_stock = $product->variants->contains(function($variant) {
                    return $variant->branchStocks->contains(function($stock) {
                        return $stock->stock_quantity > 0;
                    });
                });

                $product->first_variant = ProductVariant::where('product_id', $product->id)
                                        ->whereHas('branchStocks') // Check if there's any stock entry
                                        ->orderBy('id', 'asc')
                                        ->first();
            }

            return $product;
        });

        // --- End: Logic for Featured Products ---

        // --- Lấy danh sách sản phẩm được yêu thích ---
        $topRatedProducts = Product::select('products.*', DB::raw('AVG(product_reviews.rating) as average_rating'), DB::raw('COUNT(product_reviews.id) as reviews_count'))
            ->leftJoin('product_reviews', 'product_reviews.product_id', '=', 'products.id')
            ->where('products.status', 'selling')
            ->groupBy('products.id')
            ->orderBy('average_rating', 'desc')
            ->orderBy('reviews_count', 'desc')
            ->take(8);

        // Nếu có chi nhánh được chọn, chỉ lấy sản phẩm có hàng tại chi nhánh đó
        if ($selectedBranchId) {
            $topRatedProducts->whereHas('variants.branchStocks', function ($q) use ($selectedBranchId) {
                $q->where('branch_id', $selectedBranchId)
                ->where('stock_quantity', '>', 0);
            });
        }

        $topRatedProducts = $topRatedProducts->get();

        // Xử lý dữ liệu sản phẩm yêu thích
        $topRatedProducts->transform(function ($product) {
            $primaryImage = $product->images->where('is_primary', true)->first() ?? $product->images->first();

            if ($primaryImage && $primaryImage->img) {
                $product->setAttribute('primary_image_url', Storage::disk('s3')->url($primaryImage->img));
            } else {
                $product->setAttribute('primary_image_url', asset('images/default-placeholder.png'));
            }

            $product->setAttribute('primary_image', $primaryImage);

            return $product;
        });


        $categories = Category::withCount('products')->where('status', 1)->get();
        $banners = Banner::where('is_active', 1)->get();

        // Pass all necessary data to the view
        return view('customer.home', compact('products', 'featuredProducts', 'topRatedProducts', 'categories', 'banners'));
    }

    public function search(Request $request)
    {
        // Get selected branch ID from BranchService
        $currentBranch = $this->branchService->getCurrentBranch();
        $selectedBranchId = $currentBranch ? $currentBranch->id : null;

        // Get search parameters
        $search = $request->input('search');
        $category = $request->input('category');
        $maxPrice = $request->input('max_price', 200000);
        $minRating = $request->input('min_rating', 0);
        $sortBy = $request->input('sort', 'rating');

        // Build products query
        $products = Product::with(['category', 'images' => function($query) {
            $query->orderBy('is_primary', 'desc');
        }, 'reviews'])
        ->where('status', 'selling');

        // Apply search filter
        if ($search) {
            $products->where(function($q) use ($search) {
                $q->where('name', 'like', "%$search%")
                  ->orWhere('sku', 'like', "%$search%")
                  ->orWhere('short_description', 'like', "%$search%")
                  ->orWhere('description', 'like', "%$search%")
                  ->orWhereRaw("JSON_EXTRACT(products.ingredients, '$[*]') like ?", ["%$search%"]);
            });
        }

        // Apply category filter
        if ($category && $category !== 'Tất cả') {
            $products->where('category_id', $category);
        }

        // Apply price filter
        if ($maxPrice && $maxPrice < 200000) {
            $products->where(function($q) use ($maxPrice) {
                $q->where('base_price', '<=', $maxPrice)
                  ->orWhere('discount_price', '<=', $maxPrice);
            });
        }

        // Apply rating filter
        if ($minRating > 0) {
            $products->whereHas('reviews', function($q) use ($minRating) {
                $q->where('approved', true);
            });
        }

        // Apply sorting
        switch ($sortBy) {
            case 'price-low':
                $products->orderBy('base_price', 'asc');
                break;
            case 'price-high':
                $products->orderBy('base_price', 'desc');
                break;
            case 'reviews':
                $products->withCount('reviews')->orderBy('reviews_count', 'desc');
                break;
            default: // rating
                $products->withAvg('reviews', 'rating')->orderBy('reviews_avg_rating', 'desc');
                break;
        }

        // Filter by branch nếu có
        if ($selectedBranchId) {
            $products->whereHas('variants.branchStocks', function($q) use ($selectedBranchId) {
                $q->where('branch_id', $selectedBranchId)
                  ->where('stock_quantity', '>', 0);
            });
        }

        $products = $products->paginate(16);

        // Transform products to add necessary details
        $products->getCollection()->transform(function ($product) use ($selectedBranchId) {
            // Check stock status
            if ($selectedBranchId) {
                $product->has_stock = $product->variants->contains(function($variant) use ($selectedBranchId) {
                    return $variant->branchStocks->contains(function($stock){
                        return $stock->stock_quantity > 0;
                    });
                });
                $product->first_variant = ProductVariant::where('product_id', $product->id)
                    ->whereHas('branchStocks', function($query) use ($selectedBranchId) {
                        $query->where('branch_id', $selectedBranchId);
                    })
                    ->orderBy('id', 'asc')
                    ->first();
            } else {
                $product->has_stock = $product->variants->contains(function($variant) {
                    return $variant->branchStocks->contains(function($stock) {
                        return $stock->stock_quantity > 0;
                    });
                });
                $product->first_variant = ProductVariant::where('product_id', $product->id)
                    ->whereHas('branchStocks')
                    ->orderBy('id', 'asc')
                    ->first();
            }

            // Xử lý ảnh chính
            $product->primary_image = $product->images->where('is_primary', true)->first() ?? $product->images->first();
            if ($product->primary_image && $product->primary_image->img) {
                $product->primary_image->s3_url = Storage::disk('s3')->url($product->primary_image->img);
            } else {
                if ($product->primary_image) {
                    $product->primary_image->s3_url = null;
                }
            }

            // Đánh giá
            $product->average_rating = $product->reviews->avg('rating') ?? 0;
            $product->reviews_count = $product->reviews->count();

            return $product;
        });

        // Search combos if search term exists
        $combos = null;
        if ($search) {
            $combos = Combo::with(['category', 'comboBranchStocks'])
                ->where('status', 'selling')
                ->where(function($q) use ($search) {
                    $q->where('name', 'like', "%$search%")
                      ->orWhere('sku', 'like', "%$search%")
                      ->orWhere('description', 'like', "%$search%");
                });

            // Filter by branch nếu có
            if ($selectedBranchId) {
                $combos->whereHas('comboBranchStocks', function($q) use ($selectedBranchId) {
                    $q->where('branch_id', $selectedBranchId)
                      ->where('quantity', '>', 0);
                });
            }

            $combos = $combos->paginate(12);

            // Transform combos
            $combos->getCollection()->transform(function ($combo) use ($selectedBranchId) {
                // Kiểm tra còn hàng ở branch
                if ($selectedBranchId) {
                    $combo->has_stock = $combo->comboBranchStocks->where('branch_id', $selectedBranchId)->sum('quantity') > 0;
                } else {
                    $combo->has_stock = $combo->comboBranchStocks->sum('quantity') > 0;
                }
                // Ảnh
                $combo->image_url = $combo->image ? Storage::disk('s3')->url($combo->image) : asset('images/default-combo.png');
                // Tính phần trăm giảm giá nếu có
                if ($combo->original_price && $combo->original_price > $combo->price) {
                    $combo->discount_percent = round((($combo->original_price - $combo->price) / $combo->original_price) * 100);
                } else {
                    $combo->discount_percent = 0;
                }
                return $combo;
            });
        }

        $categories = Category::withCount('products')->where('status', 1)->get();
        $banners = Banner::where('is_active', 1)->get();

        return view('customer.shop.search', compact('products', 'categories', 'banners', 'search', 'combos'));
    }

    public function searchAjax(Request $request)
    {
        // Get selected branch ID from BranchService
        $currentBranch = $this->branchService->getCurrentBranch();
        $selectedBranchId = $currentBranch ? $currentBranch->id : null;

        // Get search parameters
        $search = $request->input('search');
        $category = $request->input('category');
        $maxPrice = $request->input('max_price', 200000);
        $minRating = $request->input('min_rating', 0);
        $sortBy = $request->input('sort', 'rating');

        // Build products query
        $products = Product::with(['category', 'images' => function($query) {
            $query->orderBy('is_primary', 'desc');
        }, 'reviews'])
        ->where('status', 'selling');

        // Apply search filter
        if ($search) {
            $products->where(function($q) use ($search) {
                $q->where('name', 'like', "%$search%")
                  ->orWhere('sku', 'like', "%$search%")
                  ->orWhere('short_description', 'like', "%$search%")
                  ->orWhere('description', 'like', "%$search%")
                  ->orWhereRaw("JSON_EXTRACT(products.ingredients, '$[*]') like ?", ["%$search%"]);
            });
        }

        // Apply category filter
        if ($category && $category !== 'Tất cả') {
            $products->where('category_id', $category);
        }

        // Apply price filter
        if ($maxPrice && $maxPrice < 200000) {
            $products->where(function($q) use ($maxPrice) {
                $q->where('base_price', '<=', $maxPrice)
                  ->orWhere('discount_price', '<=', $maxPrice);
            });
        }

        // Apply rating filter
        if ($minRating > 0) {
            $products->whereHas('reviews', function($q) use ($minRating) {
                $q->where('approved', true);
            });
        }

        // Apply sorting
        switch ($sortBy) {
            case 'price-low':
                $products->orderBy('base_price', 'asc');
                break;
            case 'price-high':
                $products->orderBy('base_price', 'desc');
                break;
            case 'reviews':
                $products->withCount('reviews')->orderBy('reviews_count', 'desc');
                break;
            default: // rating
                $products->withAvg('reviews', 'rating')->orderBy('reviews_avg_rating', 'desc');
                break;
        }

        // Filter by branch nếu có
        if ($selectedBranchId) {
            $products->whereHas('variants.branchStocks', function($q) use ($selectedBranchId) {
                $q->where('branch_id', $selectedBranchId)
                  ->where('stock_quantity', '>', 0);
            });
        }

        $products = $products->paginate(16);

        // Transform products to add necessary details
        $products->getCollection()->transform(function ($product) use ($selectedBranchId) {
            // Check stock status
            if ($selectedBranchId) {
                $product->has_stock = $product->variants->contains(function($variant) use ($selectedBranchId) {
                    return $variant->branchStocks->contains(function($stock){
                        return $stock->stock_quantity > 0;
                    });
                });
                $product->first_variant = ProductVariant::where('product_id', $product->id)
                    ->whereHas('branchStocks', function($query) use ($selectedBranchId) {
                        $query->where('branch_id', $selectedBranchId);
                    })
                    ->orderBy('id', 'asc')
                    ->first();
            } else {
                $product->has_stock = $product->variants->contains(function($variant) {
                    return $variant->branchStocks->contains(function($stock) {
                        return $stock->stock_quantity > 0;
                    });
                });
                $product->first_variant = ProductVariant::where('product_id', $product->id)
                    ->whereHas('branchStocks')
                    ->orderBy('id', 'asc')
                    ->first();
            }

            // Xử lý ảnh chính
            $product->primary_image = $product->images->where('is_primary', true)->first() ?? $product->images->first();
            if ($product->primary_image && $product->primary_image->img) {
                $product->primary_image->s3_url = Storage::disk('s3')->url($product->primary_image->img);
            } else {
                if ($product->primary_image) {
                    $product->primary_image->s3_url = null;
                }
            }

            // Đánh giá
            $product->average_rating = $product->reviews->avg('rating') ?? 0;
            $product->reviews_count = $product->reviews->count();

            return $product;
        });

        // Return JSON response
        return response()->json([
            'success' => true,
            'products' => $products->items(),
            'total' => $products->total(),
            'current_page' => $products->currentPage(),
            'last_page' => $products->lastPage(),
            'per_page' => $products->perPage(),
            'html' => view('customer.shop.search', compact('products'))->render()
        ]);
    }
}
