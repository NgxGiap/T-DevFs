@extends('layouts.admin.contentLayoutMaster')

@section('title', 'Super Admin Dashboard')

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

    <div id="chat-container" data-conversation-id="{{ $selectedConversation->id ?? '' }}" data-user-id="{{ auth()->id() }}"
        data-user-type="admin">
        <div id="chat-messages" class="chat-messages"></div>
        <div class="chat-container">
            <!-- Chat Sidebar -->

            <div class="chat-sidebar">

                <div class="chat-sidebar-header">
                    <h2>Super Admin Dashboard</h2>
                    <p>Quản lý và phân phối chat</p>
                </div>

                <div class="chat-list">
                    @forelse($conversations as $conversation)
                        @php
                            $unreadCount = $conversation->messages->where('is_read', false)->count();
                            $firstLetter = strtoupper(
                                substr(
                                    $conversation->customer->full_name ?? ($conversation->customer->name ?? 'K'),
                                    0,
                                    1,
                                ),
                            );
                        @endphp
                        <div class="chat-item {{ $loop->first ? 'active' : '' }}"
                            data-conversation-id="{{ $conversation->id }}"
                            data-customer-name="{{ $conversation->customer->full_name ?? ($conversation->customer->name ?? 'Khách hàng') }}"
                            data-customer-email="{{ $conversation->customer->email ?? 'test@customer.com' }}"
                            data-status="{{ $conversation->status }}">
                            @if ($unreadCount > 0)
                                <div class="unread-badge">{{ $unreadCount }}</div>
                            @endif
                            <div class="chat-item-header">
                                <h3 class="chat-item-name">
                                    {{ $conversation->customer->full_name ?? ($conversation->customer->name ?? 'Khách hàng') }}
                                </h3>
                                <span class="chat-item-time">{{ $conversation->updated_at->format('H:i') }}</span>
                            </div>
                            <p class="chat-item-email">{{ $conversation->customer->email ?? 'test@customer.com' }}</p>
                            <p class="chat-item-preview">
                                @if ($conversation->messages->last())
                                    {{ Str::limit($conversation->messages->last()->content ?? ($conversation->messages->last()->message ?? 'Tệp đính kèm'), 60) }}
                                @else
                                    {{ $conversation->subject ?? 'Cuộc trò chuyện mới' }}
                                @endif
                            </p>
                            <div class="chat-item-footer">
                                <div class="chat-item-badges">
                                    @switch($conversation->status)
                                        @case('new')
                                            <span class="badge badge-waiting">Chờ xử lý</span>
                                            <span class="badge badge-high">Cao</span>
                                        @break

                                        @case('distributed')
                                            <span class="badge badge-distributed">Đã phân công</span>
                                        @break

                                        @case('closed')
                                            <span class="badge badge-waiting">Đã đóng</span>
                                        @break

                                        @default
                                            <span class="badge badge-waiting">Đang xử lý</span>
                                    @endswitch

                                </div>
                            </div>

                            @if ($conversation->status === 'new')
                                <select class="distribution-select" data-conversation-id="{{ $conversation->id }}">
                                    <option value="" disabled selected>Phân công cho chi nhánh</option>
                                    @foreach ($branches as $branch)
                                        <option value="{{ $branch->id }}">{{ $branch->name }}</option>
                                    @endforeach
                                </select>
                            @endif
                        </div>
                        @empty
                            <div class="empty-state">
                                <i class="fas fa-inbox"></i>
                                <h3>Không có cuộc trò chuyện</h3>
                                <p>Chưa có cuộc trò chuyện nào được tạo</p>
                            </div>
                        @endforelse
                    </div>
                </div>

                <!-- Chat Main Area -->
                <div class="chat-main" id="chat-main">
                    @if ($conversations->count() > 0)
                        @php $firstConversation = $conversations->first(); @endphp
                        <!-- Chat Header -->
                        <div class="chat-header" id="chat-header">
                            <div class="chat-header-user">
                                <div class="chat-avatar" id="chat-avatar">
                                    {{ strtoupper(substr($firstConversation->customer->full_name ?? ($firstConversation->customer->name ?? 'K'), 0, 1)) }}
                                </div>
                                <div class="chat-header-info">
                                    <h3 id="chat-customer-name">
                                        {{ $firstConversation->customer->full_name ?? ($firstConversation->customer->name ?? 'Khách hàng') }}
                                    </h3>
                                    <p id="chat-customer-email">
                                        {{ $firstConversation->customer->email ?? 'test@customer.com' }}
                                    </p>
                                </div>
                            </div>
                            <div class="chat-header-actions" id="chat-header-actions">
                                @switch($firstConversation->status)
                                    @case('new')
                                        <span class="badge badge-waiting">Chờ xử lý</span>
                                        <span class="badge badge-high">Cao</span>
                                    @break

                                    @case('distributed')
                                        <span class="badge badge-distributed">Đã phân công</span>
                                    @break

                                    @case('closed')
                                        <span class="badge badge-waiting">Đã đóng</span>
                                    @break

                                    @default
                                        <span class="badge badge-waiting">Đang xử lý</span>
                                @endswitch
                            </div>
                        </div>

                        <!-- Chat Messages -->
                        <div class="chat-messages" id="chat-messages">
                            <!-- Messages will be loaded here via AJAX -->
                        </div>

                        <!-- Chat Input -->
                        <div class="chat-input-container">
                            <button class="chat-tools-btn" id="attachFileBtn">
                                <i class="fas fa-paperclip"></i>
                            </button>
                            <textarea id="message-input" class="chat-input" placeholder="Nhập tin nhắn..." rows="1"></textarea>
                            <button id="sendBtn" class="chat-send-btn" disabled>
                                <i class="fas fa-paper-plane"></i>
                            </button>
                        </div>
                    @else
                        <div class="empty-state">
                            <i class="fas fa-comments"></i>
                            <h3>Chọn cuộc trò chuyện</h3>
                            <p>Chọn một cuộc trò chuyện từ danh sách để bắt đầu nhắn tin</p>
                        </div>
                    @endif
                </div>
            </div>

            <!-- Hidden file input -->
            <input type="file" id="fileInput" style="display: none;" accept="image/*,.pdf,.doc,.docx,.txt,.zip,.rar">
        </div>
        </div>

        <script src="https://js.pusher.com/8.2.0/pusher.min.js"></script>
        <script src="{{ asset('js/echo.js') }}"></script>
        <script src="{{ asset('js/chat-common.js') }}" defer></script>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                        console.log('🚀 Admin Chat Dashboard Loading...');

                        // Global variables
                        const currentUserId = 1;
                        let selectedConversationId = {{ $conversations->first()->id ?? 'null' }};
                        let currentConversationData = null;

                        // DOM elements
                        const chatMessages = document.getElementById('chat-messages');
                        const messageInput = document.getElementById('messageInput');
                        const sendBtn = document.getElementById('sendBtn');
                        const attachFileBtn = document.getElementById('attachFileBtn');
                        const fileInput = document.getElementById('fileInput');
                        const chatHeader = document.getElementById('chat-header');
                        const chatAvatar = document.getElementById('chat-avatar');
                        const chatCustomerName = document.getElementById('chat-customer-name');
                        const chatCustomerEmail = document.getElementById('chat-customer-email');
                        const chatHeaderActions = document.getElementById('chat-header-actions');

                        console.log('✅ Initialized with conversation ID:', selectedConversationId);

                        // Initialize
                        init();

                        function init() {
                            setupEventListeners();
                            if (selectedConversationId) {
                                loadConversation(selectedConversationId);
                                var chatContainer = document.getElementById('chat-container');
                                if (!chatContainer) return;
                                var chat = new ChatCommon({
                                    conversationId: chatContainer.getAttribute('data-conversation-id'),
                                    userId: chatContainer.getAttribute('data-user-id'),
                                    userType: chatContainer.getAttribute('data-user-type'),
                                    api: {
                                        send: '{{ route('admin.chat.send') }}',
                                        getMessages: '{{ route('admin.chat.messages', [':id']) }}',
                                        distribute: '{{ route('admin.chat.distribute') }}'
                                    }
                                });

                                // Lắng nghe sự kiện change của select phân công (distribution-select) và gọi chat.distributeConversation(convId, branchId)
                                var distributeSelects = document.querySelectorAll('.distribution-select');
                                distributeSelects.forEach(function(select) {
                                    select.addEventListener('change', function() {
                                        var convId = this.getAttribute('data-conversation-id');
                                        var branchId = this.value;
                                        if (convId && branchId) {
                                            chat.distributeConversation(convId, branchId);
                                        }
                                    });
                                });
                            });
        </script>
    @endsection
