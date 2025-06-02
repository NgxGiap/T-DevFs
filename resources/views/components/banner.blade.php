@if ($banners->isNotEmpty())
    <div class="relative h-[300px] sm:h-[400px] md:h-[500px] overflow-hidden" id="banner-slider">
        @foreach ($banners as $index => $banner)
            <div class="banner-slide absolute inset-0 transition-opacity duration-1000 {{ $index === 0 ? 'opacity-100' : 'opacity-0' }}">
                <div class="relative h-full w-full">
                    @if ($banner->position === 'homepage')
                        <a href="{{ url('/products/' . $banner->link) }}">
                            <img src="{{ Str::startsWith($banner->image_path, ['http://', 'https://']) ? $banner->image_path : asset('storage/' . $banner->image_path) }}" 
                                 alt="{{ $banner->title }}" class="object-cover w-full h-full">
                        </a>
                    @else
                        <img src="{{ Str::startsWith($banner->image_path, ['http://', 'https://']) ? $banner->image_path : asset('storage/' . $banner->image_path) }}" 
                             alt="{{ $banner->title }}" class="object-cover w-full h-full">
                    @endif
                    <div class="absolute inset-0 bg-black/30"></div>
                    <div class="absolute inset-0 flex flex-col items-center justify-center text-center text-white p-4">
                        <h2 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-2 sm:mb-4">{{ $banner->title }}</h2>
                        <p class="text-sm sm:text-base md:text-lg mb-4 sm:mb-6 max-w-md">{{ $banner->description }}</p>
                        @if ($banner->position === 'homepage')
                            <a href="{{ url('/products/' . $banner->link) }}" class="bg-orange-500 hover:bg-orange-600 text-white px-6 py-3 rounded-md font-medium transition-colors">
                                Xem Thêm
                            </a>
                        @endif
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endif