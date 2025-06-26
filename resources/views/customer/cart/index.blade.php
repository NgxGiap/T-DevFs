@extends('layouts.customer.fullLayoutMaster')

@section('title', 'FastFood - Giỏ Hàng')

@section('content')
<style>
    .container {
      max-width: 1280px;
      margin: 0 auto;
   }
   
   /* Price update animation */
   @keyframes priceUpdate {
       0% { 
           transform: scale(1); 
           background-color: rgba(249, 115, 22, 0.1);
           color: #f97316;
       }
       50% { 
           transform: scale(1.05); 
           background-color: rgba(249, 115, 22, 0.2);
           color: #ea580c;
       }
       100% { 
           transform: scale(1); 
           background-color: transparent;
           color: inherit;
       }
   }
   
   .price-updated {
       animation: priceUpdate 2s ease-in-out;
       font-weight: bold;
   }
   
   /* Notification animations */
   @keyframes fadeIn {
       from { opacity: 0; transform: translateY(-10px); }
       to { opacity: 1; transform: translateY(0); }
   }
   
   @keyframes fadeOut {
       from { opacity: 1; transform: translateY(0); }
       to { opacity: 0; transform: translateY(-10px); }
   }
   
   .animate-fade-in {
       animation: fadeIn 0.3s ease-out;
   }
   
   .animate-fade-out {
       animation: fadeOut 0.3s ease-out;
   }
