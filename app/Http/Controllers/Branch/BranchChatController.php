<?php

namespace App\Http\Controllers\Branch;

use App\Http\Controllers\Controller;
use App\Models\Conversation;
use App\Models\ChatMessage;
use App\Models\Branch;
use App\Models\User;

use App\Events\Chat\NewMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class BranchChatController extends Controller
{
    public function __construct()
    {
        // Bỏ middleware để test dễ dàng
        // $this->middleware('auth');
    }

    public function index()
    {
        $user = Auth::user();
        // Lấy branch mà user này là manager
        $branch = Branch::where('manager_user_id', $user->id)->first();
        if (!$branch) {
            return abort(403, 'Bạn không phải quản lý của chi nhánh nào!');
        }
        $branchId = $branch->id;

        $conversations = Conversation::with(['customer', 'messages.sender'])
            ->whereNotNull('branch_id')
            ->where('branch_id', $branchId)
            ->whereIn('status', ['distributed', 'active', 'resolved'])
            ->orderBy('updated_at', 'desc')
            ->get();

        return view('branch.chat', compact('conversations', 'branch', 'user'));
    }

    public function apiGetConversation($id)
    {
        try {
            $user = Auth::user();
            $branch = Branch::where('manager_user_id', $user->id)->first();
            if (!$branch) {
                return response()->json([
                    'success' => false,
                    'message' => 'Bạn không phải quản lý của chi nhánh nào!'
                ], 403);
            }
            $branchId = $branch->id;

            $conversation = Conversation::with([
                'customer',
                'messages.sender'
            ])->where('branch_id', $branchId)
                ->findOrFail($id);

            $messages = $conversation->messages->map(function ($message) {
                return [
                    'id' => $message->id,
                    'sender_id' => $message->sender_id,
                    'message' => $message->message,
                    'attachment' => $message->attachment,
                    'attachment_type' => $message->attachment_type,
                    'created_at' => $message->created_at,
                    'type' => $message->is_system_message ? 'system' : 'normal',
                    'sender' => $message->sender ? [
                        'id' => $message->sender->id,
                        'name' => $message->sender->name,
                        'full_name' => $message->sender->full_name ?? $message->sender->name,
                        'email' => $message->sender->email,
                    ] : null
                ];
            });

            return response()->json([
                'success' => true,
                'messages' => $messages,
                'conversation' => [
                    'id' => $conversation->id,
                    'customer' => [
                        'id' => $conversation->customer?->id,
                        'name' => $conversation->customer?->name,
                        'full_name' => $conversation->customer?->full_name,
                        'email' => $conversation->customer?->email,
                    ],
                    'branch' => [
                        'id' => $conversation->branch?->id,
                        'name' => $conversation->branch?->name,
                    ],
                    'status' => $conversation->status,
                    'status_label' => method_exists($conversation, 'getStatusOptions') ? ($conversation::getStatusOptions()[$conversation->status] ?? $conversation->status) : $conversation->status,
                ]
            ]);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            Log::error('BranchChatController: Conversation not found', [
                'conversation_id' => $id,
                'branch_id' => isset($branchId) ? $branchId : null,
                'user_id' => Auth::id(),
                'conversations_of_branch' => isset($branchId) ? Conversation::where('branch_id', $branchId)->pluck('id')->toArray() : [],
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Không tìm thấy cuộc trò chuyện này thuộc chi nhánh của bạn!'
            ], 404);
        } catch (\Exception $e) {
            Log::error('BranchChatController: Error loading conversation', [
                'conversation_id' => $id,
                'branch_id' => isset($branchId) ? $branchId : null,
                'user_id' => Auth::id(),
                'error' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Lỗi tải chi tiết cuộc trò chuyện: ' . $e->getMessage()
            ], 500);
        }
    }

    public function sendMessage(Request $request)
    {
        try {
            $request->validate([
                'conversation_id' => 'required|exists:conversations,id',
                'message' => 'nullable|string',
                'attachment' => 'nullable|file|max:10240' // 10MB max
            ]);

            $user = Auth::user();
            // Lấy branch mà user này là manager
            $branch = Branch::where('manager_user_id', $user->id)->first();
            if (!$branch) {
                return response()->json([
                    'success' => false,
                    'message' => 'Bạn không phải quản lý của chi nhánh nào!'
                ], 403);
            }
            $branchId = $branch->id;

            // Log thông tin để debug
            Log::info('Branch send message attempt', [
                'conversation_id' => $request->conversation_id,
                'branch_id' => $branchId,
                'user_id' => $user->id,
                'user_branch_id' => $user->branch_id,
                'manager_user_id' => $branch->manager_user_id
            ]);

            // Lấy thông tin conversation trước để xác định receiver
            $conversation = Conversation::where('id', $request->conversation_id)
                ->where('branch_id', $branchId)
                ->first();

            if (!$conversation) {
                Log::error('Conversation not found or not belongs to branch', [
                    'conversation_id' => $request->conversation_id,
                    'branch_id' => $branchId,
                    'user_id' => $user->id,
                    'conversations_of_branch' => Conversation::where('branch_id', $branchId)->pluck('id')->toArray(),
                    'all_conversations' => Conversation::where('id', $request->conversation_id)->first()
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Không tìm thấy cuộc trò chuyện này thuộc chi nhánh của bạn!'
                ], 404);
            }

            // Gửi lại dữ liệu cho người dùng dựa trên customer_id
            $customerId = $conversation->customer_id;

            $attachmentPath = null;
            $attachmentType = null;

            if ($request->hasFile('attachment')) {
                $file = $request->file('attachment');
                $attachmentPath = $file->store('chat-attachments', 'public');
                $attachmentType = $file->getMimeType();

                if (str_starts_with($attachmentType, 'image/')) {
                    $attachmentType = 'image';
                } else {
                    $attachmentType = 'file';
                }
            }

            // Tạo data cho message
            $messageData = [
                'conversation_id' => $request->conversation_id,
                'sender_id' => $user->id,
                'receiver_id' => $customerId,
                'sender_type' => 'branch_staff',
                'message' => $request->message,
                'attachment' => $attachmentPath,
                'attachment_type' => $attachmentType,
                'sent_at' => now(),
                'status' => 'sent'
            ];

            // Tạo tin nhắn mới
            $message = ChatMessage::create($messageData);

            // Cập nhật trạng thái conversation
            if ($conversation->status === 'distributed') {
                $conversation->update([
                    'status' => 'active',
                    'updated_at' => now()
                ]);
            } else {
                $conversation->update(['updated_at' => now()]);
            }

            // Load relationship để gửi đầy đủ thông tin
            $message->load(['sender' => function ($query) {
                $query->select('id', 'full_name');
            }]);

            // Broadcast tin nhắn mới
            broadcast(new NewMessage($message, $request->conversation_id))->toOthers();

            return response()->json([
                'success' => true,
                'message' => 'Tin nhắn đã được gửi thành công',
                'data' => [
                    'id' => $message->id,
                    'message' => $message->message,
                    'attachment' => $message->attachment,
                    'attachment_type' => $message->attachment_type,
                    'created_at' => $message->created_at,
                    'sender' => [
                        'id' => $user->id,
                        'name' => 'Branch Staff'
                    ]
                ]
            ]);
        } catch (\Exception $e) {
            Log::error('Branch send message error: ' . $e->getMessage(), [
                'conversation_id' => $request->conversation_id ?? null,
                'branch_id' => $branchId ?? null,
                'user_id' => $user->id ?? null,
                'trace' => $e->getTraceAsString()
            ]);
            return response()->json([
                'success' => false,
                'message' => 'Lỗi gửi tin nhắn: ' . $e->getMessage()
            ], 500);
        }
    }

    public function updateStatus(Request $request)
    {
        try {
            $request->validate([
                'conversation_id' => 'required|exists:conversations,id',
                'status' => 'required|in:active,resolved,closed'
            ]);

            $userId = Auth::id() ?? 1;
            $branchId = Auth::user()->branch_id; // Lấy branch_id từ người dùng hiện tại

            // Verify the conversation belongs to this branch
            $conversation = Conversation::where('id', $request->conversation_id)
                ->where('branch_id', $branchId)
                ->firstOrFail();

            $oldStatus = $conversation->status;
            $newStatus = $request->status;

            $conversation->update([
                'status' => $newStatus,
                'updated_at' => now()
            ]);

            // Create system message about status change
            $statusMessages = [
                'active' => '🟢 Cuộc trò chuyện đã được kích hoạt',
                'resolved' => '✅ Cuộc trò chuyện đã được giải quyết',
                'closed' => '🔒 Cuộc trò chuyện đã được đóng'
            ];

            $systemMessage = ChatMessage::create([
                'conversation_id' => $conversation->id,
                'sender_id' => $userId,
                'receiver_id' => $conversation->customer_id,
                'sender_type' => 'branch_staff',
                'message' => $statusMessages[$newStatus] . ' bởi nhân viên chi nhánh',
                'sent_at' => now(),
                'status' => 'sent',
                'is_system_message' => true
            ]);

            // Broadcast system message
            try {
                broadcast(new NewMessage($systemMessage->load('sender'), $conversation->id))->toOthers();
            } catch (\Exception $e) {
                Log::error('Pusher broadcast error: ' . $e->getMessage());
            }

            return response()->json([
                'success' => true,
                'message' => 'Trạng thái đã được cập nhật thành công'
            ]);
        } catch (\Exception $e) {
            Log::error('Update status error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Lỗi cập nhật trạng thái: ' . $e->getMessage()
            ], 500);
        }
    }

    public function typing(Request $request)
    {
        $request->validate([
            'conversation_id' => 'required|exists:conversations,id',
            'is_typing' => 'required|boolean'
        ]);
        $conversation = Conversation::findOrFail($request->conversation_id);
        $userId = Auth::id();
        $user = Auth::user();
        $userType = 'branch';
        $userName = $user->name ?? 'Nhân viên chi nhánh';
        broadcast(new \App\Events\Chat\TypingStatus(
            $request->conversation_id,
            $userId,
            $request->is_typing,
            $userType,
            $userName
        ))->toOthers();
        return response()->json(['success' => true]);
    }
}
