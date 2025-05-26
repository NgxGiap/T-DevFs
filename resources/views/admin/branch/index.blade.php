@extends('layouts.admin.contentLayoutMaster')

@section('content')
<style>
    .status-tag {
        display: inline-flex;
        align-items: center;
        padding: 0.25rem 0.75rem;
        border-radius: 9999px;
        font-size: 0.75rem;
        font-weight: 500;
        transition: all 0.2s ease;
    }

    .status-tag.success {
        background-color: #dcfce7;
        color: #15803d;
    }

    .status-tag.failed {
        background-color: #fee2e2;
        color: #b91c1c;
    }

    .search-loading::after {
        content: '';
        display: inline-block;
        width: 16px;
        height: 16px;
        border: 2px solid #ccc;
        border-top-color: #333;
        border-radius: 50%;
        animation: spin 0.8s linear infinite;
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
    }

    @keyframes spin {
        to { transform: translateY(-50%) rotate(360deg); }
    }
</style>

<div class="fade-in flex flex-col gap-4 pb-4">
    <!-- Main Header -->
    <div class="flex items-center justify-between">
        <div class="flex items-center gap-3">
            <div class="flex aspect-square w-10 h-10 items-center justify-center rounded-lg bg-primary text-primary-foreground">
                <i class="fas fa-code-branch"></i>
            </div>
            <div>
                <h2 class="text-3xl font-bold tracking-tight">Quản lý chi nhánh</h2>
                <p class="text-muted-foreground">Danh sách và thông tin các chi nhánh</p>
            </div>
        </div>
        <div class="flex items-center gap-2">
            <a href="{{ route('admin.branches.create') }}" class="btn btn-primary flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
                    <path d="M5 12h14"></path>
                    <path d="M12 5v14"></path>
                </svg>
                Thêm mới
            </a>
        </div>
    </div>

    <!-- Card containing table -->
    <div class="card border rounded-lg overflow-hidden">
        <!-- Table header -->
        <div class="p-6 border-b">
            <h3 class="text-lg font-medium">Danh sách chi nhánh</h3>
        </div>

        <!-- Toolbar -->
        <div class="p-4 border-b flex flex-col sm:flex-row justify-between gap-4">
            <div class="relative w-full sm:w-auto sm:min-w-[300px]">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground">
                    <circle cx="11" cy="11" r="8"></circle>
                    <path d="m21 21-4.3-4.3"></path>
                </svg>
                <input type="text"
                    placeholder="Tìm kiếm theo tên, địa chỉ..."
                    class="border rounded-md px-3 py-2 bg-background text-sm w-full pl-9"
                    id="searchInput"
                    value="{{ request('search') }}"
                    autocomplete="off">
            </div>
            <div class="flex items-center gap-2">
                <button class="btn btn-outline flex items-center" id="selectAllButton">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
                        <rect width="18" height="18" x="3" y="3" rx="2"></rect>
                        <path d="m9 12 2 2 4-4"></path>
                    </svg>
                    <span>Chọn tất cả</span>
                </button>
                <div class="dropdown relative">
                    <button class="btn btn-outline flex items-center" id="actionsDropdown" onclick="toggleDropdown('actionsMenu')">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
                            <circle cx="12" cy="12" r="2"></circle>
                            <circle cx="12" cy="5" r="2"></circle>
                            <circle cx="12" cy="19" r="2"></circle>
                        </svg>
                        Thao tác
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ml-2">
                            <path d="m6 9 6 6 6-6"></path>
                        </svg>
                    </button>
                    <div id="actionsMenu" class="hidden absolute right-0 mt-2 w-48 rounded-md border bg-popover text-popover-foreground shadow-md z-10">
                        <div class="p-2">
                            <a href="#" class="flex items-center rounded-md px-2 py-1.5 text-sm hover:bg-accent hover:text-accent-foreground" onclick="updateSelectedStatus(1)">
                                <i class="fas fa-check-circle text-success mr-2"></i>
                                Kích hoạt đã chọn
                            </a>
                            <a href="#" class="flex items-center rounded-md px-2 py-1.5 text-sm hover:bg-accent hover:text-accent-foreground" onclick="updateSelectedStatus(0)">
                                <i class="fas fa-times-circle text-danger mr-2"></i>
                                Vô hiệu hóa đã chọn
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Table container -->
        <div class="overflow-x-auto">
            <table class="w-full">
                <thead>
                    <tr class="border-b bg-muted/50">
                        <th class="py-3 px-4 text-left">
                            <div class="flex items-center">
                                <input type="checkbox" id="selectAll" class="rounded border-gray-300">
                            </div>
                        </th>
                        <th class="py-3 px-4 text-left font-medium">ID</th>
                        <th class="py-3 px-4 text-left font-medium">Tên</th>
                        <th class="py-3 px-4 text-left font-medium">Địa chỉ</th>
                        <th class="py-3 px-4 text-left font-medium">Liên hệ</th>
                        <th class="py-3 px-4 text-left font-medium">Giờ làm việc</th>
                        <th class="py-3 px-4 text-left font-medium">Trạng thái</th>
                        <th class="py-3 px-4 text-left font-medium">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($branches as $branch)
                    <tr class="border-b">
                        <td class="py-3 px-4">
                            <input type="checkbox" class="branch-checkbox" value="{{ $branch->id }}">
                        </td>
                        <td class="py-3 px-4">{{ $branch->id }}</td>
                        <td class="py-3 px-4">{{ $branch->name }}</td>
                        <td class="py-3 px-4">{{ Str::limit($branch->address, 40) }}</td>
                        <td class="py-3 px-4">
                            <div class="space-y-1">
                                <div class="flex items-center gap-1">
                                    <i class="fas fa-phone text-sm text-muted-foreground"></i>
                                    <span>{{ $branch->phone }}</span>
                                </div>
                                @if($branch->email)
                                <div class="flex items-center gap-1">
                                    <i class="fas fa-envelope text-sm text-muted-foreground"></i>
                                    <span>{{ $branch->email }}</span>
                                </div>
                                @endif
                            </div>
                        </td>
                        <td class="py-3 px-4">{{ date('H:i', strtotime($branch->opening_hour)) }} - {{ date('H:i', strtotime($branch->closing_hour)) }}</td>
                        <td class="py-3 px-4">
                            <button type="button"
                                class="px-3 py-1.5 rounded-full text-xs {{ $branch->active ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700' }} hover:opacity-80 w-24 transition-opacity duration-200"
                                data-branch-id="{{ $branch->id }}"
                                data-branch-name="{{ $branch->name }}"
                                data-branch-active="{{ $branch->active ? 'true' : 'false' }}">
                                @if($branch->active)
                                <i class="fas fa-check mr-1"></i> Hoạt động
                                @else
                                <i class="fas fa-times mr-1"></i> Vô hiệu hóa
                                @endif
                            </button>
                        </td>
                        <td class="py-3 px-4">
                            <a href="{{ route('admin.branches.show', $branch->id) }}" class="btn btn-ghost btn-sm">
                                <i class="fas fa-eye"></i>
                            </a>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="8" class="py-6 text-center text-muted-foreground">
                            <i class="fas fa-store-slash mr-2"></i>
                            Không có chi nhánh nào
                        </td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('page-script')