</style>
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-bold mb-2">Giỏ Hàng</h1>
    <p class="text-gray-500 mb-8">Kiểm tra và chỉnh sửa các sản phẩm trong giỏ hàng của bạn</p>

    <div class="grid lg:grid-cols-3 gap-8">
        <div class="lg:col-span-2">
            <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                <div class="hidden md:grid grid-cols-12 gap-4 p-4 bg-gray-50 font-medium">
                    <div class="col-span-6">Sản phẩm</div>
                    <div class="col-span-2 text-center">Giá</div>
                    <div class="col-span-2 text-center">Số lượng</div>
                    <div class="col-span-2 text-right">Tổng</div>
                </div>

                <hr class="border-t border-gray-200">

                @if(count($cartItems) > 0)
                    @foreach($cartItems as $item)
                    <div class="p-4 md:p-6 cart-item" 
                         data-id="{{ $item->id }}"
                         data-product-id="{{ $item->variant->product->id }}"
                         data-base-price="{{ $item->variant->product->base_price }}"
                         data-variant-value-ids="{{ json_encode($item->variant->variantValues->pluck('id')->toArray()) }}"
                         data-variant-adjustment="{{ $item->variant->variantValues->sum('price_adjustment') }}"
                         data-topping-ids="{{ json_encode($item->toppings->pluck('id')->toArray()) }}"
                         data-topping-price="{{ $item->toppings->sum('price') }}"
                         data-stock-quantity="{{ $item->variant->branchStocks->where('branch_id', $selectedBranchId ?? 1)->first()?->stock_quantity ?? 0 }}">
                        <div class="grid md:grid-cols-12 gap-4 items-center">
                            <div class="md:col-span-6 flex items-center gap-4">
                                <div class="relative h-20 w-20 flex-shrink-0 rounded overflow-hidden">
                                    @if($item->variant->product->primary_image)
                                        <img src="{{ Storage::disk('s3')->url($item->variant->product->primary_image->img) }}" 
                                             alt="{{ $item->variant->product->name }}" 
                                             class="object-cover w-full h-full">
                                    @else
                                        <div class="h-full w-full bg-gray-200 flex items-center justify-center">
                                            <i class="fas fa-image text-gray-400"></i>
                                        </div>
                                    @endif
                                </div>
                                <div>
                                    <h3 class="font-medium">{{ $item->variant->product->name }}</h3>
                                    <p class="text-sm text-gray-500">
                                        @if($item->variant->variant_description)
                                            {{ $item->variant->variant_description }}
                                        @else
                                            {{ implode(', ', $item->variant->variantValues->pluck('value')->toArray()) }}
                                        @endif
                                    </p>
                                    
                                    {{-- Display toppings --}}
                                    @if($item->toppings && $item->toppings->count() > 0)
                                        <div class="mt-1 space-y-1">
                                            <p class="text-xs font-medium text-orange-600">Toppings:</p>
                                            <ul class="text-xs text-gray-600 pl-2">
                                                @foreach($item->toppings as $topping)
                                                    <li class="flex justify-between">
                                                        <span>• {{ $topping->name }}</span>
                                                        <span class="font-medium">+{{ number_format($topping->price) }}đ</span>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif

                                    <button class="text-red-500 text-sm flex items-center mt-1 hover:underline remove-item" 
                                            data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt h-3 w-3 mr-1"></i>
                                        Xóa
                                    </button>
                                </div>
                            </div>

                            <div class="md:col-span-2 text-center">
                                <span class="md:hidden font-medium mr-2">Giá:</span>
                                <span class="item-price">
                                    @php
                                        $now = \Carbon\Carbon::now();
                                        $currentTime = $now->format('H:i:s');
                                        $userId = \Illuminate\Support\Facades\Auth::id();
                                        $selectedBranchId = $cart->branch_id ?? 1;

                                        $originPrice = $item->variant->price;
                                        foreach ($item->toppings as $topping) {
                                            $originPrice += $topping->price;
                                        }

                                        // Lấy discount code giống trang show
                                        $activeDiscountCodesQuery = \App\Models\DiscountCode::where('is_active', true)
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

                                        $activeDiscountCodesQuery->where(function($query) use ($userId) {
                                            $query->where('usage_type', 'public');
                                            if ($userId) {
                                                $query->orWhere(function($q) use ($userId) {
                                                    $q->where('usage_type', 'personal')
                                                      ->whereHas('users', function($userQuery) use ($userId) {
                                                          $userQuery->where('user_id', $userId);
                                                      });
                                                });
                                            }
                                        });

                                        $activeDiscountCodes = $activeDiscountCodesQuery->with(['products' => function($query) {
                                            $query->with(['product', 'category']);
                                        }])->get()->filter(function($discountCode) use ($currentTime) {
                                            if ($discountCode->valid_from_time && $discountCode->valid_to_time) {
                                                $from = \Carbon\Carbon::parse($discountCode->valid_from_time)->format('H:i:s');
                                                $to = \Carbon\Carbon::parse($discountCode->valid_to_time)->format('H:i:s');
                                                if ($from < $to) {
                                                    if (!($currentTime >= $from && $currentTime <= $to)) return false;
                                                } else {
                                                    if (!($currentTime >= $from || $currentTime <= $to)) return false;
                                                }
                                            }
                                            return true;
                                        });

                                        // Lọc discount code áp dụng cho sản phẩm này
                                        $applicableDiscounts = $activeDiscountCodes->filter(function($discountCode) use ($item) {
                                            if (($discountCode->applicable_scope === 'all') || ($discountCode->applicable_items === 'all_items')) {
                                                return true;
                                            }
                                            $applies = $discountCode->products->contains(function($discountProduct) use ($item) {
                                                if ($discountProduct->product_id === $item->variant->product->id) return true;
                                                if ($discountProduct->category_id === $item->variant->product->category_id) return true;
                                                return false;
                                            });
                                            return $applies;
                                        });

                                        // Tìm mã giảm giá tốt nhất
                                        $maxDiscount = null;
                                        $maxValue = 0;
                                        foreach ($applicableDiscounts as $discountCode) {
                                            $value = 0;
                                            if ($discountCode->discount_type === 'fixed_amount') {
                                                $value = $discountCode->discount_value;
                                            } elseif ($discountCode->discount_type === 'percentage') {
                                                $value = $originPrice * $discountCode->discount_value / 100;
                                                if ($discountCode->max_discount_amount) {
                                                    $value = min($value, $discountCode->max_discount_amount);
                                                }
                                            }
                                            if ($value > $maxValue) {
                                                $maxValue = $value;
                                                $maxDiscount = $discountCode;
                                            }
                                        }
                                        $finalPrice = max(0, $originPrice - $maxValue);
                                    @endphp
                                    {{ number_format($finalPrice, 0, '', '.') }} đ
                                </span>
                                <div class="text-xs text-gray-500">
                                    @if($item->variant->price < $originPrice)
                                        <span>(Bao gồm topping)</span>
                                    @endif
                                </div>
                            </div>

                            <div class="md:col-span-2 flex items-center justify-center">
                                <div class="flex items-center border rounded">
                                    <button class="px-2 py-1 hover:bg-gray-100 decrease-quantity" data-id="{{ $item->id }}">
                                        <i class="fas fa-minus h-3 w-3"></i>
                                    </button>
                                    <span class="px-3 py-1 item-quantity">{{ $item->quantity }}</span>
                                    <button class="px-2 py-1 hover:bg-gray-100 increase-quantity" data-id="{{ $item->id }}">
                                        <i class="fas fa-plus h-3 w-3"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="md:col-span-2 text-right font-medium">
                                <span class="md:hidden font-medium mr-2">Tổng:</span>
                                <span class="item-total">
                                    @php
                                        $itemTotal = $finalPrice * $item->quantity;
                                    @endphp
                                    {{ number_format($itemTotal, 0, '', '.') }} đ
                                </span>
                            </div>
                        </div>
                    </div>
                    <hr class="border-t border-gray-200">
                    @endforeach
                @else
                    <div class="p-8 text-center">
                        <div class="flex justify-center mb-4">
                            <i class="fas fa-shopping-cart text-gray-300 text-5xl"></i>
                        </div>
                        <h3 class="text-xl font-bold text-gray-700 mb-2">Giỏ hàng của bạn đang trống</h3>
                        <p class="text-gray-500 mb-6">Hãy thêm sản phẩm vào giỏ hàng để tiếp tục</p>
                        <a href="{{ route('products.index') }}" class="bg-orange-500 hover:bg-orange-600 text-white px-6 py-2 rounded-md transition-colors inline-block">
                            Tiếp tục mua sắm
                        </a>
                    </div>
                @endif
            </div>

            <div class="mt-6 flex flex-wrap gap-4">
                <a href="{{ route('products.index') }}" class="border border-gray-300 hover:bg-gray-50 px-4 py-2 rounded-md flex items-center transition-colors">
                    <i class="fas fa-arrow-left h-4 w-4 mr-2"></i>
                    Tiếp Tục Mua Sắm
                </a>
            </div>

            <!-- Suggested Products -->
            <div class="mt-12">
                <h2 class="text-xl font-bold mb-6">Có Thể Bạn Cũng Thích</h2>
                <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                    @if(count($cartItems) == 0)
                        <div class="col-span-4 text-center text-gray-400">Không có sản phẩm gợi ý</div>
                    @else
                        @forelse($suggestedProducts as $product)
                            @php
                                $primaryImage = $product->primaryImage ? $product->primaryImage : $product->images->first();
                                $imgUrl = $primaryImage && $primaryImage->img ? (Storage::disk('s3')->url($primaryImage->img)) : asset('images/default-placeholder.png');
                                $firstVariant = $product->variants->first();
                                $branchId = $cart && $cart->branch_id ? $cart->branch_id : 1;
                            @endphp
                            <div class="bg-white rounded-lg shadow-sm overflow-hidden">
                                <div class="relative h-40">
                                    <img src="{{ $imgUrl }}" alt="{{ $product->name }}" class="object-cover w-full h-full">
                                    @if(isset($product->is_favorite) && $product->is_favorite)
                                        <span class="absolute top-2 right-2 text-red-500"><i class="fas fa-heart"></i></span>
                                    @endif
                                </div>
                                <div class="p-3">
                                    <h3 class="font-medium text-sm mb-1 line-clamp-1">{{ $product->name }}</h3>
                                    <p class="text-orange-500 font-bold text-sm mb-2">{{ number_format($product->base_price) }}đ</p>
                                    <button class="w-full bg-orange-500 hover:bg-orange-600 text-white px-3 py-1 rounded-md text-xs flex items-center justify-center transition-colors add-suggested"
                                        data-product-id="{{ $product->id }}"
                                        data-variant-id="{{ $firstVariant ? $firstVariant->id : '' }}"
                                        data-branch-id="{{ $branchId }}"
                                        data-variant-values='@json($firstVariant ? $firstVariant->variantValues->pluck("id") : [])'>
                                        Thêm ngay
                                    </button>
                                </div>
                            </div>
                        @empty
                            <div class="col-span-4 text-center text-gray-400">Không có sản phẩm gợi ý</div>
                        @endforelse
                    @endif
                </div>
            </div>
            @if(count($cartItems) > 0)
            @php
                $cartCategoryIds = collect($cartItems)->map(function($item) {
                    return $item->variant->product->category_id;
                })->unique()->implode(',');
                $categoryUrl = route('products.index') . ($cartCategoryIds ? ('?category=' . $cartCategoryIds) : '');
            @endphp
            <div class="mt-4 flex flex-wrap gap-4">
                <a href="{{ $categoryUrl }}" class="border border-gray-300 hover:bg-gray-50 px-4 py-2 rounded-md flex items-center transition-colors">
                    <i class="fas fa-plus h-4 w-4 mr-2"></i>
                    Xem Thêm
                </a>
            </div>
            @endif
        </div>

        <div>
            <div class="bg-white rounded-lg shadow-sm p-6 sticky top-4">
                <h2 class="text-xl font-bold mb-4">Tóm Tắt Đơn Hàng</h2>

                <div class="space-y-3 mb-6">
                    <div class="flex justify-between">
                        <span class="text-gray-600">Tạm tính</span>
                        @php
                            $subtotal = 0;
                            $now = \Carbon\Carbon::now();
                            $currentTime = $now->format('H:i:s');
                            $userId = \Illuminate\Support\Facades\Auth::id();
                            $selectedBranchId = $cart->branch_id ?? 1;
                            foreach ($cartItems as $item) {
                                $originPrice = $item->variant->price;
                                foreach ($item->toppings as $topping) {
                                    $originPrice += $topping->price;
                                }
                                $activeDiscountCodesQuery = \App\Models\DiscountCode::where('is_active', true)
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
                                $activeDiscountCodesQuery->where(function($query) use ($userId) {
                                    $query->where('usage_type', 'public');
                                    if ($userId) {
                                        $query->orWhere(function($q) use ($userId) {
                                            $q->where('usage_type', 'personal')
                                              ->whereHas('users', function($userQuery) use ($userId) {
                                                  $userQuery->where('user_id', $userId);
                                              });
                                        });
                                    }
                                });
                                $activeDiscountCodes = $activeDiscountCodesQuery->with(['products' => function($query) {
                                    $query->with(['product', 'category']);
                                }])->get()->filter(function($discountCode) use ($currentTime) {
                                    if ($discountCode->valid_from_time && $discountCode->valid_to_time) {
                                        $from = \Carbon\Carbon::parse($discountCode->valid_from_time)->format('H:i:s');
                                        $to = \Carbon\Carbon::parse($discountCode->valid_to_time)->format('H:i:s');
                                        if ($from < $to) {
                                            if (!($currentTime >= $from && $currentTime <= $to)) return false;
                                        } else {
                                            if (!($currentTime >= $from || $currentTime <= $to)) return false;
                                        }
                                    }
                                    return true;
                                });
                                $applicableDiscounts = $activeDiscountCodes->filter(function($discountCode) use ($item) {
                                    if (($discountCode->applicable_scope === 'all') || ($discountCode->applicable_items === 'all_items')) {
                                        return true;
                                    }
                                    $applies = $discountCode->products->contains(function($discountProduct) use ($item) {
                                        if ($discountProduct->product_id === $item->variant->product->id) return true;
                                        if ($discountProduct->category_id === $item->variant->product->category_id) return true;
                                        return false;
                                    });
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
                                        if ($discountCode->max_discount_amount) {
                                            $value = min($value, $discountCode->max_discount_amount);
                                        }
                                    }
                                    if ($value > $maxValue) {
                                        $maxValue = $value;
                                        $maxDiscount = $discountCode;
                                    }
                                }
                                $finalPrice = max(0, $originPrice - $maxValue);
                                $subtotal += $finalPrice * $item->quantity;
                            }
                        @endphp
                        <span id="subtotal">{{ number_format($subtotal, 0, '', '.') }} đ</span>
                    </div>
                    <div class="flex justify-between">
                        <span class="text-gray-600">Phí giao hàng</span>
                        <span id="shipping">{{ $subtotal > 100000 ? 'Miễn phí' : number_format(15000) . 'đ' }}</span>
                    </div>
                    <div class="flex justify-between text-green-600 {{ session('discount') ? '' : 'hidden' }}" id="discount-container">
                        <span>Giảm giá</span>
                        <span id="discount">-{{ number_format(session('discount', 0)) }}đ</span>
                    </div>
                    <hr class="border-t border-gray-200">
                    <div class="flex justify-between font-bold text-lg">
                        <span>Tổng cộng</span>
                        @php
                            $shipping = $subtotal > 100000 ? 0 : 15000;
                            $discount = session('discount', 0);
                            $total = $subtotal + $shipping - $discount;
                        @endphp
                        <span id="total">{{ number_format($total) }}đ</span>
                    </div>
                </div>

                <div class="mb-6">
                    <div class="flex gap-2 mb-2">
                        <input type="text" placeholder="Nhập mã giảm giá" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-orange-500" id="coupon-code">
                        <button class="border border-gray-300 hover:bg-gray-50 px-4 py-2 rounded-md transition-colors" id="apply-coupon">
                            Áp Dụng
                        </button>
                    </div>
                    <p class="text-xs text-gray-500">Nhập mã "FASTFOOD10" để được giảm 10%</p>
                </div>

                <a href="{{ route('checkout.index') }}" class="block w-full bg-orange-500 hover:bg-orange-600 text-white text-center px-6 py-3 rounded-md font-medium transition-colors {{ count($cartItems) == 0 ? 'opacity-50 pointer-events-none' : '' }}">
                    Tiến Hành Thanh Toán
                </a>

                <div class="mt-4 text-xs text-gray-500 text-center">
                    Đơn hàng trên 100.000đ được miễn phí giao hàng
                </div>
            </div>

            <div class="mt-6 bg-orange-50 rounded-lg p-4">
                <h3 class="font-medium mb-2">Chính sách mua hàng</h3>
                <ul class="text-sm text-gray-600 space-y-1">
                    <li>Miễn phí giao hàng cho đơn từ 100.000đ</li>
                    <li>Đổi trả trong vòng 30 phút nếu lỗi từ nhà hàng</li>
                    <li>Hỗ trợ 24/7: 1900 1234</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Mini Cart Aside -->
