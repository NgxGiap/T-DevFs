/**
 * Users management module for discount codes
 * Handles user filtering by rank and user selection
 */

/**
 * Initialize user search functionality
 * @param {Object} options - Configuration options
 * @param {string} options.searchSelector - Selector for the user search input
 * @param {string} options.containerSelector - Selector for the user container
 */
export function initUserSearch(options = {}) {
    const searchSelector = options.searchSelector || '#user_search';
    const containerSelector = options.containerSelector || '#users_selection .grid';
    
    const $searchInput = $(searchSelector);
    const $container = $(containerSelector);
    
    if (!$searchInput.length || !$container.length) {
        return;
    }
    
    // Handle user search input
    $searchInput.on('input', function() {
        const searchTerm = $(this).val().toLowerCase();
        
        // Filter users in the DOM based on search term
        const userItems = $container.find('.user-item');
        
        userItems.each(function() {
            const $item = $(this);
            const fullName = $item.find('label .font-medium').text().toLowerCase();
            const email = $item.find('label .text-gray-500:nth-child(2)').text().toLowerCase();
            const phone = $item.find('label .text-gray-500:nth-child(3)').text().toLowerCase();
            
            if (fullName.includes(searchTerm) || email.includes(searchTerm) || phone.includes(searchTerm)) {
                $item.show();
            } else {
                $item.hide();
            }
        });
        
        // Update counter
        updateUserCounter($container);
    });
}

/**
 * Initialize rank selection functionality
 * @param {Object} options - Configuration options
 * @param {string} options.rankCheckboxSelector - Selector for rank checkboxes
 * @param {string} options.containerSelector - Selector for the user container
 * @param {string} options.countDisplaySelector - Selector for the user count display
 */
export function initRankSelection(options = {}) {
    const rankCheckboxSelector = options.rankCheckboxSelector || 'input[name="applicable_ranks[]"]';
    const containerSelector = options.containerSelector || '#users_selection .grid';
    const countDisplaySelector = options.countDisplaySelector || '#users_selection .text-xs.text-gray-500';
    
    const $rankCheckboxes = $(rankCheckboxSelector);
    const $container = $(containerSelector);
    const $countDisplay = $(countDisplaySelector);
    
    if (!$rankCheckboxes.length) {
        return;
    }
    
    // Add change event listeners to rank checkboxes
    $rankCheckboxes.on('change', function() {
        fetchUsersByRank($container, $countDisplay);
    });
    
    // Initial fetch
    fetchUsersByRank($container, $countDisplay);
}

/**
 * Fetch users by selected ranks
 * @param {jQuery} $container - jQuery container element for users
 * @param {jQuery} $countDisplay - jQuery element for displaying user count
 */
