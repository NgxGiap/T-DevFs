@extends('layouts.admin.contentLayoutMaster')

@section('title', 'Chỉnh sửa hạng thành viên')
@section('description', 'Cập nhật thông tin hạng thành viên')

@section('content')
<style>
    /* Form styling */
    .form-group {
        margin-bottom: 1.5rem;
    }

    .form-label {
        display: block;
        font-size: 0.875rem;
        font-weight: 500;
        margin-bottom: 0.5rem;
        color: #374151;
    }

    .form-input {
        width: 100%;
        padding: 0.75rem;
        border: 1px solid #d1d5db;
        border-radius: 0.375rem;
        font-size: 0.875rem;
        transition: all 0.2s ease;
    }

    .form-input:focus {
        outline: none;
        border-color: #3b82f6;
        box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
    }

    .form-textarea {
        min-height: 100px;
        resize: vertical;
    }

    /* Color picker styling */
    .color-picker-container {
        display: flex;
        align-items: center;
        gap: 0.75rem;
    }

    .color-preview {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        border: 2px solid #e5e7eb;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    .color-preview:hover {
        transform: scale(1.1);
        border-color: #3b82f6;
    }

    /* Icon selector */
    .icon-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(50px, 1fr));
        gap: 0.5rem;
        max-height: 200px;
        overflow-y: auto;
        padding: 1rem;
        border: 1px solid #e5e7eb;
        border-radius: 0.375rem;
        background: #f9fafb;
    }

    .icon-option {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        border: 2px solid transparent;
        border-radius: 0.375rem;
        cursor: pointer;
        font-size: 1.5rem;
        transition: all 0.2s ease;
        background: white;
    }

    .icon-option:hover {
        border-color: #3b82f6;
        background: #eff6ff;
    }

    .icon-option.selected {
        border-color: #2563eb;
        background: #dbeafe;
    }

    /* Benefits list */
    .benefits-container {
        border: 1px solid #e5e7eb;
        border-radius: 0.375rem;
        padding: 1rem;
        background: #f9fafb;
    }

    .benefit-item {
        display: flex;
        align-items: center;
        gap: 0.75rem;
        padding: 0.75rem;
        background: white;
        border: 1px solid #e5e7eb;
        border-radius: 0.375rem;
        margin-bottom: 0.5rem;
    }

    .benefit-item:last-child {
        margin-bottom: 0;
    }

    .benefit-input {
        flex: 1;
        border: none;
        outline: none;
        font-size: 0.875rem;
    }

    .benefit-remove {
        color: #ef4444;
        cursor: pointer;
        padding: 0.25rem;
        border-radius: 0.25rem;
        transition: all 0.2s ease;
    }

    .benefit-remove:hover {
        background: #fee2e2;
    }

    /* Preview card */
    .tier-preview {
        border: 1px solid #e5e7eb;
        border-radius: 0.5rem;
        padding: 1.5rem;
        background: white;
        position: sticky;
        top: 2rem;
    }

    .tier-preview-icon {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2rem;
        color: white;
        margin-bottom: 1rem;
    }

    .tier-preview-name {
        font-size: 1.25rem;
        font-weight: 600;
        margin-bottom: 0.5rem;
    }

    .tier-preview-description {
        color: #6b7280;
        font-size: 0.875rem;
        margin-bottom: 1rem;
    }

    .tier-preview-stats {
        display: grid;
        grid-template-columns: 1fr;
        gap: 1rem;
        margin-bottom: 1rem;
    }

    .tier-preview-stat {
        text-align: center;
        padding: 0.75rem;
        background: #f3f4f6;
        border-radius: 0.375rem;
    }

    .tier-preview-stat-value {
        font-weight: 600;
        font-size: 1.125rem;
        color: #1f2937;
    }

    .tier-preview-stat-label {
        font-size: 0.75rem;
        color: #6b7280;
        margin-top: 0.25rem;
    }

    /* Range inputs */
    .range-group {
        display: grid;
        grid-template-columns: 1fr auto 1fr;
        gap: 0.75rem;
        align-items: center;
    }

    .range-separator {
        color: #6b7280;
        font-weight: 500;
    }

    /* Action buttons */
    .action-buttons {
        display: flex;
        gap: 0.75rem;
        justify-content: flex-end;
        padding-top: 2rem;
        border-top: 1px solid #e5e7eb;
        margin-top: 2rem;
    }

    /* Validation errors */
    .error-message {
        color: #ef4444;
        font-size: 0.75rem;
        margin-top: 0.25rem;
    }

    .form-input.error {
        border-color: #ef4444;
    }

    /* Success message */
    .success-message {
        background: #dcfce7;
        color: #166534;
        padding: 0.75rem 1rem;
        border-radius: 0.375rem;
        margin-bottom: 1rem;
        border: 1px solid #bbf7d0;
    }

    /* Card sections */
    .form-card {
        background: white;
        border: 1px solid #e5e7eb;
        border-radius: 0.5rem;
        padding: 1.5rem;
        margin-bottom: 1.5rem;
    }

    .form-card-title {
        font-size: 1.125rem;
        font-weight: 600;
        margin-bottom: 1rem;
        color: #1f2937;
        display: flex;
        align-items: center;
        gap: 0.5rem;
    }

    .form-card-title svg {
        width: 20px;
        height: 20px;
        color: #3b82f6;
    }

    /* User count info */
    .user-count-info {
        background: #eff6ff;
        border: 1px solid #bfdbfe;
        border-radius: 0.375rem;
        padding: 1rem;
        margin-bottom: 1rem;
    }

    .user-count-info h4 {
        font-weight: 600;
        color: #1e40af;
        margin-bottom: 0.5rem;
    }

    .user-count-info p {
        color: #1e40af;
        font-size: 0.875rem;
        margin: 0;
    }
