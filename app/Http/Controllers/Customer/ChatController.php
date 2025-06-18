<?php

namespace App\Http\Controllers\Customer;

use App\Events\Chat\TypingStatus;
use App\Models\Conversation;
use App\Models\ChatMessage;

use App\Events\Chat\NewMessage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class ChatController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function sendMessage(Request $request)
    {
        try {
            $userId = Auth::id();
            Log::info('Customer sending message', [
                'conversation_id' => $request->conversation_id,
                'message' => $request->message,
                'user_id' => $userId
            ]);

            $conversation = Conversation::where('id', $request->conversation_id)
                ->where('customer_id', $userId)
                ->first();

            if (!$conversation) {
                return response()->json([
                    'success' => false,
                    'message' => 'Không tìm thấy cuộc trò chuyện'
                ], 404);
            }

            Log::info('Customer conversation found', ['conversation' => $conversation]);

            $receiverId = $conversation->branch_id ?? 11;

            $attachmentPath = null;
            $attachmentType = null;
            $messageText = $request->message;
            if ($request->hasFile('attachment')) {
                $file = $request->file('attachment');
                $attachmentPath = $file->store('chat-attachments', 'public');
                $attachmentType = str_starts_with($file->getMimeType(), 'image/') ? 'image' : 'file';
                Log::info('Customer gửi file', ['file' => $attachmentPath, 'type' => $attachmentType]);
                if (!$messageText) {
                    $messageText = $attachmentType === 'image' ? 'Đã gửi ảnh' : 'Đã gửi file';
                }
            }
            Log::info('Customer tạo message', ['attachment' => $attachmentPath, 'attachment_type' => $attachmentType, 'message' => $messageText]);
            if (!$messageText && !$attachmentPath) {
                Log::warning('Customer gửi tin nhắn rỗng', ['conversation_id' => $request->conversation_id]);
                return response()->json([
                    'success' => false,
                    'message' => 'Bạn phải nhập nội dung hoặc đính kèm file!'
                ], 422);
            }
            $messageData = [
                'conversation_id' => $request->conversation_id,
                'sender_id' => $userId,
                'receiver_id' => $receiverId,
                'sender_type' => 'customer',
                'message' => $messageText,
                'attachment' => $attachmentPath,
                'attachment_type' => $attachmentType,
                'sent_at' => now(),
                'status' => 'sent'
            ];
            Log::info('Customer message data before create', $messageData);
            $message = ChatMessage::create($messageData);
            $message->load(['sender' => function ($query) {
                $query->select('id', 'full_name');
            }]);
            broadcast(new NewMessage($message, $request->conversation_id))->toOthers();
            return response()->json([
                'success' => true,
                'message' => $message
            ], 201);
        } catch (\Exception $e) {
            Log::error('Customer send message error: ' . $e->getMessage());
            Log::error('Stack trace: ' . $e->getTraceAsString());
            return response()->json([
                'success' => false,
                'message' => 'Lỗi gửi tin nhắn! Vui lòng thử lại sau.'
            ], 500);
        }
    }

    public function getMessages(Request $request)
    {
        try {
            $userId = Auth::id();
            $conversationId = $request->conversation_id;

            Log::info('Getting messages', [
                'user_id' => $userId,
                'conversation_id' => $conversationId
            ]);

            // Kiểm tra cuộc hội thoại có thuộc về user không
            $conversation = Conversation::where('id', $conversationId)
                ->where('customer_id', $userId)
                ->first();

            if (!$conversation) {
                Log::warning('Conversation not found', [
                    'user_id' => $userId,
                    'conversation_id' => $conversationId
                ]);
                return response()->json([
                    'success' => false,
                    'message' => 'Không tìm thấy cuộc trò chuyện'
                ], 404);
            }

            Log::info('Found conversation', [
                'conversation' => $conversation->toArray()
            ]);

            // Lấy tin nhắn và thông tin người gửi
            $messages = ChatMessage::where('conversation_id', $conversationId)
                ->with(['sender' => function ($query) {
                    $query->select('id', 'full_name', 'email');
                }])
                ->orderBy('sent_at', 'asc')
                ->get();

            Log::info('Found messages', [
                'count' => $messages->count(),
                'messages' => $messages->toArray()
            ]);

            // Đánh dấu tin nhắn đã đọc
            ChatMessage::where('conversation_id', $conversationId)
                ->where('sender_id', '!=', $userId)
                ->whereNull('read_at')
                ->update(['read_at' => now()]);

            return response()->json([
                'success' => true,
                'conversation' => $conversation,
                'messages' => $messages
            ]);
        } catch (\Exception $e) {
            Log::error('Get messages error: ' . $e->getMessage());
            Log::error('Stack trace: ' . $e->getTraceAsString());
            Log::error('Request data: ' . json_encode($request->all()));

            return response()->json([
                'success' => false,
                'message' => 'Lỗi lấy tin nhắn: ' . $e->getMessage()
            ], 500);
        }
    }


    public function createConversation(Request $request)
    {
        // Kiểm tra xem khách hàng đã có cuộc trò chuyện chưa
        $existingConversation = Conversation::where('customer_id', Auth::id())->first();
        if ($existingConversation) {
            return response()->json([
                'success' => false,
                'message' => 'Bạn đã có một cuộc trò chuyện. Vui lòng sử dụng cuộc trò chuyện hiện tại.'
            ], 422);
        }

        $validator = Validator::make($request->all(), [
            'message' => 'required|string',
            'attachment' => 'nullable|file|max:10240', // 10MB max
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $userId = Auth::id();

            // Tạo conversation mới
            $conversation = Conversation::create([
                'customer_id' => $userId,
                'branch_id' => null, // Ban đầu chưa có branch
                'status' => 'new',
                'is_distributed' => false,
            ]);

            // Tạo tin nhắn đầu tiên từ admin
            $adminId = 11; // ID admin
            $adminMessage = ChatMessage::create([
                'conversation_id' => $conversation->id,
                'sender_id' => $adminId,
                'receiver_id' => $userId,
                'sender_type' => 'super_admin',
                'receiver_type' => 'customer',
                'message' => 'Xin chào! Tôi có thể giúp gì cho bạn hôm nay? 😊',
                'attachment' => null,
                'attachment_type' => null,
                'sent_at' => now(),
                'status' => 'sent'
            ]);

            Log::info('New conversation created with first admin message', [
                'conversation_id' => $conversation->id,
                'customer_id' => $userId,
                'message_id' => $adminMessage->id
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Cuộc trò chuyện đã được tạo thành công',
                'data' => [
                    'conversation' => $conversation,
                    'message' => $adminMessage
                ]
            ], 201);
        } catch (\Exception $e) {
            Log::error('Create conversation error: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Lỗi tạo cuộc trò chuyện: ' . $e->getMessage()
            ], 500);
        }
    }

    public function getConversations()
    {
        try {
            $userId = Auth::id();

            $conversations = Conversation::where('customer_id', $userId)
                ->with(['branch', 'messages' => function ($query) {
                    $query->latest()->limit(1);
                }])
                ->orderBy('updated_at', 'desc')
                ->get();

            return response()->json(['conversations' => $conversations]);
        } catch (\Exception $e) {
            Log::error('Get conversations error: ' . $e->getMessage());

            return response()->json([
                'success' => false,
                'message' => 'Lỗi lấy danh sách cuộc trò chuyện: ' . $e->getMessage()
            ], 500);
        }
    }

    public function index()
    {
        $conversations = Conversation::where('customer_id', Auth::id())
            ->with(['branch', 'messages.sender'])
            ->orderBy('updated_at', 'desc')
            ->get();

        return view('customer.chat', compact('conversations'));
    }

    public function typing(Request $request)
    {
        Log::info('[CUSTOMER] typing', [
            'user_id' => Auth::id(),
            'conversation_id' => $request->conversation_id,
            'is_typing' => $request->is_typing,
            'request_data' => $request->all(),
            'ip' => $request->ip(),
        ]);
        $request->validate([
            'conversation_id' => 'required|exists:conversations,id',
            'is_typing' => 'required|boolean'
        ]);
        $conversation = Conversation::findOrFail($request->conversation_id);
        $userId = Auth::id();
        $user = Auth::user();
        $userType = 'customer';
        $userName = $user->name ?? 'Khách hàng';
        Log::info('[CUSTOMER] Broadcasting TypingStatus', [
            'conversation_id' => $request->conversation_id,
            'user_id' => $userId,
            'is_typing' => $request->is_typing,
            'user_type' => $userType,
            'user_name' => $userName
        ]);
        broadcast(new TypingStatus(
            $request->conversation_id,
            $userId,
            $request->is_typing,
            $userType,
            $userName
        ))->toOthers();
        return response()->json(['success' => true]);
    }
}