function fetchUsersByRank($container, $countDisplay) {
    console.log('fetchUsersByRank called');
    console.log('Container:', $container);
    console.log('Count display:', $countDisplay);
    
    // If count display not found, try to find it again
    if (!$countDisplay || !$countDisplay.length) {
        console.log('Count display not found, trying to find it again');
        $countDisplay = $('#users_selection .text-xs.text-gray-500');
        console.log('New count display:', $countDisplay);
    }
    
    // Get all selected ranks
    const selectedRanks = [];
    const rankCheckboxes = $('input[name="applicable_ranks[]"]:checked');
    
    console.log('Selected rank checkboxes:', rankCheckboxes.length);
    
    rankCheckboxes.each(function() {
        selectedRanks.push($(this).val());
    });
    
    console.log('Selected ranks:', selectedRanks);
    
    // Show loading indicator
    $container.html(`
        <div class="col-span-full p-4 text-center">
            <div class="inline-block animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
            <p class="mt-2 text-gray-500 dark:text-muted-foreground">Đang tải danh sách người dùng...</p>
        </div>
    `);
    
    // If no ranks selected, show message
    if (selectedRanks.length === 0) {
        $container.html(`
            <div class="col-span-full p-4 text-center bg-gray-50 dark:bg-card rounded-lg">
                <p class="text-gray-500 dark:text-muted-foreground">Vui lòng chọn ít nhất một hạng thành viên để hiển thị danh sách người dùng.</p>
            </div>
        `);
        
        if ($countDisplay) {
            $countDisplay.text('Đang hiển thị 0 người dùng hợp lệ');
        }
        
        return;
    }
    
    // Get the current discount code ID
    const hiddenInput = $('input[name="discount_code_id"]');
    const formData = $('form').data('discount-code-id');
    const pathId = window.location.pathname.split('/').filter(Boolean).pop();
    
    const discountCodeId = hiddenInput.val() || formData || pathId;
    
    // Get CSRF token from multiple sources
    const metaToken = $('meta[name="csrf-token"]').attr('content');
    const inputToken = $('input[name="_token"]').val();
    const csrfInput = $('#csrf_token_input').val();
    
    const csrfToken = metaToken || inputToken || csrfInput;
    
    // Prepare request data
    const requestData = {
        ranks: selectedRanks,
        discount_code_id: discountCodeId
    };
    
    console.log('AJAX request data:', requestData);
    console.log('CSRF token:', csrfToken);
    
    $.ajax({
        url: "/admin/discount_codes/get-users-by-rank",
        type: 'POST',
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify(requestData),
        headers: {
            'X-CSRF-TOKEN': csrfToken
        },
        success: function(data) {
            if (data.success) {
                // Update user count display
                if ($countDisplay) {
                    $countDisplay.text(`Đang hiển thị ${data.count} người dùng hợp lệ`);
                }
                
                // Generate HTML for users
                if (data.users.length === 0) {
                    $container.html(`
                        <div class="col-span-full p-4 text-center bg-gray-50 dark:bg-card rounded-lg">
                            <p class="text-gray-500 dark:text-muted-foreground">Không tìm thấy người dùng nào với hạng đã chọn.</p>
                        </div>
                    `);
                } else {
                    let usersHtml = '';
                    
                    data.users.forEach(user => {
                        usersHtml += `
                            <div class="user-item checkbox-group hover:border-blue-500 hover:bg-blue-50 dark:hover:border-primary dark:hover:bg-primary/10 transition-colors relative">
                                <span class="absolute top-0 right-0 inline-flex items-center px-2 py-1 rounded-bl text-xs font-medium ${user.rank_class}">
                                    <svg class="w-3 h-3 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                    </svg>
                                    ${user.rank_name || 'Chưa xếp hạng'}
                                </span>
                                <input type="checkbox" name="assigned_users[]" id="user_${user.id}" value="${user.id}" ${user.is_assigned ? 'checked' : ''}>
                                <label for="user_${user.id}" class="flex flex-col">
                                    <span class="font-medium">${user.full_name}</span>
                                    <span class="text-xs text-gray-500">${user.email}</span>
                                    <span class="text-xs text-gray-500">${user.phone || 'Không có SĐT'}</span>
                                </label>
                            </div>
                        `;
                    });
                    
                    $container.html(usersHtml);
                    
                    // Add change event listeners to user checkboxes
                    $container.find('input[name="assigned_users[]"]').on('change', function() {
                        const userId = parseInt(this.value);
                        const event = new CustomEvent('userSelectionChanged', { 
                            detail: { 
                                userId: userId, 
                                isChecked: this.checked 
                            } 
                        });
                        document.dispatchEvent(event);
                    });
                }
            } else {
                console.error('Error fetching users:', data.message);
                $container.html(`
                    <div class="col-span-full p-4 text-center bg-red-50 dark:bg-red-950/20 rounded-lg">
                        <p class="text-red-500">Lỗi: Không thể tải danh sách người dùng.</p>
                        <p class="text-red-500">${data.message || 'Không có thông tin lỗi'}</p>
                    </div>
                `);
            }
        },
        error: function(xhr, status, error) {
            let errorMessage = error;
            try {
                const responseJson = JSON.parse(xhr.responseText);
                if (responseJson.message) {
                    errorMessage = responseJson.message;
                }
            } catch (e) {
                // Could not parse error response as JSON
            }
            
            $container.html(`
                <div class="col-span-full p-4 text-center bg-red-50 dark:bg-red-950/20 rounded-lg">
                    <p class="text-red-500">Lỗi kết nối: Không thể tải danh sách người dùng.</p>
                    <p class="text-red-500 text-sm mt-2">${errorMessage}</p>
                    <p class="text-red-500 text-xs mt-1">Status code: ${xhr.status}</p>
                    <button class="mt-2 px-3 py-1 bg-blue-500 text-white rounded hover:bg-blue-600" onclick="window.discountCodeModule.users.fetchUsersByRank()">
                        Thử lại
                    </button>
                </div>
            `);
        }
    });
}

/**
 * Update the user counter display
 * @param {jQuery} $container - jQuery container element for users
 */
function updateUserCounter($container) {
    const totalUsers = $container.find('.user-item').length;
    const visibleUsers = $container.find('.user-item:visible').length;
    
    const $countDisplay = $('#users_selection .text-xs.text-gray-500');
    if ($countDisplay.length) {
        $countDisplay.text(`Đang hiển thị ${visibleUsers} người dùng hợp lệ (trong tổng số ${totalUsers} người dùng)`);
    }
}

/**
 * Toggle rank exclusivity
 * @param {boolean} isExclusive - Whether the rank selection is exclusive
 */
export function toggleRankExclusivity(isExclusive) {
    // Re-fetch users when rank exclusivity changes
    const $container = $('#users_selection .grid');
    const $countDisplay = $('#users_selection .text-xs.text-gray-500');
    fetchUsersByRank($container, $countDisplay);
}

/**
 * Export the fetchUsersByRank function for external use
 */
export function fetchUsers() {
    console.log('Fetching users...');
    const $container = $('#users_selection .grid');
    const $countDisplay = $('#users_selection .text-xs.text-gray-500');
    console.log('Container in fetchUsers:', $container.length ? 'found' : 'not found');
    console.log('Count display in fetchUsers:', $countDisplay.length ? 'found' : 'not found');
    fetchUsersByRank($container, $countDisplay);
} 