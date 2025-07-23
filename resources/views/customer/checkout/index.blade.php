@extends('layouts.customer.fullLayoutMaster')

@section('title', 'FastFood - Thanh Toán')

@section('head')
    <style>
        /* Styling for autocomplete dropdown */
        .autocomplete-items {
            position: absolute;
            border: 1px solid #d4d4d4;
            border-bottom: none;
            border-top: none;
            z-index: 99;
            top: 100%;
            left: 0;
            right: 0;
            max-height: 200px;
            overflow-y: auto;
            border-radius: 0 0 0.25rem 0.25rem;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        .autocomplete-items div {
            padding: 10px;
            cursor: pointer;
            background-color: #fff;
            border-bottom: 1px solid #d4d4d4;
        }

        .autocomplete-items div:hover {
            background-color: #FEF3C7;
        }

        .autocomplete-active {
            background-color: #FDBA74 !important;
            color: #fff;
        }

        /* === MODAL CSS FIXES === */
        #addressModal, #addAddressModal {
            position: fixed !important;
            z-index: 99999 !important; /* Ensure modal is on top */
            pointer-events: auto !important; /* Ensure modal container is interactive */
        }
        
        /* Ensure modal content and all buttons are clickable */
        .modal-content,
        #addressModal button, 
        #changeAddressBtn, 
        #addFirstAddressBtn {
            pointer-events: auto !important;
            cursor: pointer !important;
        }

        /* Ensure modal is properly shown when flex class is added */
        #addressModal.flex {
            display: flex !important;
        }


    </style>
@endsection

