@extends('layouts.admin.contentLayoutMaster')

@section('title', 'User Details')

@section('vendor-style')
{{-- vendor css files --}}
<link rel="stylesheet" href="{{ asset(mix('vendors/css/charts/apexcharts.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/sweetalert2.min.css')) }}">
@endsection

@section('page-style')
{{-- Page css files --}}
<link rel="stylesheet" href="{{ asset(mix('css/pages/card-analytics.css')) }}">
<style>
    :root {
        --primary: #7367f0;
        --secondary: #82868b;
        --success: #28c76f;
        --info: #00cfe8;
        --warning: #ff9f43;
        --danger: #ea5455;
        --light: #f8f8f8;
        --dark: #4b4b4b;
        --primary-light: #e4e2ff;
        --border-radius: 0.428rem;
        --card-shadow: 0 4px 24px 0 rgba(34, 41, 47, 0.1);
        --transition: all 0.35s ease-in-out;
    }

    /* User Profile Card */
    .user-profile-card {
        background-color: #fff;
        border-radius: var(--border-radius);
        box-shadow: var(--card-shadow);
        overflow: hidden;
        transition: var(--transition);
    }

    .user-profile-card:hover {
        box-shadow: 0 8px 32px 0 rgba(34, 41, 47, 0.18);
    }

    .user-profile-header {
        background-color: var(--primary);
        background-image: linear-gradient(45deg, var(--primary), #9c8fff);
        color: #fff;
        padding: 2rem;
    }

    .user-profile-avatar-wrapper {
        margin-top: -4rem;
        margin-bottom: 1rem;
        display: flex;
        justify-content: center;
    }

    .user-profile-avatar {
        width: 140px;
        height: 140px;
        border-radius: 50%;
        border: 5px solid #fff;
        box-shadow: 0 4px 12px rgba(34, 41, 47, 0.2);
        object-fit: cover;
        background-color: #fff;
    }

    .user-profile-info {
        padding: 1.5rem;
        text-align: center;
    }

    .user-profile-name {
        font-size: 1.5rem;
        font-weight: 700;
        margin-bottom: 0.25rem;
        color: var(--dark);
    }

    .user-profile-username {
        font-size: 1rem;
        color: var(--secondary);
        margin-bottom: 1rem;
    }

    .user-profile-roles {
        margin-bottom: 1.5rem;
    }

    .user-profile-stats {
        display: flex;
        justify-content: center;
        margin-bottom: 1.5rem;
        gap: 1.5rem;
    }

    .user-profile-stat {
        text-align: center;
    }

    .user-profile-stat-value {
        font-size: 1.25rem;
        font-weight: 700;
        color: var(--primary);
    }

    .user-profile-stat-label {
        font-size: 0.85rem;
        color: var(--secondary);
    }

    /* Details Section */
    .user-details-section {
        background-color: #fff;
        border-radius: var(--border-radius);
        box-shadow: var(--card-shadow);
        overflow: hidden;
        margin-bottom: 1.5rem;
        transition: var(--transition);
    }

    .user-details-section:hover {
        box-shadow: 0 8px 32px 0 rgba(34, 41, 47, 0.1);
    }

    .user-details-header {
        padding: 1rem 1.5rem;
        border-bottom: 1px solid #ebe9f1;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .user-details-title {
        font-size: 1.1rem;
        font-weight: 600;
        color: var(--dark);
        margin: 0;
    }

    .user-details-body {
        padding: 1.5rem;
    }

    .user-info-row {
        display: flex;
        border-bottom: 1px solid #ebe9f1;
        padding: 1rem 0;
    }

    .user-info-row:last-child {
        border-bottom: none;
    }

    .user-info-label {
        font-weight: 600;
        color: var(--secondary);
        width: 180px;
        display: flex;
        align-items: center;
    }

    .user-info-label i {
        margin-right: 0.75rem;
        font-size: 1.1rem;
        width: 24px;
        color: var(--primary);
    }

    .user-info-value {
        flex: 1;
        color: var(--dark);
        display: flex;
        align-items: center;
    }

    /* Status Badge */
    .badge-custom {
        padding: 0.4rem 0.75rem;
        border-radius: 50rem;
        font-weight: 500;
        font-size: 0.85rem;
    }

    .badge-active {
        background-color: rgba(40, 199, 111, 0.15);
        color: var(--success);
    }

    .badge-inactive {
        background-color: rgba(234, 84, 85, 0.15);
        color: var(--danger);
    }

    .badge-role {
        background-color: rgba(115, 103, 240, 0.15);
        color: var(--primary);
    }

    /* Action Buttons */
    .user-action-buttons {
        display: flex;
        gap: 1rem;
        margin-top: 1.5rem;
    }

    .btn-custom {
        padding: 0.6rem 1.2rem;
        border-radius: var(--border-radius);
        font-weight: 500;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 0.5rem;
        transition: var(--transition);
        border: none;
    }

    .btn-primary-custom {
        background-color: var(--primary);
        color: #fff;
    }

    .btn-primary-custom:hover {
        background-color: #5e50ee;
        box-shadow: 0 4px 12px rgba(115, 103, 240, 0.4);
    }

    .btn-info-custom {
        background-color: var(--info);
        color: #fff;
    }

    .btn-info-custom:hover {
        background-color: #00bdda;
        box-shadow: 0 4px 12px rgba(0, 207, 232, 0.4);
    }

    .btn-secondary-custom {
        background-color: var(--secondary);
        color: #fff;
    }

    .btn-secondary-custom:hover {
        background-color: #737981;
        box-shadow: 0 4px 12px rgba(130, 134, 139, 0.4);
    }

   /* Thêm vào phần style */
.btn-success {
    background-color: #28c76f !important;
    border-color: #28c76f !important;
}

.btn-danger {
    background-color: #ea5455 !important;
    border-color: #ea5455 !important;
}

    /* Responsive adjustments */
    @media (max-width: 991.98px) {
        .user-info-label {
            width: 140px;
        }
    }

    @media (max-width: 767.98px) {
        .user-profile-stat {
            padding: 0 0.5rem;
        }

        .user-info-row {
            flex-direction: column;
        }

        .user-info-label {
            width: 100%;
            margin-bottom: 0.5rem;
        }
    }
</style>
@endsection

@section('content')
<div class="content-body p-6">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <!-- User Profile Card -->
        <div class="bg-white rounded-lg shadow-lg overflow-hidden">
            <div class="bg-gradient-to-r from-primary-500 to-indigo-400 h-32"></div>
            <div class="flex justify-center -mt-16 mb-4">
                <div class="w-32 h-32 rounded-full border-4 border-white shadow-lg">
                    @if($user->avatar)
                    <img src="{{ Storage::disk('s3')->url($user->avatar) }}" alt="Avatar" class="w-full h-full object-cover rounded-full">
                    @else
                    <div class="w-full h-full bg-gray-200 rounded-full flex items-center justify-center">
                        <svg class="w-16 h-16 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                        </svg>
                    </div>
                    @endif
                </div>
            </div>
            
            <div class="px-6 py-4 text-center">
                <h3 class="text-2xl font-semibold text-gray-800 mb-1">{{ $user->full_name }}</h3>
           
                
              
                
                <div class="flex justify-between items-center mb-6">
                    <div class="text-center">
                        <p class="text-xl font-semibold text-primary-600">${{ number_format($user->balance, 2) }}</p>
                        <span class="text-gray-600 text-sm">Balance</span>
                    </div>
                    <div class="text-center">
                        <button onclick="toggleUserStatus(this, {{ $user->id }}, '{{ $user->full_name }}', {{ $user->active ? 'true' : 'false' }})" 
                            class="px-4 py-2 rounded-lg text-sm font-medium {{ $user->active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }} 
                                   hover:{{ $user->active ? 'bg-green-200' : 'bg-red-200' }} transition-colors">
                            {{ $user->active ? 'Hoạt động' : 'Vô hiệu hóa' }}
                        </button>
                        <span class="block text-gray-600 text-sm mt-1">Trạng thái</span>
                    </div>
                </div>
                
                <a href="{{ route('admin.users.index') }}" 
                   class="inline-flex items-center px-4 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition-colors">
                    <svg class="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                    </svg>
                    Quay lại
                </a>
            </div>
        </div>

        <!-- User Details Section -->
        <div class="bg-white rounded-lg shadow-lg p-6">
            <div class="mb-6">
                <h4 class="text-lg font-semibold text-gray-800 mb-4 flex items-center">
                    <svg class="w-5 h-5 mr-2 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                    </svg>
                    Thông tin cá nhân
                </h4>
                
                <div class="space-y-4">
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Username:</span>
                        <span class="font-medium text-gray-800">{{ $user->user_name }}</span>
                    </div>
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Họ và tên:</span>
                        <span class="font-medium text-gray-800">{{ $user->full_name }}</span>
                    </div>
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Email:</span>
                        <span class="font-medium text-gray-800">{{ $user->email }}</span>
                    </div>
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Điện thoại:</span>
                        <span class="font-medium text-gray-800">{{ $user->phone ?: 'N/A' }}</span>
                    </div>
                    <div class="flex justify-between items-center">
                        <span class="text-gray-600">Ngày tạo:</span>
                        <span class="font-medium text-gray-800">
                            {{ $user->created_at ? $user->created_at->format('d/m/Y H:i') : 'N/A' }}
                        </span>
                    </div>
                </div>
            </div>

            <div>
                <h4 class="text-lg font-semibold text-gray-800 mb-4 flex items-center">
                    <svg class="w-5 h-5 mr-2 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                    </svg>
                    Cài đặt tài khoản
                </h4>
                
                <div class="space-y-4">
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Vai trò:</span>
                        <div class="space-x-2">
                            @foreach($user->roles as $role)
                            <span class="bg-primary-100 text-primary-800 px-2 py-1 rounded-full text-sm">
                                {{ $role->name }}
                            </span>
                            @endforeach
                        </div>
                    </div>
                    <div class="flex justify-between items-center pb-2 border-b border-gray-200">
                        <span class="text-gray-600">Trạng thái:</span>
                        <span class="px-2 py-1 rounded-full text-sm font-medium {{ $user->active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                            {{ $user->active ? 'Hoạt động' : 'Vô hiệu' }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
@section('page-script')
<script>
    function toggleUserStatus(button, userId, userName, currentStatus) {
        // Configuration object for messages
        const messages = {
            confirmTitle: 'Xác nhận thay đổi trạng thái',
            confirmSubtitle: 'Bạn có chắc chắn muốn thay đổi trạng thái của người dùng này?',
            confirmMessage: 'Hành động này sẽ thay đổi trạng thái hoạt động của người dùng.',
            successMessage: 'Đã thay đổi trạng thái người dùng thành công',
            errorMessage: 'Có lỗi xảy ra khi thay đổi trạng thái người dùng'
        };

        // Sử dụng modal thay vì confirm
        dtmodalCreateModal({
            type: 'warning',
            title: messages.confirmTitle,
            subtitle: messages.confirmSubtitle,
            message: `Bạn đang thay đổi trạng thái của: <strong>"${userName}"</strong><br>${messages.confirmMessage}`,
            confirmText: 'Xác nhận thay đổi',
            cancelText: 'Hủy bỏ',
            onConfirm: function() {
                // Send AJAX request to toggle status
                $.ajax({
                    url: `{{ url('admin/users') }}/${userId}/toggle-status`,
                    type: 'PATCH',
                    data: {
                        _token: $('meta[name="csrf-token"]').attr('content'),
                        _method: 'PATCH'
                    },
                    success: function(response) {
                        if (response.success) {
                            // Update UI
                            const newStatus = !currentStatus;
                            const statusButton = $(button);

                            statusButton
                                .removeClass(currentStatus ? 'data-table-status-success' : 'data-table-status-failed')
                                .addClass(newStatus ? 'data-table-status-success' : 'data-table-status-failed');

                            statusButton.html(
                                newStatus ?
                                '<i class="fas fa-check"></i> Hoạt động' :
                                '<i class="fas fa-times"></i> Vô hiệu hóa'
                            );

                            // Update onclick handler with new status
                            statusButton.attr('onclick', `toggleUserStatus(this, ${userId}, '${userName}', ${newStatus})`);

                            // Show success toast message instead of alert
                            dtmodalShowToast('success', {
                                title: 'Thành công',
                                message: messages.successMessage
                            });
                        }
                    },
                    error: function(xhr) {
                        let errorMessage = messages.errorMessage;

                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        } else if (xhr.status === 404) {
                            errorMessage = 'Không tìm thấy người dùng';
                        } else if (xhr.status === 403) {
                            errorMessage = 'Bạn không có quyền thực hiện thao tác này';
                        } else if (xhr.status === 422) {
                            errorMessage = 'Dữ liệu không hợp lệ';
                        }

                        // Show error toast message instead of alert
                        dtmodalShowToast('error', {
                            title: 'Lỗi',
                            message: errorMessage
                        });
                    }
                });
            }
        });
    }
    function fetchUserData() {
        $.ajax({
            url: window.location.href,
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                if(response.success) {
                    // Cập nhật thông tin chính
                    $('.user-profile-name').text(response.data.full_name);
                    $('.user-profile-username').text('@' + response.data.user_name);
                    $('.user-profile-stat-value').first().text('$' + response.data.balance.toFixed(2));
                    
                    // Cập nhật trạng thái
                    const statusButton = $('.btn-status-toggle');
                    statusButton
                        .toggleClass('btn-success btn-danger', response.data.active)
                        .find('i')
                        .toggleClass('fa-check fa-times', response.data.active);
                    statusButton.find('div').last().text(response.data.active ? 'Hoạt động' : 'Vô hiệu hóa');
                    
                    // Cập nhật thông tin chi tiết
                    $('#user-email').text(response.data.email);
                    $('#user-phone').text(response.data.phone || 'Not provided');
                    $('#user-created-at').text(response.data.created_at);
                }
            },
            error: function(xhr) {
                console.error('Lỗi khi tải dữ liệu:', xhr.responseText);
            }
        });
    }

    // Khởi chạy lần đầu và lặp lại mỗi giây
    fetchUserData();
    setInterval(fetchUserData, 1);
    
</script>
@endsection