<div class="fixed top-0 right-0 h-full w-full md:w-96 bg-white shadow-xl z-50 transform translate-x-full transition-transform duration-300" id="mini-cart">
    <div class="flex flex-col h-full">
        <div class="flex items-center justify-between p-4 border-b">
            <h2 class="text-lg font-bold">Giỏ Hàng (3)</h2>
            <button class="p-2" id="close-mini-cart">
                <i class="fas fa-times h-5 w-5"></i>
            </button>
        </div>

        <div class="flex-1 overflow-y-auto p-4">
            @foreach($cartItems as $item)
            <div class="flex gap-3 {{ !$loop->last ? 'pb-3 border-b mb-3' : '' }}"
                 data-id="{{ $item->id }}"
                 data-product-id="{{ $item->variant->product->id }}"
                 data-base-price="{{ $item->variant->product->base_price }}"
                 data-variant-value-ids="{{ json_encode($item->variant->variantValues->pluck('id')->toArray()) }}"
                 data-variant-adjustment="{{ $item->variant->variantValues->sum('price_adjustment') }}"
                 data-topping-ids="{{ json_encode($item->toppings->pluck('id')->toArray()) }}"
                 data-topping-price="{{ $item->toppings->sum('price') }}"
                 data-stock-quantity="{{ $item->variant->branchStocks->where('branch_id', $selectedBranchId ?? 1)->first()?->stock_quantity ?? 0 }}">
                <div class="relative h-16 w-16 flex-shrink-0 rounded overflow-hidden">
                    @if($item->variant->product->primary_image)
                        <img src="{{ Storage::disk('s3')->url($item->variant->product->primary_image->img) }}" 
                             alt="{{ $item->variant->product->name }}" 
                             class="object-cover w-full h-full">
                    @else
                        <div class="h-full w-full bg-gray-200 flex items-center justify-center">
                            <i class="fas fa-image text-gray-400"></i>
                        </div>
                    @endif
                </div>
                <div class="flex-1">
                    <div class="flex justify-between">
                        <h3 class="font-medium text-sm">{{ $item->variant->product->name }}</h3>
                        <button class="text-gray-400 hover:text-red-500 remove-item" data-id="{{ $item->id }}">
                            <i class="fas fa-times h-4 w-4"></i>
                        </button>
                    </div>
                    <p class="text-xs text-gray-500">
                        @if($item->variant->variant_description)
                            {{ $item->variant->variant_description }}
                        @else
                            {{ implode(', ', $item->variant->variantValues->pluck('value')->toArray()) }}
                        @endif
                    </p>
                    
                    {{-- Display toppings --}}
                    @if($item->toppings && $item->toppings->count() > 0)
                        <div class="mt-1">
                            <p class="text-xs text-orange-500">
                                Toppings: {{ implode(', ', $item->toppings->pluck('name')->toArray()) }}
                            </p>
                        </div>
                    @endif
                    
                    <div class="flex justify-between items-center mt-2">
                        <div class="flex items-center border rounded">
                            <button class="px-1 py-0.5 hover:bg-gray-100 decrease-quantity" data-id="{{ $item->id }}">
                                <i class="fas fa-minus h-3 w-3"></i>
                            </button>
                            <span class="px-2 py-0.5 text-sm item-quantity">{{ $item->quantity }}</span>
                            <button class="px-1 py-0.5 hover:bg-gray-100 increase-quantity" data-id="{{ $item->id }}">
                                <i class="fas fa-plus h-3 w-3"></i>
                            </button>
                        </div>
                        <p class="font-medium">
                            @php
                                $itemPrice = $item->variant->price;
                                foreach ($item->toppings as $topping) {
                                    $itemPrice += $topping->price;
                                }
                                $itemTotal = $itemPrice * $item->quantity;
                            @endphp
                            {{ number_format($itemTotal) }}đ
                        </p>
                    </div>
                </div>
            </div>
            @endforeach
            
            @if(count($cartItems) == 0)
            <div class="text-center py-8">
                <div class="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                    <i class="fas fa-shopping-cart text-3xl text-gray-400"></i>
                </div>
                <p class="text-gray-500 font-medium">Giỏ hàng của bạn đang trống</p>
            </div>
            @endif
        </div>

        <div class="p-4 border-t">
            <div class="flex justify-between mb-2">
                <span>Tạm tính:</span>
                <span>322.000đ</span>
            </div>
            <div class="flex justify-between mb-4">
                <span>Phí giao hàng:</span>
                <span>Miễn phí</span>
            </div>
            <a href="{{ route('cart.index') }}" class="block w-full bg-orange-500 hover:bg-orange-600 text-white text-center px-4 py-2 rounded-md font-medium transition-colors mb-2">
                Xem Giỏ Hàng
            </a>
            <a href="{{ route('checkout.index') }}" class="block w-full border border-gray-300 hover:bg-gray-50 text-center px-4 py-2 rounded-md font-medium transition-colors">
                Thanh Toán
            </a>
        </div>
    </div>
</div>

<!-- Overlay -->
<div class="fixed inset-0 bg-black bg-opacity-50 z-40 hidden" id="mini-cart-overlay"></div>

<!-- Floating cart button -->
<button class="fixed bottom-4 right-4 bg-orange-500 text-white p-3 rounded-full shadow-lg md:hidden z-30" id="floating-cart-button">
    <i class="fas fa-shopping-cart h-6 w-6"></i>
</button>
@endsection

@section('scripts')
<script src="https://js.pusher.com/7.2/pusher.min.js"></script>
<script>
    // Global variables for cart.js
    window.pusherKey = '{{ env('PUSHER_APP_KEY') }}';
    window.pusherCluster = '{{ env('PUSHER_APP_CLUSTER') }}';
    window.csrfToken = '{{ csrf_token() }}';
</script>
<script src="{{ asset('js/Customer/Cart/cart.js') }}"></script>
@endsection

@include('components.modal')