<script>
    // Ensure CSRF token is available
    const csrfToken = document.querySelector('meta[name="csrf-token"]')?.content;
    if (!csrfToken) {
        console.error('CSRF token not found');
    }

    document.addEventListener('DOMContentLoaded', function() {
        // Xử lý chọn tất cả
        const selectAllCheckbox = document.getElementById('selectAll');
        const branchCheckboxes = document.querySelectorAll('.branch-checkbox');

        selectAllCheckbox.addEventListener('change', function() {
            branchCheckboxes.forEach(checkbox => {
                checkbox.checked = this.checked;
            });
        });

        // Xử lý tìm kiếm
        const searchInput = document.getElementById('searchInput');
        let searchTimeout = null;

        // Hàm debounce
        function debounce(func, delay) {
            return function(...args) {
                clearTimeout(searchTimeout);
                searchTimeout = setTimeout(() => func.apply(this, args), delay);
            };
        }

        // Hàm tìm kiếm
        const handleSearch = debounce(async (searchTerm) => {
            searchInput.classList.add('search-loading');
            await loadBranches(1, searchTerm.trim().toLowerCase());
            searchInput.classList.remove('search-loading');
        }, 500);

        // Sự kiện input
        searchInput.addEventListener('input', function(e) {
            handleSearch(e.target.value);
        });

        // Sự kiện nhấn Enter
        searchInput.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                clearTimeout(searchTimeout);
                handleSearch(e.target.value);
            }
        });

        // Attach toggleBranchStatus event listeners to buttons
        document.querySelectorAll('button[data-branch-id]').forEach(button => {
            button.addEventListener('click', function() {
                const branchId = this.getAttribute('data-branch-id');
                const branchName = this.getAttribute('data-branch-name');
                const currentStatus = this.getAttribute('data-branch-active') === 'true';
                window.toggleBranchStatus(this, branchId, branchName, currentStatus);
            });
        });

        // Toggle dropdown actions
        window.toggleDropdown = function(dropdownId) {
            const dropdown = document.getElementById(dropdownId);
            dropdown.classList.toggle('hidden');
        };
    });

    // AJAX load dữ liệu
    async function loadBranches(page = 1, search = '') {
        try {
            const response = await fetch(`{{ route('admin.branches.index') }}?page=${page}&search=${encodeURIComponent(search)}`, {
                headers: {
                    'Accept': 'application/json'
                }
            });

            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }

            const data = await response.json();

            if (data.success) {
                updateTable(data.branches.data);
                updatePagination(data.branches);
                updateURL(page, search);

                // Re-attach event listeners to new buttons after table update
                document.querySelectorAll('button[data-branch-id]').forEach(button => {
                    button.addEventListener('click', function() {
                        const branchId = this.getAttribute('data-branch-id');
                        const branchName = this.getAttribute('data-branch-name');
                        const currentStatus = this.getAttribute('data-branch-active') === 'true';
                        window.toggleBranchStatus(this, branchId, branchName, currentStatus);
                    });
                });
            } else {
                showToast('error', 'Không tìm thấy kết quả phù hợp');
            }
        } catch (error) {
            console.error('Error:', error);
            showToast('error', 'Lỗi tải dữ liệu. Vui lòng thử lại.');
        }
    }

    // Cập nhật bảng
    function updateTable(branches) {
        const tbody = document.querySelector('tbody');
        tbody.innerHTML = branches.length > 0 ?
            branches.map(branch => `
                <tr class="border-b">
                    <td class="py-3 px-4">
                        <input type="checkbox" class="branch-checkbox" value="${branch.id}">
                    </td>
                    <td class="py-3 px-4">${branch.id}</td>
                    <td class="py-3 px-4">${branch.name}</td>
                    <td class="py-3 px-4">${branch.address.substring(0, 40)}${branch.address.length > 40 ? '...' : ''}</td>
                    <td class="py-3 px-4">
                        <div class="space-y-1">
                            <div>📞 ${branch.phone}</div>
                            ${branch.email ? `<div>📧 ${branch.email}</div>` : ''}
                        </div>
                    </td>
                    <td class="py-3 px-4">
                        <button type="button"
                            class="px-3 py-1.5 rounded-full text-xs ${branch.active ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'} hover:opacity-80 w-24 transition-opacity duration-200"
                            data-branch-id="${branch.id}"
                            data-branch-name="${branch.name}"
                            data-branch-active="${branch.active}">
                            ${branch.active ? 
                                '<i class="fas fa-check mr-1"></i> Hoạt động' : 
                                '<i class="fas fa-times mr-1"></i> Vô hiệu hóa'}
                        </button>
                    </td>
                    <td class="py-3 px-4">
                        <a href="/admin/branches/${branch.id}" class="btn btn-ghost btn-sm">
                            👁️ Xem
                        </a>
                    </td>
                </tr>
            `).join('') :
            `<tr>
                <td colspan="8" class="py-6 text-center text-muted-foreground">
                    🏪 Không có chi nhánh nào
                </td>
            </tr>`;
    }

    // Toggle trạng thái chi nhánh
    window.toggleBranchStatus = async function(button, branchId, branchName, currentStatus) {
        try {
            const response = await fetch(`/admin/branches/${branchId}/toggle-status`, {
                method: 'POST',
                headers: {
                    'X-CSRF-TOKEN': csrfToken,
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ _method: 'PUT' })
            });

            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }

            const data = await response.json();
            
            if (data.success) {
                // Đảo ngược trạng thái hiển thị
                const newStatus = !currentStatus;
                button.classList.remove('bg-green-100', 'text-green-700', 'bg-red-100', 'text-red-700');
                button.classList.add(newStatus ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700');
                
                button.innerHTML = newStatus ? 
                    `<i class="fas fa-check mr-1"></i> Hoạt động` : 
                    `<i class="fas fa-times mr-1"></i> Vô hiệu hóa`;
                
                button.setAttribute('data-branch-active', newStatus);

                showToast('success', `Đã chuyển trạng thái ${branchName} thành ${newStatus ? 'Hoạt động' : 'Vô hiệu hóa'}`);
                loadBranches(); // Refresh bảng
            } else {
                showToast('error', data.message || 'Không thể thay đổi trạng thái');
            }
        } catch (error) {
            console.error('Error:', error);
            showToast('error', 'Có lỗi xảy ra khi chuyển trạng thái');
        }
    };

    // Helper functions
    function showToast(type, message) {
        const toast = document.createElement('div');
        toast.className = `toast toast-${type} fixed bottom-4 right-4 p-4 rounded-md shadow-md bg-${type === 'success' ? 'green-500' : 'red-500'} text-white`;
        toast.textContent = message;
        document.body.appendChild(toast);

        setTimeout(() => toast.remove(), 3000);
    }

    function updateURL(page, search) {
        const url = new URL(window.location);
        url.searchParams.set('page', page);
        search ? url.searchParams.set('search', search) : url.searchParams.delete('search');
        window.history.pushState({}, '', url);
    }

    function updatePagination(pagination) {
        console.log('Pagination data:', pagination);
        // Thêm logic xử lý phân trang nếu cần
    }
</script>
@endsection