@extends('layouts.admin.contentLayoutMaster')

@section('title', 'Quản Lý Chat')

@section('content')
    <style>
        :root {
            --primary-color: #3b82f6;
            --primary-hover: #2563eb;
            --text-primary: #111827;
            --text-secondary: #4b5563;
            --text-muted: #6b7280;
            --bg-hover: #f3f4f6;
            --border-color: #e5e7eb;
            --badge-waiting: #fef3c7;
            --badge-waiting-text: #92400e;
            --badge-high: #fee2e2;
            --badge-xs: #991b1b;
            --badge-high-text: #991b1b;
            --badge-distributed: #dbeafe;
            --badge-distributed-text: #1e40af;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            color: var(--text-primary);
            background-color: #f9fafb;
        }

        .chat-container {
            display: flex;
            height: calc(100vh - 80px);
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid var(--border-color);
        }

        .chat-sidebar {
            width: 380px;
            border-right: 1px solid var(--border-color);
            display: flex;
            flex-direction: column;
            background-color: #f9fafb;
        }

        .chat-sidebar-header {
            padding: 20px;
            border-bottom: 1px solid var(--border-color);
            background-color: white;
        }

        .chat-sidebar-header h2 {
            margin: 0;
            font-size: 1.25rem;
            font-weight: 600;
        }

        .chat-sidebar-header p {
            margin: 4px 0 0;
            color: var(--text-secondary);
            font-size: 0.875rem;
        }

        .chat-list {
            flex: 1;
            overflow-y: auto;
        }

        .chat-item {
            padding: 16px 20px;
            border-bottom: 1px solid var(--border-color);
            cursor: pointer;
            transition: background-color 0.2s;
            position: relative;
            background-color: white;
        }

        .chat-item:hover {
            background-color: var(--bg-hover);
        }

        .chat-item.active {
            background-color: #f0f9ff;
            border-left: 3px solid var(--primary-color);
        }

        .chat-item-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 4px;
        }

        .chat-item-name {
            font-weight: 600;
            font-size: 0.9375rem;
            margin: 0;
        }

        .chat-item-time {
            font-size: 0.75rem;
            color: var(--text-muted);
        }

        .chat-item-email {
            font-size: 0.8125rem;
            color: var(--text-secondary);
            margin: 0 0 8px;
        }

        .chat-item-preview {
            font-size: 0.875rem;
            color: var(--text-secondary);
            margin: 0 0 8px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .chat-item-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .chat-item-badges {
            display: flex;
            gap: 8px;
        }

        .badge {
            font-size: 0.75rem;
            padding: 4px 10px;
            border-radius: 9999px;
            font-weight: 500;
        }

        .badge-waiting {
            background-color: var(--badge-waiting);
            color: var(--badge-waiting-text);
        }

        .badge-high {
            background-color: var(--badge-high);
            color: var(--badge-high-text);
        }

        .badge-distributed {
            background-color: var(--badge-distributed);
            color: var(--badge-distributed-text);
        }

        .unread-badge {
            background-color: #ef4444;
            color: white;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.75rem;
            font-weight: 600;
            position: absolute;
            top: 16px;
            right: 20px;
        }

        .chat-main {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .chat-header {
            padding: 16px 24px;
            border-bottom: 1px solid var(--border-color);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .chat-header-user {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .chat-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #e5e7eb;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
            font-size: 1rem;
        }

        .chat-header-info h3 {
            margin: 0;
            font-size: 1rem;
            font-weight: 600;
        }

        .chat-header-info p {
            margin: 2px 0 0;
            font-size: 0.875rem;
            color: var(--text-secondary);
        }

        .chat-header-actions {
            display: flex;
            gap: 8px;
        }

        .chat-messages {
            flex: 1;
            padding: 24px;
            overflow-y: auto;
            background-color: #f9fafb;
        }

        .message-group {
            margin-bottom: 24px;
        }

        .message-sender {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 4px;
        }

        .message-sender-name {
            font-weight: 500;
            font-size: 0.875rem;
        }

        .message-sender-type {
            font-size: 0.75rem;
            color: var(--text-muted);
        }

        .message-time {
            font-size: 0.75rem;
            color: var(--text-muted);
            margin-left: 8px;
        }

        .message-bubble {
            padding: 12px 16px;
            border-radius: 8px;
            max-width: 80%;
            font-size: 0.9375rem;
            line-height: 1.5;
        }

        .message-customer {
            background-color: #f3f4f6;
            color: var(--text-primary);
            align-self: flex-start;
            border-bottom-left-radius: 2px;
        }

        .message-admin {
            background-color: var(--primary-color);
            color: white;
            align-self: flex-end;
            border-bottom-right-radius: 2px;
            margin-left: auto;
        }

        .chat-input-container {
            padding: 16px 24px;
            border-top: 1px solid var(--border-color);
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .chat-input {
            flex: 1;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            padding: 12px 16px;
            font-size: 0.9375rem;
            resize: none;
            height: 48px;
            max-height: 120px;
            overflow-y: auto;
        }

        .chat-input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.1);
        }

        .chat-send-btn {
            width: 48px;
            height: 48px;
            border-radius: 8px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.2s;
        }

        .chat-send-btn:hover {
            background-color: var(--primary-hover);
        }

        .chat-send-btn:disabled {
            background-color: #e5e7eb;
            cursor: not-allowed;
        }

        .chat-tools-btn {
            width: 48px;
            height: 48px;
            border-radius: 8px;
            background-color: white;
            color: var(--text-secondary);
            border: 1px solid var(--border-color);
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
        }

        .chat-tools-btn:hover {
            background-color: var(--bg-hover);
            color: var(--text-primary);
        }

        .distribution-select {
            width: 100%;
            padding: 10px 12px;
            border-radius: 6px;
            border: 1px solid var(--border-color);
            font-size: 0.875rem;
            color: var(--text-primary);
            background-color: white;
            margin-top: 16px;
            appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='%236b7280'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M19 9l-7 7-7-7'%3E%3C/path%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 12px center;
            background-size: 16px;
            padding-right: 36px;
        }

        .distribution-select:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.1);
        }

        .empty-state {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
            color: var(--text-muted);
            text-align: center;
            padding: 2rem;
        }

        .empty-state i {
            font-size: 3rem;
            margin-bottom: 1rem;
            color: #d1d5db;
        }

        .empty-state h3 {
            font-size: 1.25rem;
            font-weight: 500;
            margin-bottom: 0.5rem;
            color: var(--text-primary);
        }

        .empty-state p {
            font-size: 0.875rem;
        }

        .loading-spinner {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }

        .loading-spinner i {
            font-size: 2rem;
            color: var(--primary-color);
        }

        /* Custom scrollbar */
        .chat-list::-webkit-scrollbar,
        .chat-messages::-webkit-scrollbar,
        .chat-input::-webkit-scrollbar {
            width: 6px;
        }

        .chat-list::-webkit-scrollbar-track,
        .chat-messages::-webkit-scrollbar-track,
        .chat-input::-webkit-scrollbar-track {
            background: transparent;
        }

        .chat-list::-webkit-scrollbar-thumb,
        .chat-messages::-webkit-scrollbar-thumb,
        .chat-input::-webkit-scrollbar-thumb {
            background-color: #d1d5db;
            border-radius: 20px;
        }

        .chat-list::-webkit-scrollbar-thumb:hover,
        .chat-messages::-webkit-scrollbar-thumb:hover,
        .chat-input::-webkit-scrollbar-thumb:hover {
            background-color: #9ca3af;
        }

        .stats-container {
            grid-template-columns: 1fr;
            gap: 1rem;
        }

        @media (max-width: 1024px) {
            .stats-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        .stats-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card .stat-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-bottom: 1rem;
        }

        .stat-card .stat-icon {
            width: 48px;
            height: 48px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.25rem;
            color: white;
        }

        .stat-card.new .stat-icon {
            background: linear-gradient(135deg, var(--primary-color), var(--primary-hover));
        }

        .stat-card.active .stat-icon {
            background: linear-gradient(135deg, var(--success-color), #059669);
        }

        .stat-card.priority .stat-icon {
            background: linear-gradient(135deg, var(--warning-color), #d97706);
        }

        .stat-card.total .stat-icon {
            background: linear-gradient(135deg, var(--danger-color), #dc2626);
        }

        .stat-card .stat-number {
            font-size: 2rem;
            font-weight: 800;
            color: var(--text-primary);
            margin-bottom: 0.5rem;
            line-height: 1;
        }

        .stat-card .stat-label {
            color: var(--text-secondary);
            font-size: 0.875rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .stat-card .stat-trend {
            font-size: 0.75rem;
            color: var(--success-color);
            font-weight: 600;
            margin-top: 0.5rem;
        }
    </style>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <div id="chat-container" class="chat-container"
        @if (isset($conversation) && $conversation) data-conversation-id="{{ $conversation->id }}" @endif
        data-user-id="{{ auth()->id() }}" data-user-type="admin">
        <!-- Sidebar: Danh sách cuộc trò chuyện -->
        <div class="chat-sidebar" style="width:26%">
            <div class="chat-sidebar-header">
                <div class="relative mb-2">
                    <span class="absolute left-3 top-2.5 text-gray-400"></span>
                    <input id="chat-search" type="text" class="form-control w-100 w-full" style="width:100%"
                        placeholder="Tìm kiếm cuộc trò chuyện...">
                </div>
                <div class="flex items-center gap-2">
                    <select id="chat-status-filter" class="form-select flex-1">
                        <option value="all">Tất cả trạng thái</option>
                        <option value="new">Chờ phản hồi</option>
                        <option value="distributed">Đã phân phối</option>
                        <option value="closed">Đã đóng</option>
                    </select>
                    <button id="refresh-chat-list" class="btn btn-light px-2"><i class="fas fa-sync-alt"></i></button>
                </div>
            </div>
            <div id="chat-list" class="chat-list">
                @forelse ($conversations as $conv)
                    <div class="chat-item {{ $conv->id == optional($conversation)->id ? 'active' : '' }}  relative"
                        data-conversation-id="{{ $conv->id }}" data-status="{{ $conv->status }}"
                        data-customer-name="{{ $conv->customer->full_name ?? ($conv->customer->name ?? 'Khách hàng') }}"
                        data-customer-email="{{ $conv->customer->email }}"
                        data-branch-name="{{ $conv->branch ? $conv->branch->name : '' }}">
                        <div class="flex items-center gap-3 w-full min-w-0">
                            <div class="flex flex-col items-center justify-center relative">
                                <div
                                    class="chat-item-avatar mb-5 w-12 h-12 rounded-full flex items-center justify-center font-bold text-white text-lg {{ $conv->id == optional($conversation)->id ? 'bg-blue-500' : 'bg-orange-500' }}">
                                    {{ strtoupper(substr($conv->customer->full_name ?? ($conv->customer->name ?? 'K'), 0, 1)) }}
                                </div>
                            </div>
                            <div class="flex-1 min-w-0">
                                <div class="flex items-center gap-2">
                                    <span
                                        class="chat-item-name truncate font-semibold text-base">{{ $conv->customer->full_name ?? ($conv->customer->name ?? 'Khách hàng') }}</span>
                                </div>
                                <div class="flex items-center gap-2 mt-1">
                                    <span
                                        class="chat-item-preview truncate text-sm text-gray-500 flex-1">{{ $conv->messages->last()->message ?? '...' }}</span>
                                </div>
                                <div class="flex items-center gap-2 mt-1">
                                    <span
                                        class="chat-item-time text-xs text-gray-400">{{ $conv->updated_at->format('H:i') }}</span>
                                </div>
                            </div>
                            @if ($conv->messages->where('is_read', false)->where('sender_id', '!=', auth()->id())->count() > 0)
                                <span
                                    class="unread-badge ml-2 absolute right-2 bottom-2">{{ $conv->messages->where('is_read', false)->where('sender_id', '!=', auth()->id())->count() }}</span>
                            @endif
                        </div>
                        <div class="chat-item-badges mt-2 flex flex-row flex-wrap gap-2">
                            @if ($conv->status == 'new')
                                <span class="px-3 py-1 text-xs rounded-full bg-yellow-100 text-yellow-800">
                                    Chờ phản hồi
                                </span>
                            @elseif ($conv->status == 'active' || $conv->status == 'distributed')
                                <span class="px-3 py-1 text-xs rounded-full bg-blue-100 text-blue-800">
                                    Đã phân phối
                                </span>
                            @elseif ($conv->status == 'closed')
                                <span class="px-3 py-1 text-xs rounded-full bg-gray-200 text-gray-800">
                                    Đã đóng
                                </span>
                            @endif

                            @if ($conv->branch)
                                <span class="px-3 py-1 text-xs rounded-full bg-gray-800 text-white">
                                    {{ $conv->branch->name }}
                                </span>
                            @endif
                        </div>

                    </div>
                @empty
                    <div class="p-4 text-center ">Không có cuộc trò chuyện nào.</div>
                @endforelse
            </div>
        </div>
        <!-- Main Chat -->
        <div class="chat-main" style="width:55%">
            @php
                $hasConversation = isset($conversation) && $conversation;
            @endphp
            @if ($hasConversation)
                <div class="chat-header">
                    <div class="chat-header-user">
                        <div class="chat-avatar" id="chat-avatar">
                            {{ strtoupper(substr($conversation->customer->full_name ?? ($conversation->customer->name ?? 'K'), 0, 1)) }}
                        </div>
                        <div class="chat-header-info">
                            <h3 id="chat-customer-name">
                                {{ $conversation->customer->full_name ?? ($conversation->customer->name ?? 'Khách hàng') }}
                            </h3>
                            <p id="chat-customer-email">{{ $conversation->customer->email }}</p>
                        </div>
                    </div>
                    <div class="chat-header-actions" id="chat-header-actions">
                        <span
                            class="badge status-badge status-{{ $conversation->status }}">{{ ucfirst($conversation->status) }}</span>
                        @if ($conversation->branch)
                            <span class="badge badge-xs branch-badge ml-2"
                                id="main-branch-badge">{{ $conversation->branch->name }}</span>
                        @endif
                        <button class="chat-tools-btn"><i class="fas fa-phone"></i></button>
                        <button class="chat-tools-btn"><i class="fas fa-video"></i></button>
                    </div>
                </div>
                <div class="chat-messages" id="chat-messages">
                    <!-- Tin nhắn sẽ được load bằng JS ChatCommon -->
                </div>
                <div id="admin-typing-indicator" class="text-xs text-gray-500 px-4 py-2"></div>
                <div class="chat-input-container">
                    <form id="chat-form" enctype="multipart/form-data" class="flex w-full gap-2">
                        <textarea id="chat-input-message" class="chat-input" placeholder="Nhập tin nhắn..."></textarea>
                        <input type="file" id="imageInput" class="hidden" name="image" accept="image/*">
                        <input type="file" id="fileInput" class="hidden" name="file"
                            accept="application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/zip,application/x-rar-compressed,application/octet-stream">
                        <button type="button" id="attachImageBtn" class="chat-tools-btn" title="Gửi ảnh"><i
                                class="fas fa-image"></i></button>
                        <button type="button" id="attachFileBtn" class="chat-tools-btn" title="Gửi file"><i
                                class="fas fa-paperclip"></i></button>

                        <button type="submit" id="chat-send-btn" class="chat-send-btn"><i
                                class="fas fa-paper-plane"></i></button>
                    </form>
                </div>
            @else
                <div class="flex flex-col items-center justify-center h-full p-8 text-center ">
                    <img src="https://cdn-icons-png.flaticon.com/512/4076/4076549.png" alt="No chat"
                        style="width:80px;height:80px;opacity:0.5;">
                    <h3 class="mt-4 mb-2 text-lg font-semibold">Chưa có cuộc trò chuyện nào</h3>
                    <p>Bạn sẽ thấy các cuộc trò chuyện với khách hàng tại đây khi có tin nhắn mới.</p>
                </div>
            @endif
        </div>
        <!-- Customer Info -->
        <div class="chat-sidebar border-l" style="width:20%">
            <div class="flex flex-col items-center gap-2 p-4">
                <div class="w-16 h-16 bg-gray-200 rounded-full flex items-center justify-center font-bold text-xl mb-2"
                    id="customer-info-avatar">
                    @if ($hasConversation)
                        {{ strtoupper(substr($conversation->customer->full_name ?? ($conversation->customer->name ?? 'K'), 0, 1)) }}
                    @else
                        ?
                    @endif
                </div>
                <div class="font-bold" id="customer-info-name">
                    @if ($hasConversation)
                        {{ $conversation->customer->full_name ?? ($conversation->customer->name ?? 'Khách hàng') }}
                    @else
                        Khách hàng
                    @endif
                </div>
                <div class="text-xs text-gray-500" id="customer-info-email">
                    @if ($hasConversation)
                        {{ $conversation->customer->email }}
                    @endif
                </div>
                <div class="text-xs text-gray-500" id="customer-info-phone">SĐT:
                    @if ($hasConversation)
                        {{ $conversation->customer->phone ?? '---' }}
                    @else
                        ---
                    @endif
                </div>
                <div class="text-xs text-gray-500">Trạng thái: <span class="font-semibold" id="customer-info-status">
                        @if ($hasConversation)
                            {{ ucfirst($conversation->status) }}
                        @endif
                    </span></div>
                <div class="text-xs text-gray-500">Lần cuối hoạt động: @if ($hasConversation)
                        {{ $conversation->updated_at->diffForHumans() }}
                    @endif
                </div>
                @if ($hasConversation && $conversation->branch)
                    <div class="mt-2"><span class="badge badge-xs branch-badge ml-2"
                            id="customer-info-branch-badge">{{ $conversation->branch->name }}</span></div>
                @endif
            </div>
            <div class="p-4 flex justify-end">
                <div class="w-full flex flex-col items-end">
                    @if ($hasConversation)
                        <select class="distribution-select form-select w-full max-w-xs" id="distribution-select"
                            data-conversation-id="{{ $conversation->id }}"
                            @if ($conversation->branch_id) style="display:none" @endif>
                            <option value="" disabled selected>Chọn chi nhánh</option>
                            @foreach ($branches as $branch)
                                <option value="{{ $branch->id }}"
                                    {{ $conversation->branch_id == $branch->id ? 'selected' : '' }}>{{ $branch->name }}
                                </option>
                            @endforeach
                        </select>
                    @endif
                </div>
            </div>
            <div class="p-4">
                <a href="#" style="background-color: #111827" class="btn w-full text-white">Xem lịch sử đơn
                    hàng</a>
            </div>
        </div>
    </div>

    <script src="https://js.pusher.com/8.2.0/pusher.min.js"></script>
    <script src="{{ asset('js/chat-realtime.js') }}" defer></script>
@endsection