@section('content')
    <style>
        .form-control {
            display: block;
            width: 100%;
            padding: 0.5rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .form-control:focus {
            border-color: #F97316;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(249, 115, 22, 0.25);
        }

        .form-label {
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        .::after {
            content: "*";
            color: #dc3545;
            margin-left: 0.25rem;
        }
    </style>
<div class="max-w-[1240px] mx-auto w-full">

    <div class="container mx-auto px-4 py-8">
        <h1 class="text-3xl font-bold mb-2">Thanh Toán</h1>
        <p class="text-gray-500 mb-8">Hoàn tất đơn hàng của bạn</p>

        <form action="{{ route('checkout.process') }}" method="POST" id="checkout-form">
            @csrf
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">

                <!-- ========= CỘT BÊN TRÁI ========= -->
                <div class="lg:col-span-2">
            @if($userAddresses && $userAddresses->count() > 0)
                @auth
                    <!-- Address Component -->
                    <div class="bg-white rounded-lg shadow-sm p-6 mb-6 border border-gray-200" id="address-component">
                        <h2 class="text-xl font-bold mb-1">Địa chỉ giao hàng</h2>
                        <p class="text-sm text-gray-500 mb-4">Chọn hoặc thêm địa chỉ nhận hàng của bạn.</p>
                        <hr class="mb-4">
                        <!-- View 1: Hiển thị địa chỉ được chọn -->
                        <div id="address-summary-view">
                            @php
                                $selectedAddressId = request('address_id');
                                $selectedAddress = $selectedAddressId ? $userAddresses->firstWhere('id', $selectedAddressId) : null;
                                if (!$selectedAddress) {
                                    $selectedAddress = $userAddresses->where('is_default', true)->first() ?? $userAddresses->first();
                                }
                            @endphp
                            <div class="border border-orange-300 bg-orange-50 rounded-lg p-4">
                                <div class="flex items-start justify-between">
                                    <div class="flex items-start">
                                        <span class="text-orange-500 mr-4 mt-1"><i class="fas fa-map-marker-alt"></i></span>
                                        <div>
                                            <div class="font-semibold">
                                                <span id="summary-name">{{ $selectedAddress->full_name ?? auth()->user()->full_name }}</span>
                                                <span class="font-normal" id="summary-phone">({{ $selectedAddress->phone_number }})</span>
                                                <span id="summary-default-badge" class="ml-2 border border-orange-500 text-orange-500 px-2 py-0.5 rounded text-xs font-medium bg-white {{ $selectedAddress->is_default ? '' : 'hidden' }}">Mặc Định</span>
                                            </div>
                                            <div class="text-sm text-gray-700" id="summary-address">{{ $selectedAddress->full_address }}</div>
                                        </div>
                                    </div>
                                    <button type="button" id="show-address-list-btn" class="ml-4 text-blue-600 hover:underline font-medium text-sm px-3 py-1 rounded flex-shrink-0">
                                        Thay đổi
                                    </button>
                                </div>
                            </div>
                            <!-- Hidden fields for submission -->
                            <input type="hidden" id="hidden_address_id" name="address_id" value="{{ $selectedAddress->id }}">
                            <input type="hidden" id="hidden_full_name" name="full_name" value="{{ $selectedAddress->full_name ?? auth()->user()->full_name }}">
                            <input type="hidden" id="hidden_phone" name="phone" value="{{ $selectedAddress->phone_number }}">
                            <input type="hidden" id="hidden_email" name="email" value="{{ auth()->user()->email }}">
                            <input type="hidden" id="hidden_address" name="address" value="{{ $selectedAddress->address_line }}">
                            <input type="hidden" id="hidden_city" name="city" value="{{ $selectedAddress->city }}">
                            <input type="hidden" id="hidden_district" name="district" value="{{ $selectedAddress->district }}">
                            <input type="hidden" id="hidden_ward" name="ward" value="{{ $selectedAddress->ward }}">
                        </div>
                        <!-- View 2: Danh sách địa chỉ để chọn -->
                        <div id="address-list-view" class="hidden">
                            <div class="space-y-3 max-h-72 overflow-y-auto pr-2" id="address-list-container">
                                @foreach($userAddresses as $address)
                                    <label for="address-radio-{{ $address->id }}" class="address-option-label flex items-start p-3 border rounded-lg cursor-pointer hover:bg-gray-50 transition-all"
                                        data-address-id="{{ $address->id }}"
                                        data-full-name="{{ $address->full_name ?? auth()->user()->full_name }}"
                                        data-phone-number="{{ $address->phone_number }}"
                                        data-full-address="{{ $address->full_address }}"
                                        data-is-default="{{ $address->is_default ? 'true' : 'false' }}"
                                        data-city="{{ $address->city }}"
                                        data-district="{{ $address->district }}"
                                        data-ward="{{ $address->ward }}"
                                        data-address-line="{{ $address->address_line }}"
                                        data-latitude="{{ $address->latitude }}"
                                        data-longitude="{{ $address->longitude }}">
                                        <span class="text-gray-400 mr-4 mt-1"><i class="fas fa-map-marker-alt"></i></span>
                                        <div class="flex-grow">
                                            <div class="font-semibold">
                                                <span>{{ $address->full_name ?? auth()->user()->full_name }}</span>
                                                <span class="font-normal">({{ $address->phone_number }})</span>
                                                @if($address->is_default)
                                                    <span class="ml-2 border border-orange-500 text-orange-500 px-2 py-0.5 rounded text-xs font-medium bg-white">Mặc Định</span>
                                                @endif
                                            </div>
                                            <div class="text-sm text-gray-700">{{ $address->full_address }}</div>
                                            <!-- NEW: Distance and warning placeholders -->
                                            <div class="address-meta mt-2 text-sm">
                                                <span class="distance-info text-blue-600 font-medium hidden"></span>
                                                <span class="warning-info text-red-600 font-medium hidden"></span>
                                            </div>
                                        </div>
                                        <input type="radio" name="selected_address_option" id="address-radio-{{ $address->id }}" value="{{ $address->id }}" class="form-radio h-5 w-5 text-orange-600 ml-4 mt-1" {{ ($selectedAddress->id ?? -1) == $address->id ? 'checked' : '' }}>
                                    </label>
                                @endforeach
                            </div>
                            <div class="mt-4 pt-4 border-t">
                                <button type="button" id="openAddAddressModalBtn" class="text-orange-600 border border-orange-500 rounded px-3 py-1 text-sm font-medium hover:bg-orange-50">
                                    <i class="fas fa-plus mr-2"></i>Thêm địa chỉ mới
                                </button>
                                <div class="flex justify-end gap-3 mt-3">
                                    <button type="button" id="cancel-change-address-btn" class="px-5 py-2 rounded border border-gray-300 text-gray-700 bg-white hover:bg-gray-100 text-sm">Hủy</button>
                                    <button type="button" id="confirm-address-btn" class="px-5 py-2 rounded bg-orange-500 text-white font-semibold hover:bg-orange-600 text-sm">Xác nhận</button>
                                </div>
                            </div>
                        </div>
                    </div>
                @endauth
            @endif
            @if(!$userAddresses || $userAddresses->count() === 0)
                @php
                    $user = Auth::user();
                @endphp
                <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
                    <h2 class="text-xl font-bold mb-4">Thông Tin Giao Hàng</h2>
                    <div class="grid md:grid-cols-2 gap-4">
                        <div>
                            <label for="full_name" class="block text-sm font-medium text-gray-700 mb-1">Họ và tên</label>
                            <input type="text" id="full_name" name="full_name" 
                                class="w-full px-3 py-2 border rounded-lg @error('full_name') border-red-500 @enderror"
                                value="{{ old('full_name', $user ? $user->full_name : '') }}"
                                placeholder="Nhập họ và tên">
                            @error('full_name')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div>
                            <label for="phone" class="block text-sm font-medium text-gray-700 mb-1">Số điện thoại</label>
                            <input type="tel" id="phone" name="phone" 
                                class="w-full px-3 py-2 border rounded-lg @error('phone') border-red-500 @enderror"
                                value="{{ old('phone', $user ? $user->phone : '') }}"
                                placeholder="Nhập số điện thoại">
                            @error('phone')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="md:col-span-2">
                            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                            <input type="email" id="email" name="email" 
                                class="w-full px-3 py-2 border rounded-lg @error('email') border-red-500 @enderror"
                                value="{{ old('email', $user ? $user->email : '') }}"
                                placeholder="Nhập email">
                            @error('email')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div>
                            <label for="city" class="block text-sm font-medium text-gray-700 mb-1">Tỉnh/Thành phố</label>
                            <select id="city" name="city" class="w-full px-3 py-2 border rounded-lg @error('city') border-red-500 @enderror">
                                <option value="Hà Nội" selected>Hà Nội</option>
                            </select>
                            @error('city')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div>
                            <label for="district" class="block text-sm font-medium text-gray-700 mb-1">Quận/Huyện</label>
                            <select id="district" name="district" class="w-full px-3 py-2 border rounded-lg @error('district') border-red-500 @enderror">
                                <option value="">-- Chọn Quận/Huyện --</option>
                            </select>
                            @error('district')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="md:col-span-1">
                            <label for="ward" class="block text-sm font-medium text-gray-700 mb-1">Xã/Phường</label>
                            <select id="ward" name="ward" class="w-full px-3 py-2 border rounded-lg @error('ward') border-red-500 @enderror">
                                <option value="">-- Chọn Xã/Phường --</option>
                            </select>
                            @error('ward')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="md:col-span-1 relative">
                            <label for="address" class="block text-sm font-medium text-gray-700 mb-1">Số nhà, đường</label>
                            <input type="text" id="address" name="address" 
                                class="w-full px-3 py-2 border rounded-lg @error('address') border-red-500 @enderror"
                                value="{{ old('address') }}" autocomplete="off"
                                placeholder="Nhập số nhà, tên đường">
                            <div class="text-xs text-gray-500 mt-1">Nhập địa chỉ sau khi chọn Quận/Huyện và Phường/Xã</div>
                            @error('address')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                        <!-- MAP PICKER -->
                        <div class="md:col-span-2 relative mt-4">
                            <label class="block text-sm font-medium text-gray-700 mb-1">Chọn vị trí trên bản đồ <span class="text-xs text-gray-500">(bắt buộc để giao hàng)</span></label>
                            <div id="checkout-map" style="height: 300px; border-radius: 8px; margin-bottom: 8px;"></div>
                            <input type="hidden" id="latitude" name="latitude" value="{{ old('latitude') }}">
                            <input type="hidden" id="longitude" name="longitude" value="{{ old('longitude') }}">
                            <div class="text-xs text-gray-500">Nhấn vào bản đồ để chọn vị trí giao hàng chính xác.</div>
                            @error('latitude')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                            @error('longitude')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>
                    </div>
                </div>
            @endif

                    <!-- Order Notes -->
                    <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
                        <h2 class="text-xl font-bold mb-4">Ghi Chú Đơn Hàng</h2>
                        <div>
                            <label for="notes" class="form-label">Ghi chú</label>
                            <textarea id="notes" name="notes" class="form-control" rows="3"
                                placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn.">{{ old('notes') }}</textarea>
                            <div class="text-xs text-gray-500 mt-1">
                                Bạn có thể thêm ghi chú đặc biệt cho đơn hàng như thời gian giao hàng mong muốn, hướng dẫn tìm địa chỉ, v.v.
                            </div>
                        </div>
                    </div>

                    <!-- NEW: Payment Methods Moved Here -->
                    <div class="bg-white rounded-lg shadow-sm p-6 mb-6">
                        <h2 class="text-xl font-bold mb-4">Phương thức thanh toán</h2>
                        <div id="payment-method-options" class="space-y-4">
                            <label class="payment-option flex items-center p-4 border rounded-lg cursor-pointer hover:bg-gray-50 transition-all">
                                <input type="radio" name="payment_method" value="cod" class="h-5 w-5 text-orange-500" checked>
                                <div class="ml-4 flex-grow">
                                    <span class="block font-medium">Thanh toán khi nhận hàng (COD)</span>
                                    <span class="text-sm text-gray-500">Trả tiền mặt trực tiếp cho tài xế.</span>
                                </div>
                                <i class="fas fa-money-bill-wave text-green-500 text-2xl"></i>
                            </label>
                            <label class="payment-option flex items-center p-4 border rounded-lg cursor-pointer hover:bg-gray-50 transition-all">
                                <input type="radio" name="payment_method" value="vnpay" class="h-5 w-5 text-orange-500">
                                <div class="ml-4 flex-grow">
                                    <span class="block font-medium">Thanh toán qua VNPAY</span>
                                    <span class="text-sm text-gray-500">An toàn & nhanh chóng qua cổng VNPAY.</span>
                                </div>
                                <img src="https://cdn.haitrieu.com/wp-content/uploads/2022/10/Icon-VNPAY-QR.png" alt="VNPAY" class="h-8 object-contain">
                            </label>
                            @auth
                            <label class="payment-option flex items-center p-4 border rounded-lg cursor-pointer hover:bg-gray-50 transition-all">
                                <input type="radio" name="payment_method" value="balance" class="h-5 w-5 text-orange-500">
                                <div class="ml-4 flex-grow">
                                    <span class="block font-medium">Thanh toán bằng số dư</span>
                                    <span class="text-sm text-gray-500">Sử dụng số dư: <strong>{{ number_format(Auth::user()->balance ?? 0) }}đ</strong></span>
                                </div>
                                 <i class="fas fa-wallet text-purple-500 text-2xl"></i>
                            </label>
                            @endauth
                        </div>
                    </div>
                </div>

                <!-- ========= CỘT BÊN PHẢI ========= -->
                <div class="lg:col-span-1">
                    <div class="bg-white rounded-lg shadow-sm p-6 sticky top-4">
                        
                        <!-- NEW: Voucher Form -->
                        <div class="mb-6">
                             <h2 class="text-xl font-bold mb-4">Mã giảm giá</h2>
                             <div id="coupon-area">
                                <div class="flex">
                                    <input type="text" name="coupon_code" id="coupon-code-input" class="form-control flex-grow rounded-r-none focus:ring-0" placeholder="Nhập mã giảm giá..." {{ session('coupon_code') ? 'disabled' : '' }} value="{{ session('coupon_code') }}">
                                    <button type="button" id="apply-coupon-btn" class="bg-orange-500 text-white px-5 rounded-l-none rounded-r-lg hover:bg-orange-600 font-semibold text-sm transition-colors border border-orange-500" {{ session('coupon_code') ? 'disabled' : '' }}>Áp dụng</button>
                                </div>
                                <div id="coupon-feedback" class="mt-2 text-sm"></div>
                             </div>
                        </div>

                        <h2 class="text-xl font-bold mb-4">Đơn Hàng Của Bạn</h2>
                        <!-- Order Items -->
                        <div class="space-y-4">
                            @foreach ($cartItems as $item)
                                <div class="flex items-center gap-4">
                                    <div class="relative h-16 w-16 flex-shrink-0 rounded overflow-hidden">
                                        @if ($item->variant->product->primary_image)
                                            <img src="{{ Storage::disk('s3')->url($item->variant->product->primary_image->img) }}"
                                                alt="{{ $item->variant->product->name }}"
                                                class="object-cover w-full h-full">
                                        @else
                                            <div class="h-full w-full bg-gray-200 flex items-center justify-center">
                                                <i class="fas fa-image text-gray-400"></i>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="flex-1 min-w-0">
                                        <h3 class="font-medium text-sm truncate">{{ $item->variant->product->name }}</h3>
                                        <p class="text-xs text-gray-500">
                                            @if ($item->variant->variant_description)
                                                {{ $item->variant->variant_description }}
                                            @else
                                                {{ implode(', ', $item->variant->variantValues->pluck('value')->toArray()) }}
                                            @endif
                                        </p>
                                        @if ($item->toppings && $item->toppings->count() > 0)
                                            <p class="text-xs text-orange-600 mt-1">
                                                +{{ $item->toppings->count() }} topping
                                            </p>
                                        @endif
                                    </div>
                                    <div class="text-right">
                                        <div class="text-sm font-medium">
                                            @php
                                                $itemPrice = $item->final_price ?? ($item->variant->price + $item->toppings->sum('price'));
                                                $itemTotal = $itemPrice * $item->quantity;
                                            @endphp
                                            {{ number_format($itemTotal) }}đ
                                        </div>
                                        <div class="text-xs text-gray-500">
                                            SL: {{ $item->quantity }}
                                        </div>
                                    </div>
                                </div>
                                <hr class="border-t border-gray-200 my-6">
                            @endforeach
                        </div>
                        <!-- Order Totals -->
                        <div class="space-y-4 my-6">
                            @php
                                // Subtotal đã được tính sẵn trong controller ($subtotal)
                                $discount = session('coupon_discount_amount', 0);
                                // Phí vận chuyển ban đầu sẽ được tính bằng JS
                                $shipping = 0; 
                                $total = $subtotal + $shipping - $discount;
                            @endphp

                            <div class="flex justify-between">
                                <span class="text-gray-600">Tạm tính</span>
                                <span id="subtotal-display" data-value="{{ $subtotal }}">{{ number_format($subtotal) }}đ</span>
                            </div>

                            <div class="flex justify-between">
                                <span class="text-gray-600">Phí giao hàng</span>
                                <span id="shipping-fee-display" data-value="{{ $shipping }}">Đang tính...</span>
                            </div>

                            <div id="coupon-discount-row" class="flex justify-between text-green-600 font-semibold {{ $discount > 0 ? '' : 'hidden' }}">
                                <span>Giảm giá (voucher)</span>
                                <span id="coupon-discount-display" data-value="{{ $discount }}">-{{ number_format($discount) }}đ</span>
                            </div>


                            <hr class="border-t border-gray-200">

                            <div class="flex justify-between font-bold text-lg">
                                <span>Tổng cộng</span>
                                <span id="total-amount-display">{{ number_format($total) }}đ</span>
                            </div>
                        </div>

                        <!-- Payment Methods (MOVED) -->

                        <!-- Terms and Place Order Button -->
                        <div class="space-y-4 mt-6">
                            <div class="flex items-center">
                                <input type="checkbox" id="terms" name="terms" class="h-4 w-4 text-orange-500"
                                    >
                                <label for="terms" class="ml-2 text-sm text-gray-600">
                                    Tôi đã đọc và đồng ý với <a href="/terms"
                                        class="text-orange-500 hover:underline">điều khoản và điều kiện</a> của website
                                </label>
                            </div>
                            <button type="submit" class="w-full bg-orange-500 hover:bg-orange-600 text-white font-medium py-3 rounded-lg">
                                Đặt Hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('scripts')
<link href='https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css' rel='stylesheet' />
<script src='https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.js'></script>
<script src='https://npmcdn.com/@turf/turf/turf.min.js'></script>
<style>
.custom-marker {
    cursor: pointer;
}

.custom-marker:hover {
    transform: scale(1.1);
}


@keyframes pulse {
    0% {
        box-shadow: 0 0 0 0 rgba(249, 115, 22, 0.7);
    }
    70% {
        box-shadow: 0 0 0 10px rgba(249, 115, 22, 0);
    }
    100% {
        box-shadow: 0 0 0 0 rgba(249, 115, 22, 0);
    }
}
</style>
<script>
// --- MAPBOX CONFIGURATION ---
mapboxgl.accessToken = '{{ config('services.mapbox.access_token') }}';

// --- MAP INITIALIZATION ---
let checkoutMap = null;
let mapMarker = null;

function initializeMap() {
    const mapContainer = document.getElementById('checkout-map');
    if (!mapContainer) return;

    try {
        checkoutMap = new mapboxgl.Map({
            container: 'checkout-map',
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [105.8194, 21.0227], // Hanoi center
            zoom: 13
        });

        checkoutMap.on('load', function() {
            console.log('Map loaded successfully');
            
            // Add default marker at map center
            const defaultLng = 105.8194;
            const defaultLat = 21.0227;
            
            // Create custom marker element
            const markerElement = document.createElement('div');
            markerElement.className = 'custom-marker';
            markerElement.innerHTML = `
                <div class="relative">
                    <div class="w-8 h-8 bg-orange-500 rounded-full border-4  shadow-lg flex items-center justify-center marker-pulse">
                        <i class="fas fa-map-marker-alt text-white text-lg"></i>
                    </div>
                    <div class="absolute -bottom-1 left-1/2 transform -translate-x-1/2 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-orange-500"></div>
                </div>
            `;
            
            // Add default marker with drag functionality
            mapMarker = new mapboxgl.Marker({
                element: markerElement,
                draggable: true
            })
            .setLngLat([defaultLng, defaultLat])
            .setPopup(new mapboxgl.Popup().setHTML(`
                <div class="text-sm">
                    <p class="font-semibold">Vị trí mặc định</p>
                    <p>Kéo thả hoặc nhấn vào bản đồ để chọn vị trí khác</p>
                </div>
            `))
            .addTo(checkoutMap);
            
            // Handle marker drag event
            mapMarker.on('dragend', function() {
                const lngLat = mapMarker.getLngLat();
                document.getElementById('latitude').value = lngLat.lat;
                document.getElementById('longitude').value = lngLat.lng;
                
                // Update popup with new coordinates
                mapMarker.getPopup().setHTML(`
                    <div class="text-sm">
                        <p class="font-semibold">Vị trí đã chọn</p>
                        <p>Lat: ${lngLat.lat.toFixed(6)}</p>
                        <p>Lng: ${lngLat.lng.toFixed(6)}</p>
                        <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                    </div>
                `);
                
                console.log('Marker dragged to:', { lat: lngLat.lat, lng: lngLat.lng });
            });
            
            // Update default coordinates
            document.getElementById('latitude').value = defaultLat;
            document.getElementById('longitude').value = defaultLng;
        });

        // Add click event to get coordinates
        checkoutMap.on('click', function(e) {
            const lng = e.lngLat.lng;
            const lat = e.lngLat.lat;
            
            // Update hidden inputs
            document.getElementById('latitude').value = lat;
            document.getElementById('longitude').value = lng;
            
            // Remove existing marker
            if (mapMarker) {
                mapMarker.remove();
            }
            
            // Create custom marker element
            const markerElement = document.createElement('div');
            markerElement.className = 'custom-marker';
            markerElement.innerHTML = `
                 <div class="relative">
                     <div class="w-8 h-8 bg-orange-500 rounded-full border-4 border-white shadow-lg flex items-center justify-center marker-pulse">
                         <i class="fas fa-map-marker-alt text-white text-lg"></i>
                     </div>
                     <div class="absolute -bottom-1 left-1/2 transform -translate-x-1/2 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-orange-500"></div>
                 </div>
             `;
            
            // Add new marker with custom icon and drag functionality
            mapMarker = new mapboxgl.Marker({
                element: markerElement,
                draggable: true
            })
            .setLngLat([lng, lat])
            .setPopup(new mapboxgl.Popup().setHTML(`
                <div class="text-sm">
                    <p class="font-semibold">Vị trí đã chọn</p>
                    <p>Lat: ${lat.toFixed(6)}</p>
                    <p>Lng: ${lng.toFixed(6)}</p>
                    <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                </div>
            `))
            .addTo(checkoutMap);
            
            // Handle marker drag event
            mapMarker.on('dragend', function() {
                const lngLat = mapMarker.getLngLat();
                document.getElementById('latitude').value = lngLat.lat;
                document.getElementById('longitude').value = lngLat.lng;
                
                // Update popup with new coordinates
                mapMarker.getPopup().setHTML(`
                    <div class="text-sm">
                        <p class="font-semibold">Vị trí đã chọn</p>
                        <p>Lat: ${lngLat.lat.toFixed(6)}</p>
                        <p>Lng: ${lngLat.lng.toFixed(6)}</p>
                        <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                    </div>
                `);
                
                console.log('Marker dragged to:', { lat: lngLat.lat, lng: lngLat.lng });
            });
            
            console.log('Selected coordinates:', { lat, lng });
        });

        checkoutMap.on('error', function(e) {
            // Silent error handling
        });

    } catch (error) {
        document.getElementById('checkout-map').innerHTML = '<div class="flex items-center justify-center h-full bg-gray-100 text-gray-500">Không thể tải bản đồ. Vui lòng thử lại.</div>';
    }
}

// --- ĐỊA CHỈ: TỰ ĐỘNG LOAD QUẬN/HUYỆN, XÃ/PHƯỜNG ---
document.addEventListener('DOMContentLoaded', function() {
    // Initialize map first
    initializeMap();
    const citySelect = document.getElementById('city');
    const districtSelect = document.getElementById('district');
    const wardSelect = document.getElementById('ward');

    // Chỉ hiển thị Hà Nội
    citySelect.innerHTML = '<option value="Hà Nội" data-code="1" selected>Hà Nội</option>';

    // Khi chọn tỉnh/thành phố, load quận/huyện
    citySelect.addEventListener('change', function() {
        const cityCode = this.selectedOptions[0]?.dataset?.code;
        districtSelect.innerHTML = '<option value="">-- Chọn Quận/Huyện --</option>';
        wardSelect.innerHTML = '<option value="">-- Chọn Xã/Phường --</option>';
        if (!cityCode) return;
        fetch(`https://provinces.open-api.vn/api/p/${cityCode}?depth=2`)
            .then(res => res.json())
            .then(data => {
                data.districts.forEach(d => {
                    districtSelect.innerHTML += `<option value="${d.name}" data-code="${d.code}">${d.name}</option>`;
                });
            });
    });

    // Trigger change event after setting up the listener to load districts
    citySelect.dispatchEvent(new Event('change'));

    // Khi chọn quận/huyện, load xã/phường
    districtSelect.addEventListener('change', function() {
        const districtCode = this.selectedOptions[0]?.dataset?.code;
        wardSelect.innerHTML = '<option value="">-- Chọn Xã/Phường --</option>';
        if (!districtCode) return;
        fetch(`https://provinces.open-api.vn/api/d/${districtCode}?depth=2`)
            .then(res => res.json())
            .then(data => {
                data.wards.forEach(w => {
                    wardSelect.innerHTML += `<option value="${w.name}">${w.name}</option>`;
                });
            });
    });

    // Function to geocode address and update map
    function geocodeAndUpdateMap() {
        const city = citySelect.value;
        const district = districtSelect.value;
        const ward = wardSelect.value;
        const address = document.getElementById('address').value;
        
        if (!district || !ward) return;
        
        let fullAddress = '';
        if (address) fullAddress += address + ', ';
        fullAddress += ward + ', ' + district + ', ' + city;
        
        // Use Mapbox Geocoding API
        const geocodeUrl = `https://api.mapbox.com/geocoding/v5/mapbox.places/${encodeURIComponent(fullAddress)}.json?access_token=${mapboxgl.accessToken}&country=VN&limit=1`;
        
        fetch(geocodeUrl)
            .then(response => response.json())
            .then(data => {
                if (data.features && data.features.length > 0) {
                    const [lng, lat] = data.features[0].center;
                    
                    // Update map center
                    if (checkoutMap) {
                        checkoutMap.flyTo({
                            center: [lng, lat],
                            zoom: 15,
                            duration: 1000
                        });
                        
                        // Remove existing marker
                        if (mapMarker) {
                            mapMarker.remove();
                        }
                        
                        // Create custom marker element
                        const markerElement = document.createElement('div');
                        markerElement.className = 'custom-marker';
                        markerElement.innerHTML = `
                             <div class="relative">
                                 <div class="w-8 h-8 bg-orange-500 rounded-full border-4 border-white shadow-lg flex items-center justify-center marker-pulse">
                                     <i class="fas fa-map-marker-alt text-white text-lg"></i>
                                 </div>
                                 <div class="absolute -bottom-1 left-1/2 transform -translate-x-1/2 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-orange-500"></div>
                             </div>
                         `;
                        
                        // Add new marker with custom icon and drag functionality
                        mapMarker = new mapboxgl.Marker({
                            element: markerElement,
                            draggable: true
                        })
                        .setLngLat([lng, lat])
                        .setPopup(new mapboxgl.Popup().setHTML(`
                            <div class="text-sm">
                                <p class="font-semibold">Địa chỉ tìm thấy</p>
                                <p>${fullAddress}</p>
                                <p class="text-xs text-gray-500 mt-1">Kéo thả hoặc nhấn vào bản đồ để điều chỉnh</p>
                            </div>
                        `))
                        .addTo(checkoutMap);
                        
                        // Handle marker drag event
                        mapMarker.on('dragend', function() {
                            const lngLat = mapMarker.getLngLat();
                            document.getElementById('latitude').value = lngLat.lat;
                            document.getElementById('longitude').value = lngLat.lng;
                            
                            // Update popup with new coordinates
                            mapMarker.getPopup().setHTML(`
                                <div class="text-sm">
                                    <p class="font-semibold">Vị trí đã điều chỉnh</p>
                                    <p>Lat: ${lngLat.lat.toFixed(6)}</p>
                                    <p>Lng: ${lngLat.lng.toFixed(6)}</p>
                                    <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                                </div>
                            `);
                            
                            console.log('Marker dragged to:', { lat: lngLat.lat, lng: lngLat.lng });
                        });
                        
                        // Update coordinates
                        document.getElementById('latitude').value = lat;
                        document.getElementById('longitude').value = lng;
                    }
                }
            })
            .catch(error => {
                // Silent error handling
            });
    }
    
    // Add event listeners for address changes
    districtSelect.addEventListener('change', geocodeAndUpdateMap);
    wardSelect.addEventListener('change', geocodeAndUpdateMap);
    document.getElementById('address').addEventListener('blur', geocodeAndUpdateMap);
});
        // --- SHIPPING CONFIG ---
        const shippingConfig = {
            freeShippingThreshold: {{ config('shipping.free_shipping_threshold', 200000) }},
            baseFee: {{ config('shipping.base_fee', 10000) }},
            feePerKm: {{ config('shipping.fee_per_km', 5000) }},
            maxDistance: {{ config('shipping.max_delivery_distance', 7) }}
        };

        /**
         * Tính phí vận chuyển ở phía client.
         * @param {number} distance - Khoảng cách tính bằng km.
         * @param {number} subtotal - Tổng phụ của đơn hàng.
         * @returns {number} Phí vận chuyển.
         */
        function calculateShippingFee(distance, subtotal) {
            if (subtotal >= shippingConfig.freeShippingThreshold) {
                return 0;
            }
            if (distance > shippingConfig.maxDistance || distance < 0) {
                return -1; // Đánh dấu không hợp lệ
            }
            if (distance === 0) {
                return 0;
            }
            if (distance <= 1) {
                return shippingConfig.baseFee;
            }
            const additionalKms = Math.ceil(distance) - 1;
            return shippingConfig.baseFee + (additionalKms * shippingConfig.feePerKm);
        }
        
        function formatCurrency(number) {
            if (isNaN(number)) return '0đ';
            return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(number);
        }

        document.addEventListener('DOMContentLoaded', function() {
            // --- ELEMENT SELECTORS ---
            const addressComponent = document.getElementById('address-component');
            if (!addressComponent) return;

            const summaryView = document.getElementById('address-summary-view');
            const listView = document.getElementById('address-list-view');
            const showListBtn = document.getElementById('show-address-list-btn');
            const confirmBtn = document.getElementById('confirm-address-btn');
            const cancelChangeBtn = document.getElementById('cancel-change-address-btn');
            const placeOrderBtn = document.querySelector('#checkout-form button[type="submit"]');

            const branchLat = {{ $currentBranch->latitude ?? 'null' }};
            const branchLng = {{ $currentBranch->longitude ?? 'null' }};
            const summaryAddressId = document.getElementById('hidden_address_id')?.value;
            const addressLabels = document.querySelectorAll('.address-option-label');

            // --- UI UPDATE FUNCTIONS ---
            
            function updateTotalsDisplay() {
                const subtotal = parseFloat(document.getElementById('subtotal-display').dataset.value || 0);
                const shippingFee = parseFloat(document.getElementById('shipping-fee-display').dataset.value || 0);
                const couponDiscountEl = document.getElementById('coupon-discount-display');
                const couponDiscount = parseFloat(couponDiscountEl ? couponDiscountEl.dataset.value : 0);

                const total = Math.max(0, subtotal + shippingFee - couponDiscount);
                document.getElementById('total-amount-display').textContent = formatCurrency(total);
            }

            function updateShippingFeeUI(distance) {
                const subtotal = parseFloat(document.getElementById('subtotal-display').dataset.value || 0);
                const shippingFee = calculateShippingFee(distance, subtotal);
                const shippingFeeEl = document.getElementById('shipping-fee-display');

                if (shippingFee >= 0) {
                    shippingFeeEl.dataset.value = shippingFee;
                    shippingFeeEl.textContent = shippingFee > 0 ? formatCurrency(shippingFee) : 'Miễn phí';
                    shippingFeeEl.classList.remove('text-red-500', 'font-semibold');
                } else {
                    shippingFeeEl.dataset.value = 0;
                    shippingFeeEl.textContent = 'Ngoài vùng';
                    shippingFeeEl.classList.add('text-red-500', 'font-semibold');
                }
                updateTotalsDisplay();
            }

            function displaySummaryWarning() {
                const summaryViewDiv = document.querySelector('#address-summary-view .border');
                const existingWarning = document.getElementById('summary-warning');
                if (summaryViewDiv && !existingWarning) {
                    const warningHtml = `
                        <div class="mt-2 p-3 bg-red-50 border-l-4 border-red-500 text-red-700 text-sm rounded-md" id="summary-warning">
                            <p class="font-bold"><i class="fas fa-exclamation-triangle mr-2"></i>Địa chỉ nằm ngoài vùng phục vụ</p>
                            <p>Địa chỉ này ở quá xa chi nhánh. Vui lòng chọn một địa chỉ khác để tiếp tục.</p>
                        </div>`;
                    summaryViewDiv.insertAdjacentHTML('beforeend', warningHtml);
                }
            }

            function removeSummaryWarning() {
                document.getElementById('summary-warning')?.remove();
            }

            function toggleCheckoutButton(enable, title = '') {
                if (placeOrderBtn) {
                    placeOrderBtn.disabled = !enable;
                    placeOrderBtn.classList.toggle('opacity-50', !enable);
                    placeOrderBtn.classList.toggle('cursor-not-allowed', !enable);
                    placeOrderBtn.title = title;
                }
            }

            // --- CORE LOGIC ---
            
            function calculateAllAddressDistances(branchPoint) {
                const maxDistance = shippingConfig.maxDistance;
                addressLabels.forEach(label => {
                    const distanceInfoEl = label.querySelector('.distance-info');
                    if (distanceInfoEl && distanceInfoEl.dataset.distance) return; // Skip if already calculated

                    const lat = parseFloat(label.dataset.latitude);
                    const lng = parseFloat(label.dataset.longitude);
                    const radioInput = label.querySelector('input[type="radio"]');
                    const warningInfoEl = label.querySelector('.warning-info');

                    if (isNaN(lat) || isNaN(lng) || !radioInput || !distanceInfoEl || !warningInfoEl) return;

                    const addressPoint = turf.point([lng, lat]);
                    const distance = turf.distance(branchPoint, addressPoint);

                    distanceInfoEl.textContent = `📍 ${distance.toFixed(1)}km từ chi nhánh`;
                    distanceInfoEl.dataset.distance = distance;
                    distanceInfoEl.classList.remove('hidden');

                    if (distance > maxDistance) {
                        radioInput.disabled = true;
                        label.classList.add('opacity-60', 'cursor-not-allowed');
                        label.classList.remove('hover:bg-gray-50');
                        warningInfoEl.textContent = `Địa chỉ vượt quá ${maxDistance}km.`;
                        warningInfoEl.classList.remove('hidden');
                        label.style.borderColor = '#e5e7eb';
                    }
                });
            }

            function initializeCheckoutPage() {
                if (typeof turf === 'undefined' || !branchLat || !branchLng) {
                    document.getElementById('shipping-fee-display').textContent = 'Lỗi cấu hình';
                    toggleCheckoutButton(false, 'Lỗi cấu hình chi nhánh, không thể đặt hàng.');
                    return;
                }
                
                const branchPoint = turf.point([branchLng, branchLat]);
                
                // 1. Calculate for the selected address IMMEDIATELY
                if (summaryAddressId) {
                    const summaryLabel = document.querySelector(`.address-option-label[data-address-id="${summaryAddressId}"]`);
                    if (summaryLabel) {
                        const lat = parseFloat(summaryLabel.dataset.latitude);
                        const lng = parseFloat(summaryLabel.dataset.longitude);
                        if (!isNaN(lat) && !isNaN(lng)) {
                            const point = turf.point([lng, lat]);
                            const distance = turf.distance(branchPoint, point);
                            
                            const distanceEl = summaryLabel.querySelector('.distance-info');
                            if(distanceEl) distanceEl.dataset.distance = distance; // Store for later
                            
                            updateShippingFeeUI(distance);
                            
                            if (distance > shippingConfig.maxDistance) {
                                displaySummaryWarning();
                                toggleCheckoutButton(false, 'Địa chỉ đã chọn nằm ngoài vùng phục vụ.');
                            }
                        }
                    } else if (addressLabels.length === 0) {
                        updateShippingFeeUI(-1); // No addresses, so invalid
                    }
                } else if ({{ Auth::check() ? 'true' : 'false' }} && addressLabels.length === 0) {
                    updateShippingFeeUI(-1); // Logged in but no addresses
                } else if (!{{ Auth::check() ? 'true' : 'false' }}) {
                    document.getElementById('shipping-fee-display').textContent = 'Nhập địa chỉ';
                }

                // 2. Defer calculation for the rest of the addresses
                setTimeout(() => calculateAllAddressDistances(branchPoint), 50);
            }

            // --- EVENT LISTENERS ---

            if (showListBtn) {
                showListBtn.addEventListener('click', () => {
                    summaryView.classList.add('hidden');
                    listView.classList.remove('hidden');
                });
            }

            if (cancelChangeBtn) {
                cancelChangeBtn.addEventListener('click', () => {
                    listView.classList.add('hidden');
                    summaryView.classList.remove('hidden');
                });
            }

            if (confirmBtn) {
                confirmBtn.addEventListener('click', () => {
                    const selectedRadio = document.querySelector('input[name="selected_address_option"]:checked');
                    if (!selectedRadio) {
                        showToast('Vui lòng chọn một địa chỉ.', 'error'); return;
                    }
                    if (selectedRadio.disabled) {
                        showToast('Địa chỉ này ở quá xa, vui lòng chọn địa chỉ khác.', 'error'); return;
                    }

                    const selectedLabel = selectedRadio.closest('.address-option-label');
                    const data = selectedLabel.dataset;
                    const distance = parseFloat(selectedLabel.querySelector('.distance-info').dataset.distance);

                    // Update summary view
                    document.getElementById('summary-name').textContent = data.fullName;
                    document.getElementById('summary-phone').textContent = `(${data.phoneNumber})`;
                    document.getElementById('summary-address').textContent = data.fullAddress;
                    document.getElementById('summary-default-badge').classList.toggle('hidden', data.isDefault !== 'true');
                    
                    // Update hidden fields
                    document.getElementById('hidden_address_id').value = data.addressId;
                    document.getElementById('hidden_full_name').value = data.fullName;
                    document.getElementById('hidden_phone').value = data.phoneNumber;
                    document.getElementById('hidden_address').value = data.addressLine;
                    document.getElementById('hidden_city').value = data.city;
                    document.getElementById('hidden_district').value = data.district;
                    document.getElementById('hidden_ward').value = data.ward;
                    
                    updateShippingFeeUI(distance); // Recalculate and display the fee
                    
                    // Update UI state
                    if (distance > shippingConfig.maxDistance) {
                        displaySummaryWarning();
                        toggleCheckoutButton(false, 'Địa chỉ đã chọn nằm ngoài vùng phục vụ.');
                    } else {
                        removeSummaryWarning();
                        toggleCheckoutButton(true);
                    }

                    listView.classList.add('hidden');
                    summaryView.classList.remove('hidden');
                    showToast('Đã cập nhật địa chỉ giao hàng.');
                });
            }

            addressLabels.forEach(label => {
                if (label.querySelector('input').checked && !label.querySelector('input').disabled) {
                    label.classList.add('border-orange-300', 'bg-orange-50');
                }
                label.addEventListener('click', (e) => {
                    const radio = label.querySelector('input[type="radio"]');
                    if (radio.disabled) { e.preventDefault(); return; }
                    
                    // Remove border styling from all addresses
                    addressLabels.forEach(l => {
                        l.classList.remove('border-orange-300', 'bg-orange-50');
                        l.classList.add('border-gray-200');
                    });
                    
                    // Add border styling to selected address
                    label.classList.remove('border-gray-200');
                    label.classList.add('border-orange-300', 'bg-orange-50');
                });
            });

            function showToast(message, type = 'success') {
                const toast = document.createElement('div');
                let bgColor = 'bg-green-500';
                if (type === 'error') bgColor = 'bg-red-500';
                
                toast.className = `fixed bottom-4 right-4 px-4 py-2 rounded-lg shadow-lg text-white ${bgColor}`;
                toast.textContent = message; document.body.appendChild(toast);
                setTimeout(() => toast.remove(), 3000);
            }
            
            // Start The Process
            initializeCheckoutPage();
        });
    </script>

    <!-- Add Address Modal -->
    <script>
        // Simple form validation and utilities
        document.addEventListener('DOMContentLoaded', function() {
            // Simple toast notification function
            function showToast(message, type = 'success') {
                const toast = document.createElement('div');
                let bgColor = 'bg-green-500';
                if (type === 'error') bgColor = 'bg-red-500';
                
                toast.className = `fixed bottom-4 right-4 px-4 py-2 rounded-lg shadow-lg text-white z-50 ${bgColor}`;
                toast.textContent = message;
                document.body.appendChild(toast);
                setTimeout(() => toast.remove(), 4000);
            }
            
            // Make showToast available globally
            window.showToast = showToast;
        });
    </script>

    <script>
        // Toast notification function
        function showToast(message, type = 'success') {
            // Create toast element
            const toast = document.createElement('div');
            let bgColor = 'bg-green-500';
            if (type === 'error') bgColor = 'bg-red-500';
            
            toast.className = `fixed top-4 right-4 z-50 px-6 py-3 rounded-lg shadow-lg text-white ${bgColor}`;
            toast.textContent = message;
            
            // Add to page
            document.body.appendChild(toast);
            
            // Remove after 3 seconds
            setTimeout(() => {
                if (toast.parentNode) {
                    toast.parentNode.removeChild(toast);
                }
            }, 3000);
        }
    </script>

    <!-- Add Address Modal -->
    <div id="addAddressModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-lg shadow-xl max-w-2xl w-full mx-4 max-h-[90vh] overflow-y-auto">
            <div class="p-6">
                <div class="flex justify-between items-center mb-4">
                    <h3 class="text-xl font-bold">Thêm địa chỉ mới</h3>
                    <button type="button" id="closeAddAddressModal" class="text-gray-400 hover:text-gray-600">
                        <i class="fas fa-times text-xl"></i>
                    </button>
                </div>
                
                <form id="addAddressForm">
                    @csrf
                    <div class="grid md:grid-cols-2 gap-4">
                        <div>
                            <label for="new_recipient_name" class="block text-sm font-medium text-gray-700 mb-1">Họ và tên người nhận <span class="text-red-500">*</span></label>
                            <input type="text" id="new_recipient_name" name="recipient_name" 
                                class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('recipient_name') border-red-500 @enderror"
                                placeholder="Nhập họ và tên" value="{{ old('recipient_name') }}">
                            @error('recipient_name')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_recipient_name"></div>
                        </div>
                        <div>
                            <label for="new_phone_number" class="block text-sm font-medium text-gray-700 mb-1">Số điện thoại <span class="text-red-500">*</span></label>
                            <input type="tel" id="new_phone_number" name="phone_number" 
                                class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('phone_number') border-red-500 @enderror"
                                placeholder="Nhập số điện thoại" value="{{ old('phone_number') }}">
                            @error('phone_number')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_phone_number"></div>
                        </div>
                        <div>
                            <label for="new_city" class="block text-sm font-medium text-gray-700 mb-1">Tỉnh/Thành phố <span class="text-red-500">*</span></label>
                            <select id="new_city" name="city" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('city') border-red-500 @enderror">
                                <option value="Hà Nội" selected>Hà Nội</option>
                            </select>
                            @error('city')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_city"></div>
                        </div>
                        <div>
                            <label for="new_district" class="block text-sm font-medium text-gray-700 mb-1">Quận/Huyện <span class="text-red-500">*</span></label>
                            <select id="new_district" name="district" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('district') border-red-500 @enderror">
                                <option value="">-- Chọn Quận/Huyện --</option>
                            </select>
                            @error('district')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_district"></div>
                        </div>
                        <div class="md:col-span-1">
                            <label for="new_ward" class="block text-sm font-medium text-gray-700 mb-1">Xã/Phường <span class="text-red-500">*</span></label>
                            <select id="new_ward" name="ward" class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('ward') border-red-500 @enderror">
                                <option value="">-- Chọn Xã/Phường --</option>
                            </select>
                            @error('ward')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_ward"></div>
                        </div>
                        <div class="md:col-span-1 relative">
                            <label for="new_address_line" class="block text-sm font-medium text-gray-700 mb-1">Số nhà, đường <span class="text-red-500">*</span></label>
                            <input type="text" id="new_address_line" name="address_line" 
                                class="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-orange-500 @error('address_line') border-red-500 @enderror"
                                placeholder="Nhập số nhà, tên đường" value="{{ old('address_line') }}" autocomplete="off">
                            <div class="text-xs text-gray-500 mt-1">Nhập địa chỉ sau khi chọn Quận/Huyện và Phường/Xã</div>
                            @error('address_line')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                            <div class="text-red-500 text-xs mt-1 hidden" id="error_address_line"></div>
                        </div>
                        
                        <!-- Map Picker for New Address -->
                        <div class="md:col-span-2 relative mt-4">
                            <label class="block text-sm font-medium text-gray-700 mb-1">Chọn vị trí trên bản đồ</label>
                            <div id="new-address-map" style="height: 300px; border-radius: 8px; margin-bottom: 8px;"></div>
                            <input type="hidden" id="new_latitude" name="latitude">
                            <input type="hidden" id="new_longitude" name="longitude">
                            <div class="text-xs text-gray-500">Nhấn vào bản đồ để chọn vị trí giao hàng chính xác (tùy chọn).</div>
                        </div>
                        
                        <div class="md:col-span-2">
                            <label class="flex items-center">
                                <input type="checkbox" id="new_is_default" name="is_default" class="h-4 w-4 text-orange-600 focus:ring-orange-500 border-gray-300 rounded">
                                <span class="ml-2 text-sm text-gray-700">Đặt làm địa chỉ mặc định</span>
                            </label>
                        </div>
                    </div>
                    
                    <div class="flex justify-end gap-3 mt-6 pt-4 border-t">
                        <button type="button" id="cancelAddAddress" class="px-5 py-2 rounded border border-gray-300 text-gray-700 bg-white hover:bg-gray-100">
                            Hủy
                        </button>
                        <button type="submit" id="saveAddressBtn" class="px-5 py-2 rounded bg-orange-500 text-white font-semibold hover:bg-orange-600">
                            <span id="saveAddressText">Lưu địa chỉ</span>
                            <span id="saveAddressLoading" class="hidden">
                                <i class="fas fa-spinner fa-spin mr-2"></i>Đang lưu...
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Add Address Modal JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const addAddressModal = document.getElementById('addAddressModal');
            const openAddAddressModalBtn = document.getElementById('openAddAddressModalBtn');
            const closeAddAddressModal = document.getElementById('closeAddAddressModal');
            const cancelAddAddress = document.getElementById('cancelAddAddress');
            const addAddressForm = document.getElementById('addAddressForm');
            const saveAddressBtn = document.getElementById('saveAddressBtn');
            const saveAddressText = document.getElementById('saveAddressText');
            const saveAddressLoading = document.getElementById('saveAddressLoading');
            
            let newAddressMap = null;
            let newAddressMarker = null;
            
            // Initialize new address form dropdowns
            function initializeNewAddressDropdowns() {
                const newCitySelect = document.getElementById('new_city');
                const newDistrictSelect = document.getElementById('new_district');
                const newWardSelect = document.getElementById('new_ward');
                
                // Chỉ hiển thị Hà Nội
                newCitySelect.innerHTML = '<option value="Hà Nội" data-code="1" selected>Hà Nội</option>';

                // When city changes, load districts
                newCitySelect.addEventListener('change', function() {
                    const cityCode = this.selectedOptions[0]?.dataset?.code;
                    newDistrictSelect.innerHTML = '<option value="">-- Chọn Quận/Huyện --</option>';
                    newWardSelect.innerHTML = '<option value="">-- Chọn Xã/Phường --</option>';
                    if (!cityCode) return;
                    fetch(`https://provinces.open-api.vn/api/p/${cityCode}?depth=2`)
                        .then(res => res.json())
                        .then(data => {
                            data.districts.forEach(d => {
                                newDistrictSelect.innerHTML += `<option value="${d.name}" data-code="${d.code}">${d.name}</option>`;
                            });
                        });
                });
                
                // Trigger change event after event listener is set up
                newCitySelect.dispatchEvent(new Event('change'));

                // When district changes, load wards
                newDistrictSelect.addEventListener('change', function() {
                    const districtCode = this.selectedOptions[0]?.dataset?.code;
                    newWardSelect.innerHTML = '<option value="">-- Chọn Xã/Phường --</option>';
                    if (!districtCode) return;
                    fetch(`https://provinces.open-api.vn/api/d/${districtCode}?depth=2`)
                        .then(res => res.json())
                        .then(data => {
                            data.wards.forEach(w => {
                                newWardSelect.innerHTML += `<option value="${w.name}">${w.name}</option>`;
                            });
                        });
                });

                // Add geocoding when address changes
                newDistrictSelect.addEventListener('change', geocodeNewAddress);
                newWardSelect.addEventListener('change', geocodeNewAddress);
                document.getElementById('new_address_line').addEventListener('blur', geocodeNewAddress);
            }
            
            // Geocode new address and update map
            function geocodeNewAddress() {
                const city = document.getElementById('new_city').value;
                const district = document.getElementById('new_district').value;
                const ward = document.getElementById('new_ward').value;
                const address = document.getElementById('new_address_line').value;
                
                if (!district || !ward) return;
                
                let fullAddress = '';
                if (address) fullAddress += address + ', ';
                fullAddress += ward + ', ' + district + ', ' + city;
                
                // Use Mapbox Geocoding API
                const geocodeUrl = `https://api.mapbox.com/geocoding/v5/mapbox.places/${encodeURIComponent(fullAddress)}.json?access_token=${mapboxgl.accessToken}&country=VN&limit=1`;
                
                fetch(geocodeUrl)
                    .then(response => response.json())
                    .then(data => {
                        if (data.features && data.features.length > 0) {
                            const [lng, lat] = data.features[0].center;
                            
                            // Update map center
                            if (newAddressMap) {
                                newAddressMap.flyTo({
                                    center: [lng, lat],
                                    zoom: 15,
                                    duration: 1000
                                });
                                
                                // Remove existing marker
                                if (newAddressMarker) {
                                    newAddressMarker.remove();
                                }
                                
                                // Create custom marker element
                                const markerElement = document.createElement('div');
                                markerElement.className = 'custom-marker';
                                markerElement.innerHTML = `
                                     <div class="relative">
                                         <div class="w-8 h-8 bg-orange-500 rounded-full border-4 border-white shadow-lg flex items-center justify-center marker-pulse">
                                             <i class="fas fa-map-marker-alt text-white text-lg"></i>
                                         </div>
                                         <div class="absolute -bottom-1 left-1/2 transform -translate-x-1/2 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-orange-500"></div>
                                     </div>
                                 `;
                                
                                // Add new marker with custom icon and drag functionality
                                newAddressMarker = new mapboxgl.Marker({
                                    element: markerElement,
                                    draggable: true
                                })
                                .setLngLat([lng, lat])
                                .setPopup(new mapboxgl.Popup().setHTML(`
                                    <div class="text-sm">
                                        <p class="font-semibold">Địa chỉ tìm thấy</p>
                                        <p>${fullAddress}</p>
                                        <p class="text-xs text-gray-500 mt-1">Kéo thả hoặc nhấn vào bản đồ để điều chỉnh</p>
                                    </div>
                                `))
                                .addTo(newAddressMap);
                                
                                // Handle marker drag event
                                newAddressMarker.on('dragend', function() {
                                    const lngLat = newAddressMarker.getLngLat();
                                    document.getElementById('new_latitude').value = lngLat.lat;
                                    document.getElementById('new_longitude').value = lngLat.lng;
                                    
                                    // Update popup with new coordinates
                                    newAddressMarker.getPopup().setHTML(`
                                        <div class="text-sm">
                                            <p class="font-semibold">Vị trí đã điều chỉnh</p>
                                            <p>Lat: ${lngLat.lat.toFixed(6)}</p>
                                            <p>Lng: ${lngLat.lng.toFixed(6)}</p>
                                            <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                                        </div>
                                    `);
                                });
                                
                                // Update coordinates
                                document.getElementById('new_latitude').value = lat;
                                document.getElementById('new_longitude').value = lng;
                                
                                // Hide coordinate error
                                document.getElementById('error_coordinates').classList.add('hidden');
                            }
                        }
                    })
                    .catch(error => {
                        console.error('Geocoding error:', error);
                    });
            }
            
            // Check if new address is within service area
            
            // Initialize map for new address
            function initializeNewAddressMap() {
                if (newAddressMap) {
                    newAddressMap.remove();
                }
                
                // Default to Hanoi center
                const defaultLat = 21.0285;
                const defaultLng = 105.8542;
                
                newAddressMap = new mapboxgl.Map({
                    container: 'new-address-map',
                    style: 'mapbox://styles/mapbox/streets-v11',
                    center: [defaultLng, defaultLat],
                    zoom: 13
                });
                
                // Add click event to map
                newAddressMap.on('click', function(e) {
                    const lat = e.lngLat.lat;
                    const lng = e.lngLat.lng;
                    
                    // Remove existing marker
                    if (newAddressMarker) {
                        newAddressMarker.remove();
                    }
                    
                    // Create custom marker element
                    const markerElement = document.createElement('div');
                    markerElement.className = 'custom-marker';
                    markerElement.innerHTML = `
                         <div class="relative">
                             <div class="w-8 h-8 bg-orange-500 rounded-full border-4 border-white shadow-lg flex items-center justify-center marker-pulse">
                                 <i class="fas fa-map-marker-alt text-white text-lg"></i>
                             </div>
                             <div class="absolute -bottom-1 left-1/2 transform -translate-x-1/2 w-0 h-0 border-l-4 border-r-4 border-t-4 border-transparent border-t-orange-500"></div>
                         </div>
                     `;
                    
                    // Add new marker
                    newAddressMarker = new mapboxgl.Marker({
                        element: markerElement,
                        draggable: true
                    })
                    .setLngLat([lng, lat])
                    .setPopup(new mapboxgl.Popup().setHTML(`
                        <div class="text-sm">
                            <p class="font-semibold">Vị trí đã chọn</p>
                            <p>Lat: ${lat.toFixed(6)}</p>
                            <p>Lng: ${lng.toFixed(6)}</p>
                            <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                        </div>
                    `))
                    .addTo(newAddressMap);
                    
                    // Handle marker drag event
                    newAddressMarker.on('dragend', function() {
                        const lngLat = newAddressMarker.getLngLat();
                        document.getElementById('new_latitude').value = lngLat.lat;
                        document.getElementById('new_longitude').value = lngLat.lng;
                        
                        // Update popup with new coordinates
                        newAddressMarker.getPopup().setHTML(`
                            <div class="text-sm">
                                <p class="font-semibold">Vị trí đã điều chỉnh</p>
                                <p>Lat: ${lngLat.lat.toFixed(6)}</p>
                                <p>Lng: ${lngLat.lng.toFixed(6)}</p>
                                <p class="text-xs text-gray-500 mt-1">Có thể kéo thả để điều chỉnh</p>
                            </div>
                        `);
                    });
                    
                    // Update hidden fields
                    document.getElementById('new_latitude').value = lat;
                    document.getElementById('new_longitude').value = lng;
                });
            }
            
            // Open modal
            if (openAddAddressModalBtn) {
                openAddAddressModalBtn.addEventListener('click', function() {
                    addAddressModal.classList.remove('hidden');
                    addAddressModal.classList.add('flex');
                    
                    // Initialize map and dropdowns after modal is shown
                    setTimeout(() => {
                        initializeNewAddressMap();
                        initializeNewAddressDropdowns();
                    }, 100);
                });
            }
            
            // Close modal functions
            function closeModal() {
                addAddressModal.classList.add('hidden');
                addAddressModal.classList.remove('flex');
                addAddressForm.reset();
                clearErrors();
                
                // Re-enable submit button
                const submitBtn = document.querySelector('#add-address-modal button[type="submit"]');
                if (submitBtn) {
                    submitBtn.disabled = false;
                    submitBtn.classList.remove('opacity-50', 'cursor-not-allowed');
                    submitBtn.title = '';
                }
                
                // Clean up map
                if (newAddressMap) {
                    newAddressMap.remove();
                    newAddressMap = null;
                }
                if (newAddressMarker) {
                    newAddressMarker = null;
                }
            }
            
            closeAddAddressModal.addEventListener('click', closeModal);
            cancelAddAddress.addEventListener('click', closeModal);
            
            // Close modal when clicking outside
            addAddressModal.addEventListener('click', function(e) {
                if (e.target === addAddressModal) {
                    closeModal();
                }
            });
            
            // Clear error messages
            function clearErrors() {
                const errorElements = addAddressModal.querySelectorAll('[id^="error_"]');
                errorElements.forEach(el => {
                    el.classList.add('hidden');
                    el.textContent = '';
                });
            }
            
            // Show error messages
            function showErrors(errors) {
                clearErrors();
                for (const [field, messages] of Object.entries(errors)) {
                    const errorElement = document.getElementById(`error_${field}`);
                    if (errorElement) {
                        errorElement.textContent = messages[0];
                        errorElement.classList.remove('hidden');
                        
                        // Add red border to input field
                        const inputElement = document.getElementById(`new_${field}`);
                        if (inputElement) {
                            inputElement.classList.add('border-red-500');
                            inputElement.classList.remove('border-gray-300');
                        }
                    }
                }
            }
            
            // Show single field error
            function showFieldError(fieldName, message) {
                const errorElement = document.getElementById(`error_${fieldName}`);
                const inputElement = document.getElementById(`new_${fieldName}`);
                
                if (errorElement) {
                    errorElement.textContent = message;
                    errorElement.classList.remove('hidden');
                }
                
                if (inputElement) {
                    inputElement.classList.add('border-red-500');
                    inputElement.classList.remove('border-gray-300');
                }
            }
            
            // Clear single field error
            function clearFieldError(fieldName) {
                const errorElement = document.getElementById(`error_${fieldName}`);
                const inputElement = document.getElementById(`new_${fieldName}`);
                
                if (errorElement) {
                    errorElement.textContent = '';
                    errorElement.classList.add('hidden');
                }
                
                if (inputElement) {
                    inputElement.classList.remove('border-red-500');
                    inputElement.classList.add('border-gray-300');
                }
            }
            
            // Real-time validation function
            function validateField(fieldName, value) {
                switch(fieldName) {
                    case 'recipient_name':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Họ và tên người nhận là bắt buộc');
                            return false;
                        }
                        break;
                    case 'phone_number':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Số điện thoại là bắt buộc');
                            return false;
                        }
                        if (!/^[0-9]{10,11}$/.test(value.replace(/\s/g, ''))) {
                            showFieldError(fieldName, 'Số điện thoại không hợp lệ');
                            return false;
                        }
                        break;
                    case 'city':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Tỉnh/Thành phố là bắt buộc');
                            return false;
                        }
                        break;
                    case 'district':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Quận/Huyện là bắt buộc');
                            return false;
                        }
                        break;
                    case 'ward':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Xã/Phường là bắt buộc');
                            return false;
                        }
                        break;
                    case 'address_line':
                        if (!value || value.trim() === '') {
                            showFieldError(fieldName, 'Số nhà, đường là bắt buộc');
                            return false;
                        }
                        break;
                }
                
                clearFieldError(fieldName);
                return true;
            }
            
            // Handle form submission
            addAddressForm.addEventListener('submit', async function(e) {
                e.preventDefault();
                
                // Validate all required fields before submission
                let hasErrors = false;
                const requiredFields = ['recipient_name', 'phone_number', 'city', 'district', 'ward', 'address_line'];
                
                requiredFields.forEach(fieldName => {
                    const inputElement = document.getElementById(`new_${fieldName}`);
                    if (inputElement && !validateField(fieldName, inputElement.value)) {
                        hasErrors = true;
                    }
                });
                
                if (hasErrors) {
                    return;
                }
                
                // Show loading state
                saveAddressBtn.disabled = true;
                saveAddressText.classList.add('hidden');
                saveAddressLoading.classList.remove('hidden');
                
                try {
                    const formData = new FormData(addAddressForm);
                    
                    // Explicitly handle checkbox value
                    const isDefaultCheckbox = document.getElementById('new_is_default');
                    if (isDefaultCheckbox.checked) {
                        formData.set('is_default', '1');
                    } else {
                        formData.delete('is_default'); // Remove if not checked
                    }
                    
                    const response = await fetch('{{ route("customer.profile.addresses.store") }}', {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                        }
                    });
                    
                    const result = await response.json();
                    
                    if (result.success) {
                        showToast('Địa chỉ đã được thêm thành công!', 'success');
                        
                        // Add new address to the list dynamically
                        addNewAddressToList(result.data);
                        
                        // Close modal and reset form
                        closeModal();
                        
                        // If this is the first address, show the address component
                        const addressComponent = document.getElementById('address-component');
                        if (addressComponent && addressComponent.style.display === 'none') {
                            addressComponent.style.display = 'block';
                            // Hide the manual form if it exists
                            const manualForm = document.querySelector('.bg-white.rounded-lg.shadow-sm.p-6.mb-6:has(#full_name)');
                            if (manualForm) {
                                manualForm.style.display = 'none';
                            }
                        }
                        
                    } else {
                        if (result.errors) {
                            showErrors(result.errors);
                        } else {
                            showToast(result.message || 'Có lỗi xảy ra khi thêm địa chỉ', 'error');
                        }
                    }
                } catch (error) {
                    console.error('Error:', error);
                    showToast('Có lỗi xảy ra khi thêm địa chỉ', 'error');
                } finally {
                    // Hide loading state
                    saveAddressBtn.disabled = false;
                    saveAddressText.classList.remove('hidden');
                    saveAddressLoading.classList.add('hidden');
                }
            });

            // Function to add new address to the list
            function addNewAddressToList(address) {
                const addressListContainer = document.getElementById('address-list-container');
                const addressSummaryView = document.getElementById('address-summary-view');
                
                if (!addressListContainer) return;
                
                // Create full address string
                const fullAddress = `${address.address_line}, ${address.ward}, ${address.district}, ${address.city}`;
                
                // Determine border class based on default status
                const borderClass = address.is_default ? 'border-orange-300 bg-orange-50' : 'border-gray-200';
                
                // Create new address HTML
                const newAddressHTML = `
                    <label for="address-radio-${address.id}" class="address-option-label flex items-start p-3 ${borderClass} rounded-lg cursor-pointer hover:bg-gray-50 transition-all"
                        data-address-id="${address.id}"
                        data-full-name="${address.recipient_name}"
                        data-phone-number="${address.phone_number}"
                        data-full-address="${fullAddress}"
                        data-is-default="${address.is_default ? 'true' : 'false'}"
                        data-city="${address.city}"
                        data-district="${address.district}"
                        data-ward="${address.ward}"
                        data-address-line="${address.address_line}"
                        data-latitude="${address.latitude || ''}"
                        data-longitude="${address.longitude || ''}">
                        <span class="text-gray-400 mr-4 mt-1"><i class="fas fa-map-marker-alt"></i></span>
                        <div class="flex-grow">
                            <div class="font-semibold">
                                <span>${address.recipient_name}</span>
                                <span class="font-normal">(${address.phone_number})</span>
                                ${address.is_default ? '<span class="ml-2 border border-orange-500 text-orange-500 px-2 py-0.5 rounded text-xs font-medium bg-white">Mặc Định</span>' : ''}
                            </div>
                            <div class="text-sm text-gray-700">${fullAddress}</div>
                            <div class="address-meta mt-2 text-sm">
                                <span class="distance-info text-blue-600 font-medium hidden"></span>
                                <span class="warning-info text-red-600 font-medium hidden"></span>
                            </div>
                        </div>
                        <input type="radio" name="selected_address_option" id="address-radio-${address.id}" value="${address.id}" class="form-radio h-5 w-5 text-orange-600 ml-4 mt-1" ${address.is_default ? 'checked' : ''}>
                    </label>
                `;
                
                // If this is the default address, handle styling updates
                if (address.is_default) {
                    console.log('Processing default address, removing styling from existing addresses');
                    
                    // Remove default styling and badges from other addresses
                    const existingAddresses = addressListContainer.querySelectorAll('.address-option-label');
                    console.log('Found existing addresses:', existingAddresses.length);
                    
                    existingAddresses.forEach(addressLabel => {
                        console.log('Processing existing address:', addressLabel);
                        
                        // Remove default badge - use a more specific approach
                        const defaultBadges = addressLabel.querySelectorAll('span');
                        defaultBadges.forEach(badge => {
                            if (badge.textContent.trim() === 'Mặc Định') {
                                console.log('Removing default badge:', badge);
                                badge.remove();
                            }
                        });
                        
                        // Remove default border styling
                        console.log('Before removing classes:', addressLabel.className);
                        addressLabel.classList.remove('border-orange-300', 'bg-orange-50');
                        addressLabel.classList.add('border-gray-200');
                        console.log('After removing classes:', addressLabel.className);
                        
                        // Update data attribute
                        addressLabel.setAttribute('data-is-default', 'false');
                    });
                    
                    // Uncheck other radio buttons
                    const existingRadios = addressListContainer.querySelectorAll('input[type="radio"]');
                    existingRadios.forEach(radio => radio.checked = false);
                    
                    // Add new address at the top
                    addressListContainer.insertAdjacentHTML('afterbegin', newAddressHTML);
                    console.log('Added new default address at the top');
                    
                    // Update summary view with new default address
                    updateAddressSummary(address, fullAddress);
                } else {
                    // Add new address at the end
                    addressListContainer.insertAdjacentHTML('beforeend', newAddressHTML);
                    console.log('Added new non-default address at the end');
                }
                
                // Add event listener to the new address option
                const newAddressLabel = addressListContainer.querySelector(`label[data-address-id="${address.id}"]`);
                if (newAddressLabel) {
                    newAddressLabel.addEventListener('click', function(e) {
                        const radio = this.querySelector('input[type="radio"]');
                        if (radio && radio.disabled) { 
                            e.preventDefault(); 
                            return; 
                        }
                        
                        // Remove border styling from all addresses
                        const allAddressLabels = addressListContainer.querySelectorAll('.address-option-label');
                        allAddressLabels.forEach(l => {
                            l.classList.remove('border-orange-300', 'bg-orange-50');
                            l.classList.add('border-gray-200');
                        });
                        
                        // Add border styling to selected address
                        this.classList.remove('border-gray-200');
                        this.classList.add('border-orange-300', 'bg-orange-50');
                        
                        // Update radio button selection
                        if (radio) {
                            radio.checked = true;
                        }
                    });
                }
            }
                        
            
            // Function to update address summary
            function updateAddressSummary(address, fullAddress) {
                const summaryName = document.getElementById('summary-name');
                const summaryPhone = document.getElementById('summary-phone');
                const summaryAddress = document.getElementById('summary-address');
                const summaryDefaultBadge = document.getElementById('summary-default-badge');
                
                // Update hidden fields
                document.getElementById('hidden_address_id').value = address.id;
                document.getElementById('hidden_full_name').value = address.recipient_name;
                document.getElementById('hidden_phone').value = address.phone_number;
                document.getElementById('hidden_address').value = address.address_line;
                document.getElementById('hidden_city').value = address.city;
                document.getElementById('hidden_district').value = address.district;
                document.getElementById('hidden_ward').value = address.ward;
                
                // Update summary display
                if (summaryName) summaryName.textContent = address.recipient_name;
                if (summaryPhone) summaryPhone.textContent = `(${address.phone_number})`;
                if (summaryAddress) summaryAddress.textContent = fullAddress;
                if (summaryDefaultBadge) {
                    if (address.is_default) {
                        summaryDefaultBadge.classList.remove('hidden');
                    } else {
                        summaryDefaultBadge.classList.add('hidden');
                    }
                }
            }
            

        });
    </script>

    <!-- Disable Pusher on Checkout Page -->
    <script>
        // Completely disable Pusher on checkout page to prevent connection errors
        (function() {
            // Override Pusher constructor to prevent initialization
            if (typeof window.Pusher !== 'undefined') {
                const OriginalPusher = window.Pusher;
                window.Pusher = function() {
                    // Return a mock Pusher object that does nothing
                    return {
                        subscribe: function() {
                            return {
                                bind: function() {},
                                unbind: function() {},
                                trigger: function() {}
                            };
                        },
                        unsubscribe: function() {},
                        disconnect: function() {},
                        connection: {
                            bind: function() {},
                            unbind: function() {},
                            state: 'disconnected'
                        }
                    };
                };
                // Copy static properties
                Object.keys(OriginalPusher).forEach(key => {
                    window.Pusher[key] = OriginalPusher[key];
                });
                window.Pusher.logToConsole = false;
            }
            
            // Override console methods to filter Pusher errors
            const originalConsoleError = console.error;
            const originalConsoleWarn = console.warn;
            const originalConsoleLog = console.log;
            
            function filterPusherMessages(...args) {
                const message = args.join(' ').toLowerCase();
                return message.includes('pusher') || 
                       message.includes('sockjs') || 
                       message.includes('websocket') || 
                       message.includes('net::err_failed') ||
                       message.includes('cors policy') ||
                       message.includes('access-control-allow-origin') ||
                       message.includes('xhr') ||
                       message.includes('http_request.ts') ||
                       message.includes('transport_connection') ||
                       message.includes('strategy.ts');
            }
            
            console.error = function(...args) {
                if (!filterPusherMessages(...args)) {
                    originalConsoleError.apply(console, args);
                }
            };
            
            console.warn = function(...args) {
                if (!filterPusherMessages(...args)) {
                    originalConsoleWarn.apply(console, args);
                }
            };
            
            console.log = function(...args) {
                if (!filterPusherMessages(...args)) {
                    originalConsoleLog.apply(console, args);
                }
            };
            
            // Handle unhandled promise rejections
            window.addEventListener('unhandledrejection', function(event) {
                const reason = event.reason ? event.reason.toString().toLowerCase() : '';
                if (reason.includes('pusher') || 
                    reason.includes('sockjs') || 
                    reason.includes('websocket') ||
                    reason.includes('cors') ||
                    reason.includes('net::err_failed')) {
                    event.preventDefault();
                    return;
                }
            });
            
            // Handle regular errors
            window.addEventListener('error', function(event) {
                const message = event.message ? event.message.toLowerCase() : '';
                const filename = event.filename ? event.filename.toLowerCase() : '';
                if (message.includes('pusher') || 
                    message.includes('sockjs') || 
                    message.includes('websocket') ||
                    filename.includes('pusher') ||
                    filename.includes('sockjs')) {
                    event.preventDefault();
                    return;
                }
            });
        })();
    </script>
@endsection
