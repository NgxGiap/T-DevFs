@extends('layouts/admin/contentLayoutMaster')
@section('title', 'Thêm Banner')
@section('content')
    <div class="container mx-auto p-4 sm:p-6 lg:p-8 bg-white dark:bg-gray-800 shadow-xl rounded-lg">
        <h1 class="text-3xl font-bold text-gray-800 dark:text-white mb-6 pb-3 border-b border-gray-200 dark:border-gray-700">
            Thêm Banner Mới</h1>

        <form class="space-y-6" action="{{ route('admin.banners.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div>
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="title">Tiêu đề
                    banner</label>
                <input
                    class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('title') border-red-500 @enderror"
                    type="text" id="title" name="title" value="{{ old('title') }}">
                @error('title')
                    <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                @enderror
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">Ảnh banner</label>

                <div class="flex border-b border-gray-200 dark:border-gray-700 mb-3">
                    <button type="button"
                        class="banner-form-tab px-4 py-2 -mb-px font-semibold text-gray-600 dark:text-gray-300 border-b-2 border-transparent hover:border-indigo-500 focus:outline-none active"
                        data-tab="upload">Upload ảnh</button>
                    <button type="button"
                        class="banner-form-tab px-4 py-2 font-semibold text-gray-600 dark:text-gray-300 border-b-2 border-transparent hover:border-indigo-500 focus:outline-none"
                        data-tab="link">Nhập link ảnh</button>
                </div>

                <div class="banner-form-tab-content active" data-tab-content="upload">
                    <div class="relative">
                        <label
                            class="w-full flex flex-col items-center px-4 py-6 bg-white dark:bg-gray-700 text-indigo-600 dark:text-indigo-400 rounded-lg shadow-lg tracking-wide uppercase border border-indigo-600 dark:border-indigo-400 cursor-pointer hover:bg-indigo-600 dark:hover:bg-indigo-500 hover:text-white dark:hover:text-gray-100 transition-colors duration-200">
                            <svg class="w-8 h-8" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path
                                    d="M16.88 9.1A4 4 0 0 1 16 17H5a5 5 0 0 1-1-9.9V7a3 3 0 0 1 4.52-2.59A4.98 4.98 0 0 1 17 8c0 .38-.04.74-.12 1.1zM11 11h3l-4-4-4 4h3v3h2v-3z" />
                            </svg>
                            <span class="mt-2 text-base leading-normal">Chọn file ảnh</span>
                            <input class="hidden @error('image_path') border-red-500 @enderror" type="file"
                                id="image_path" name="image_path" accept="image/*">
                        </label>
                        @error('image_path')
                            <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                        @enderror
                    </div>
                    <div
                        class="mt-4 p-4 border border-dashed border-gray-300 dark:border-gray-600 rounded-md flex flex-col items-center justify-center min-h-[150px]">
                        <img class="max-w-full max-h-[300px] object-contain hidden" id="image-preview">
                        <div class="text-gray-500 dark:text-gray-400" id="preview-placeholder">Xem trước ảnh banner</div>
                    </div>
                </div>

                <div class="banner-form-tab-content hidden" data-tab-content="link">
                    <input
                        class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('image_link') border-red-500 @enderror"
                        type="url" id="image_link" name="image_link" placeholder="Nhập link ảnh"
                        value="{{ old('image_link') }}">
                    @error('image_link')
                        <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                    @enderror
                    <div
                        class="mt-4 p-4 border border-dashed border-gray-300 dark:border-gray-600 rounded-md flex flex-col items-center justify-center min-h-[150px]">
                        <img class="max-w-full max-h-[300px] object-contain hidden" id="link-preview">
                        <div class="text-gray-500 dark:text-gray-400" id="link-placeholder">Xem trước ảnh từ link</div>
                    </div>
                </div>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="description">Mô tả
                    banner</label>
                <textarea
                    class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm min-h-[100px] resize-y text-gray-900 dark:text-gray-100 @error('description') border-red-500 @enderror"
                    id="description" name="description">{{ old('description') }}</textarea>
                @error('description')
                    <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                @enderror
            </div>

            <div x-data="{ query: '', products: [], selectedProduct: null }" class="relative" @click.outside="products = []">
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Link Sản Phẩm
                </label>
                <input type="text" 
                       x-model="query"
                       @input.debounce.300ms="fetch(`{{ route('admin.banners.search.product') }}?q=${query}`)
                           .then(res => res.json())
                           .then(data => products = data)"
                       placeholder="Nhập tên sản phẩm..."
                       class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:ring-indigo-500 focus:border-indigo-500 text-gray-900 dark:text-gray-100">
            
                <!-- Dropdown sản phẩm -->
                <ul x-show="query && products.length" class="absolute z-10 mt-1 w-full bg-white dark:bg-gray-800 border border-gray-300 dark:border-gray-600 rounded-md shadow-lg max-h-60 overflow-auto">
                    <template x-for="product in products" :key="product.id">
                        <li @click="selectedProduct = product; query = product.name; products = []"
                            class="px-4 py-2 hover:bg-indigo-100 dark:hover:bg-indigo-600 hover:cursor-pointer">
                            <span x-text="product.name"></span>
                        </li>
                    </template>
                </ul>
                
                <!-- Input ẩn để lưu link sản phẩm -->
                <input type="hidden" name="link" :value="selectedProduct ? `/shop/products/show/${selectedProduct.id}` : ''">
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="position">Vị trí hiển
                    thị (trên trang)</label>
                <select
                    class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('position') border-red-500 @enderror"
                    id="position" name="position">
                    <option value="homepage" {{ old('position') == 'homepage' ? 'selected' : '' }}>Trang chủ (Homepage)
                    </option>
                    <option value="footers" {{ old('position') == 'footers' ? 'selected' : '' }}>Chân trang (Footers)
                    </option>
                    <option value="promotions" {{ old('position') == 'promotions' ? 'selected' : '' }}>Khuyến mãi
                        (Promotions)</option>
                    <option value="menu" {{ old('position') == 'menu' ? 'selected' : '' }}>Menu</option>
                    <option value="branch" {{ old('position') == 'branch' ? 'selected' : '' }}>Chi nhánh (Branch)</option>
                    <option value="abouts" {{ old('position') == 'abouts' ? 'selected' : '' }}>Giới thiệu (Abouts)</option>
                    <option value="supports" {{ old('position') == 'supports' ? 'selected' : '' }}>Hỗ trợ (Supports)
                    </option> {{-- Changed from suports to supports for consistency --}}
                    <option value="contacts" {{ old('position') == 'contacts' ? 'selected' : '' }}>Liên hệ (Contacts)
                    </option>
                </select>
                @error('position')
                    <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                @enderror
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="is_active">Trạng
                        thái hiển thị</label>
                    <select
                        class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('is_active') border-red-500 @enderror"
                        id="is_active" name="is_active">
                        <option value="1" {{ old('is_active', '1') == '1' ? 'selected' : '' }}>Hiển thị</option>
                        <option value="0" {{ old('is_active') == '0' ? 'selected' : '' }}>Ẩn</option>
                    </select>
                    @error('is_active')
                        <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="order">Thứ tự
                        hiển thị</label>
                    <input type="number"
                        class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('order') border-red-500 @enderror"
                        id="order" name="order" value="{{ old('order', 0) }}">
                    @error('order')
                        <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                    @enderror
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                    <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="start_at">Thời
                        gian bắt đầu hiển thị</label>
                    <input
                        class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('start_at') border-red-500 @enderror"
                        type="date" id="start_at" name="start_at" value="{{ old('start_at') }}">
                    @error('start_at')
                        <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1" for="end_at">Thời
                        gian kết thúc hiển thị</label>
                    <input
                        class="mt-1 block w-full px-3 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm text-gray-900 dark:text-gray-100 @error('end_at') border-red-500 @enderror"
                        type="date" id="end_at" name="end_at" value="{{ old('end_at') }}">
                    @error('end_at')
                        <span class="text-sm text-red-600 dark:text-red-400 mt-1">{{ $message }}</span>
                    @enderror
                </div>
            </div>

            <button
                class="w-full sm:w-auto inline-flex justify-center items-center px-6 py-3 border border-transparent text-base font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:bg-indigo-500 dark:hover:bg-indigo-600 dark:focus:ring-offset-gray-800 transition-colors duration-200"
                type="submit">Lưu Banner</button>
        </form>
    </div>
