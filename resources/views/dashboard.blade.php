<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                Dashboard
            </h2>
        </div>
    </x-slot>

    <div class="py-5 max-w-7xl mx-auto sm:px-6 lg:px-8">
        {{-- Check if there are games --}}
        @if($games->isEmpty())
            <p class="text-gray-600 dark:text-gray-400">No games available yet.</p>
        @else
            @foreach ($games as $game)
                <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg my-5 p-6">
                    <div class="flex justify-between items-center">
                        <h3 class="text-xl font-bold">
                            <a href="{{ route('games.show', $game->slug) }}" class="hover:underline">
                                {{ $game->title }}
                            </a>
                            by {{ optional($game->author)->username ?? 'Unknown' }}
                        </h3>
                        <p># of scores: {{ $game->scores->count() }}</p>
                    </div>
                    <div class="flex mt-4">
                        <a href="{{ route('games.show', $game->slug) }}">
                            <img src="{{ $game->thumbnail ? Storage::url($game->thumbnail) : asset('images/placeholder.jpg') }}"
                                 alt="{{ $game->title }}" class="w-64 h-auto rounded mr-4">
                        </a>
                        <p>{{ $game->description }}</p>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
</x-app-layout>