</style>

<div class="fade-in flex flex-col gap-4 pb-4">
    <!-- Header -->
    <div class="flex items-center justify-between">
        <div class="flex items-center gap-3">
            <a href="{{ route('admin.user_ranks.index') }}" class="flex items-center justify-center w-10 h-10 rounded-lg border hover:bg-gray-50">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="m15 18-6-6 6-6"></path>
                </svg>
            </a>
            <div class="flex aspect-square w-10 h-10 items-center justify-center rounded-lg bg-primary text-primary-foreground">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="m2 4 3 12h14l3-12-6 7-4-7-4 7-6-7zm2 16h16"></path>
                </svg>
            </div>
            <div>
                <h2 class="text-3xl font-bold tracking-tight">Chỉnh sửa hạng thành viên</h2>
                <p class="text-muted-foreground">Cập nhật thông tin hạng "{{ $userTier->name }}"</p>
            </div>
        </div>
    </div>

    @if(session('success'))
    <div class="success-message">
        {{ session('success') }}
    </div>
    @endif

    <form action="{{ route('admin.user_ranks.update', $userTier) }}" method="POST" id="tierForm">
        @csrf
        @method('PUT')
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <!-- Main Form -->
            <div class="lg:col-span-2 space-y-6">
                <!-- User Count Info -->
                <div class="user-count-info">
                    <h4>Thông tin hiện tại</h4>
                    <p>Hạng này hiện có <strong>{{ number_format($userTier->user_count ?? 0) }}</strong> thành viên. Hãy cẩn thận khi thay đổi điều kiện để không ảnh hưởng đến thành viên hiện tại.</p>
                </div>

                <!-- Basic Information -->
                <div class="form-card">
                    <h3 class="form-card-title">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M12 2v20m8-10H4"></path>
                        </svg>
                        Thông tin cơ bản
                    </h3>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="form-group">
                            <label for="name" class="form-label">Tên hạng *</label>
                            <input type="text" id="name" name="name" class="form-input @error('name') error @enderror"
                                value="{{ old('name', $userTier->name) }}" placeholder="Ví dụ: Vàng, Bạc, Kim cương..." required>
                            @error('name')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="slug" class="form-label">Slug *</label>
                            <input type="text" id="slug" name="slug" class="form-input @error('slug') error @enderror"
                                value="{{ old('slug', $userTier->slug) }}" placeholder="vi-du: vang, bac, kim-cuong..." required>
                            @error('slug')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="form-group">
                            <label for="display_order" class="form-label">Thứ tự hiển thị *</label>
                            <input type="number" id="display_order" name="display_order" class="form-input @error('display_order') error @enderror"
                                value="{{ old('display_order', $userTier->display_order) }}" min="0" required>
                            @error('display_order')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="color" class="form-label">Màu sắc *</label>
                            <div class="color-picker-container">
                                <div class="color-preview" id="colorPreview" style="background-color: {{ old('color', $userTier->color) }};"></div>
                                <input type="color" id="color" name="color" class="form-input @error('color') error @enderror"
                                    value="{{ old('color', $userTier->color) }}" required>
                                <input type="text" id="colorText" class="form-input"
                                    value="{{ old('color', $userTier->color) }}" placeholder="#CD7F32">
                            </div>
                            @error('color')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="form-group">
                            <label for="is_active" class="form-label">Trạng thái *</label>
                            <select id="is_active" name="is_active" class="form-input @error('is_active') error @enderror" required>
                                <option value="1" {{ old('is_active', $userTier->is_active) == 1 ? 'selected' : '' }}>Đang hoạt động</option>
                                <option value="0" {{ old('is_active', $userTier->is_active) == 0 ? 'selected' : '' }}>Không hoạt động</option>
                            </select>
                            @error('is_active')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Biểu tượng (Tùy chọn)</label>
                        <input type="hidden" id="icon" name="icon" value="{{ old('icon', $userTier->icon) }}">
                        <div class="icon-grid" id="iconGrid">
                            @php
                            $icons = ['🥉', '🥈', '🥇', '💎', '💍', '👑', '⭐', '🌟', '💫', '🔥', '⚡', '🎯', '🏆', '🎖️', '🏅', '💰', '💳', '🎁', '🎊', '🎉'];
                            @endphp
                            @foreach($icons as $iconOption)
                            <div class="icon-option {{ old('icon', $userTier->icon) === $iconOption ? 'selected' : '' }}" data-icon="{{ $iconOption }}">
                                {{ $iconOption }}
                            </div>
                            @endforeach
                        </div>
                        @error('icon')
                        <div class="error-message">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <!-- Conditions -->
                <div class="form-card">
                    <h3 class="form-card-title">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M9 11H5a2 2 0 0 0-2 2v3c0 1.1.9 2 2 2h4m4-8h6a2 2 0 0 1 2 2v3c0 1.1-.9 2-2 2h-6m-6 0a2 2 0 0 0-2-2v-3c0-1.1.9-2 2-2m6 7a2 2 0 0 1 2-2v-3c0-1.1-.9-2-2-2m0 8h.01M21 12h.01"></path>
                        </svg>
                        Điều kiện đạt hạng
                    </h3>

                    <div class="form-group">
                        <label class="form-label">Tổng chi tiêu (VNĐ) *</label>
                        <div class="range-group">
                            <div>
                                <input type="number" id="min_spending" name="min_spending" class="form-input @error('min_spending') error @enderror"
                                    value="{{ old('min_spending', $userTier->min_spending) }}" min="0" step="0.01" placeholder="Tối thiểu" required>
                                @error('min_spending')
                                <div class="error-message">{{ $message }}</div>
                                @enderror
                            </div>
                            <span class="range-separator">đến</span>
                            <div>
                                <input type="number" disabled class="form-input" placeholder="Không giới hạn">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Số đơn hàng *</label>
                        <div class="range-group">
                            <div>
                                <input type="number" id="min_orders" name="min_orders" class="form-input @error('min_orders') error @enderror"
                                    value="{{ old('min_orders', $userTier->min_orders) }}" min="0" placeholder="Tối thiểu" required>
                                @error('min_orders')
                                <div class="error-message">{{ $message }}</div>
                                @enderror
                            </div>
                            <span class="range-separator">đến</span>
                            <div>
                                <input type="number" disabled class="form-input" placeholder="Không giới hạn">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Benefits -->
                <div class="form-card">
                    <h3 class="form-card-title">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <rect x="3" y="8" width="18" height="4" rx="1"></rect>
                            <path d="M12 8v13"></path>
                            <path d="M19 12v7a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-7"></path>
                            <path d="M7.5 8a2.5 2.5 0 0 1 0-5A4.8 8 0 0 1 12 8a4.8 8 0 0 1 4.5-5 2.5 2.5 0 0 1 0 5"></path>
                        </svg>
                        Quyền lợi thành viên
                    </h3>

                    <div class="benefits-container">
                        <div id="benefitsList">
                            @php
                            $benefits = old('benefits', is_string($userTier->benefits) ? json_decode($userTier->benefits, true) ?? [] : ($userTier->benefits ?? []));
                            @endphp
                            @if(!empty($benefits))
                            @foreach($benefits as $index => $benefit)
                            <div class="benefit-item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="text-green-500">
                                    <path d="M20 6 9 17l-5-5"></path>
                                </svg>
                                <input type="text" name="benefits[]" class="benefit-input" value="{{ $benefit }}" placeholder="Nhập quyền lợi...">
                                <button type="button" class="benefit-remove" onclick="removeBenefit(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                        <path d="M18 6 6 18"></path>
                                        <path d="m6 6 12 12"></path>
                                    </svg>
                                </button>
                            </div>
                            @endforeach
                            @else
                            <div class="benefit-item">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="text-green-500">
                                    <path d="M20 6 9 17l-5-5"></path>
                                </svg>
                                <input type="text" name="benefits[]" class="benefit-input" placeholder="Nhập quyền lợi..." value="Tích điểm cơ bản">
                                <button type="button" class="benefit-remove" onclick="removeBenefit(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                        <path d="M18 6 6 18"></path>
                                        <path d="m6 6 12 12"></path>
                                    </svg>
                                </button>
                            </div>
                            @endif
                        </div>
                        <button type="button" class="btn btn-outline mt-3" onclick="addBenefit()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="mr-2">
                                <path d="M5 12h14"></path>
                                <path d="M12 5v14"></path>
                            </svg>
                            Thêm quyền lợi
                        </button>
                        @error('benefits')
                        <div class="error-message">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <!-- Rewards -->
                <div class="form-card">
                    <h3 class="form-card-title">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                        </svg>
                        Ưu đãi
                    </h3>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="form-group">
                            <label for="discount_percentage" class="form-label">Tỷ lệ giảm giá (%)</label>
                            <input type="number" id="discount_percentage" name="discount_percentage" class="form-input @error('discount_percentage') error @enderror"
                                value="{{ old('discount_percentage', $userTier->discount_percentage) }}" min="0" max="100" step="0.01" placeholder="0">
                            @error('discount_percentage')
                            <div class="error-message">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </div>
            </div>

            <!-- Preview -->
            <div class="lg:col-span-1">
                <div class="tier-preview">
                    <h3 class="text-lg font-medium mb-4">Xem trước</h3>

                    <div class="tier-preview-icon" id="previewIcon" style="background-color: {{ old('color', $userTier->color) }};">
                        {{ old('icon', $userTier->icon) }}
                    </div>

                    <div class="tier-preview-name" id="previewName">
                        {{ old('name', $userTier->name) }}
                    </div>

                    <div class="tier-preview-description" id="previewSlug">
                        Slug: {{ old('slug', $userTier->slug) }}
                    </div>

                    <div class="tier-preview-stats">
                        <div class="tier-preview-stat">
                            <div class="tier-preview-stat-value" id="previewDiscount">{{ old('discount_percentage', $userTier->discount_percentage) }}%</div>
                            <div class="tier-preview-stat-label">Giảm giá</div>
                        </div>
                    </div>

                    <div class="space-y-2">
                        <h4 class="font-medium text-sm">Điều kiện:</h4>
                        <div class="text-sm text-gray-600">
                            <div id="previewSpentRange">Chi tiêu: {{ number_format(old('min_spending', $userTier->min_spending)) }} đ</div>
                            <div id="previewOrderRange">Đơn hàng: {{ old('min_orders', $userTier->min_orders) }}</div>
                        </div>
                    </div>

                    <div class="mt-4">
                        <h4 class="font-medium text-sm mb-2">Quyền lợi:</h4>
                        <div id="previewBenefits" class="text-sm text-gray-600 space-y-1">
                            @php
                            $previewBenefits = old('benefits', is_string($userTier->benefits) ? json_decode($userTier->benefits, true) ?? [] : ($userTier->benefits ?? []));
                            @endphp
                            @if(!empty($previewBenefits))
                            @foreach($previewBenefits as $benefit)
                            <div>&bull; {{ $benefit }}</div>
                            @endforeach
                            @else
                            <div class="text-gray-400">&bull; Chưa có quyền lợi nào</div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <a href="{{ route('admin.user_ranks.index') }}" class="btn btn-outline">Hủy</a>
            <button type="submit" class="btn btn-primary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="mr-2">
                    <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                    <polyline points="17 21 17 13 7 13 7 21"></polyline>
                    <polyline points="7 3 7 8 15 8"></polyline>
                </svg>
                Cập nhật hạng thành viên
            </button>
        </div>
    </form>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Slug generation function
        function generateSlug(str) {
            return str
                .toLowerCase()
                .normalize('NFD')
                .replace(/[\u0300-\u036f]/g, '')
                .replace(/[^a-z0-9\s-]/g, '')
                .trim()
                .replace(/\s+/g, '-')
                .replace(/-+/g, '-');
        }

        // Color picker functionality
        const colorInput = document.getElementById('color');
        const colorText = document.getElementById('colorText');
        const colorPreview = document.getElementById('colorPreview');
        const previewIcon = document.getElementById('previewIcon');

        function updateColor(color) {
            colorPreview.style.backgroundColor = color;
            previewIcon.style.backgroundColor = color;
            colorInput.value = color;
            colorText.value = color;
        }

        colorInput.addEventListener('change', function() {
            updateColor(this.value);
        });

        colorText.addEventListener('change', function() {
            if (/^#[0-9A-F]{6}$/i.test(this.value)) {
                updateColor(this.value);
            }
        });

        // Icon selection
        const iconOptions = document.querySelectorAll('.icon-option');
        const iconInput = document.getElementById('icon');
        const previewIconElement = document.getElementById('previewIcon');

        iconOptions.forEach(option => {
            option.addEventListener('click', function() {
                iconOptions.forEach(opt => opt.classList.remove('selected'));
                this.classList.add('selected');
                const selectedIcon = this.dataset.icon;
                iconInput.value = selectedIcon;
                previewIconElement.textContent = selectedIcon;
            });
        });

        // Live preview updates
        const nameInput = document.getElementById('name');
        const slugInput = document.getElementById('slug');
        const previewName = document.getElementById('previewName');
        const previewSlug = document.getElementById('previewSlug');

        nameInput.addEventListener('input', function() {
            previewName.textContent = this.value || 'Tên hạng';
            if (!slugInput.dataset.edited) {
                const generatedSlug = generateSlug(this.value);
                slugInput.value = generatedSlug;
                previewSlug.textContent = 'Slug: ' + (generatedSlug || 'ten-hang');
            }
        });

        slugInput.addEventListener('input', function() {
            this.dataset.edited = 'true';
            const cleanedSlug = generateSlug(this.value);
            this.value = cleanedSlug;
            previewSlug.textContent = 'Slug: ' + (cleanedSlug || 'ten-hang');
        });

        document.getElementById('discount_percentage').addEventListener('input', function() {
            document.getElementById('previewDiscount').textContent = this.value + '%';
        });

        // Update spent range preview
        function updateSpentRange() {
            const minSpending = document.getElementById('min_spending').value || 0;
            document.getElementById('previewSpentRange').textContent = 'Chi tiêu: ' + new Intl.NumberFormat('vi-VN').format(minSpending) + ' đ';
        }

        // Update order range preview
        function updateOrderRange() {
            const minOrders = document.getElementById('min_orders').value || 0;
            document.getElementById('previewOrderRange').textContent = 'Đơn hàng: ' + minOrders;
        }

        document.getElementById('min_spending').addEventListener('input', updateSpentRange);
        document.getElementById('min_orders').addEventListener('input', updateOrderRange);

        // Update benefits preview
        function updateBenefitsPreview() {
            const benefitInputs = document.querySelectorAll('input[name="benefits[]"]');
            const previewBenefits = document.getElementById('previewBenefits');
            previewBenefits.innerHTML = '';

            benefitInputs.forEach(input => {
                if (input.value.trim()) {
                    const div = document.createElement('div');
                    div.innerHTML = '&bull; ' + input.value;
                    previewBenefits.appendChild(div);
                }
            });

            if (previewBenefits.children.length === 0) {
                const div = document.createElement('div');
                div.innerHTML = '&bull; Chưa có quyền lợi nào';
                div.className = 'text-gray-400';
                previewBenefits.appendChild(div);
            }
        }

        // Initial benefits preview update
        updateBenefitsPreview();
        updateSpentRange();
        updateOrderRange();
    });

    // Benefits management
    function addBenefit() {
        const benefitsList = document.getElementById('benefitsList');
        const benefitItem = document.createElement('div');
        benefitItem.className = 'benefit-item';
        benefitItem.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" class="text-green-500">
            <path d="M20 6 9 17l-5-5"></path>
        </svg>
        <input type="text" name="benefits[]" class="benefit-input" placeholder="Nhập quyền lợi...">
        <button type="button" class="benefit-remove" onclick="removeBenefit(this)">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M18 6 6 18"></path>
                <path d="m6 6 12 12"></path>
            </svg>
        </button>
    `;
        benefitsList.appendChild(benefitItem);

        // Add event listener for live preview
        const newInput = benefitItem.querySelector('input');
        newInput.addEventListener('input', updateBenefitsPreview);
        newInput.focus();
    }

    function removeBenefit(button) {
        const benefitItem = button.closest('.benefit-item');
        benefitItem.remove();
        updateBenefitsPreview();
    }

    function updateBenefitsPreview() {
        const benefitInputs = document.querySelectorAll('input[name="benefits[]"]');
        const previewBenefits = document.getElementById('previewBenefits');
        previewBenefits.innerHTML = '';

        benefitInputs.forEach(input => {
            if (input.value.trim()) {
                const div = document.createElement('div');
                div.innerHTML = '&bull; ' + input.value;
                previewBenefits.appendChild(div);
            }
        });

        if (previewBenefits.children.length === 0) {
            const div = document.createElement('div');
            div.innerHTML = '&bull; Chưa có quyền lợi nào';
            div.className = 'text-gray-400';
            previewBenefits.appendChild(div);
        }
    }

    // Add event listeners to existing benefit inputs
    document.addEventListener('DOMContentLoaded', function() {
        const existingInputs = document.querySelectorAll('input[name="benefits[]"]');
        existingInputs.forEach(input => {
            input.addEventListener('input', updateBenefitsPreview);
        });
    });
</script>
@endsection