@endsection

{{-- Removed all <style> tags and custom CSS --}}
<script src="//unpkg.com/alpinejs" defer></script>
<script>
    document.addEventListener('DOMContentLoaded', function(e) {
        e.preventDefault();
        // Tab switching
        const tabs = document.querySelectorAll('.banner-form-tab');
        const tabContents = document.querySelectorAll('.banner-form-tab-content');

        tabs.forEach(tab => {
            tab.addEventListener('click', function() {
                const tabName = this.getAttribute('data-tab');

                // Update active tab button styling
                tabs.forEach(t => t.classList.remove('active'));
                this.classList.add('active');

                // Update visible tab content
                tabContents.forEach(content => {
                    content.classList.remove('active');
                    content.classList.add('hidden');
                });

                const activeContent = document.querySelector(
                    `.banner-form-tab-content[data-tab-content="${tabName}"]`);
                if (activeContent) {
                    activeContent.classList.add('active');
                    activeContent.classList.remove('hidden');
                }
            });
        });

        // Handle form submission
        const bannerForm = document.querySelector('form[action="{{ route('admin.banners.store') }}"]');
        if (bannerForm) {
            bannerForm.addEventListener('submit', function(e) {
                const activeTabButton = document.querySelector('.banner-form-tab.active');
                const imagePathInput = document.getElementById('image_path');
                const imageLinkInput = document.getElementById('image_link');

                if (activeTabButton && imagePathInput && imageLinkInput) {
                    const activeTab = activeTabButton.getAttribute('data-tab');

                    if (activeTab === 'upload') {
                        imageLinkInput.disabled = true;
                        imageLinkInput.value = '';
                        imagePathInput.disabled = false; // Ensure upload input is enabled
                    } else { // activeTab === 'link'
                        imagePathInput.disabled = true;
                        imagePathInput.value = '';
                        imageLinkInput.disabled = false; // Ensure link input is enabled
                    }
                } else {
                    console.error('Required elements for form submission logic not found.');
                    // Consider preventing submission if critical elements are missing and it's appropriate
                    // e.preventDefault(); 
                }
            });
        } else {
            console.error('Banner form not found for attaching submit listener.');
        }

        // Image upload preview
        const imageInput = document.getElementById('image_path');
        const imagePreview = document.getElementById('image-preview');
        const previewPlaceholder = document.getElementById('preview-placeholder');

        if (imageInput && imagePreview && previewPlaceholder) {
            imageInput.addEventListener('change', function(e) {
                const file = e.target.files[0];

                if (file) {
                    const reader = new FileReader();

                    reader.onload = function(e) {
                        imagePreview.src = e.target.result;
                        imagePreview.style.display = 'block';
                        previewPlaceholder.style.display = 'none';
                    };

                    reader.readAsDataURL(file);
                } else {
                    imagePreview.src = '';
                    imagePreview.style.display = 'none';
                    previewPlaceholder.style.display = 'block';
                }
            });
        }

        // Link image preview
        const imageLink = document.getElementById('image_link');
        const linkPreview = document.getElementById('link-preview');
        const linkPlaceholder = document.getElementById('link-placeholder');

        if (imageLink && linkPreview && linkPlaceholder) {
            imageLink.addEventListener('input', function(e) {
                const url = this.value.trim();

                if (url) {
                    linkPreview.src = url;
                    linkPreview.style.display = 'block';
                    linkPlaceholder.style.display = 'none';
                } else {
                    linkPreview.src = '';
                    linkPreview.style.display = 'none';
                    linkPlaceholder.style.display = 'block';
                }
            });
        }
    });
</script>
