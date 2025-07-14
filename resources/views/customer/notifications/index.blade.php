@extends('layouts.admin.contentLayoutMaster')

@section('content')
    <div class="container mx-auto py-4">
        <h2 class="text-xl font-bold mb-4">Tất cả thông báo</h2>
        <div class="space-y-2">
            @forelse($customerNotifications as $notification)
                <div class="p-3 rounded-md border {{ $notification->read_at ? 'bg-white' : 'bg-primary/10' }}">
                    <div class="font-semibold">{{ $notification->data['message'] ?? '' }}</div>
                    <div class="text-xs text-muted-foreground">{{ $notification->created_at->diffForHumans() }}</div>
                </div>
            @empty
                <div class="text-center text-muted-foreground">Không có thông báo nào.</div>
            @endforelse
        </div>
        <div class="mt-4">
            {{ $customerNotifications->links() }}
        </div>
    </div>
@endsection
//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
