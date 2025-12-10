<x-layout>
    <x-slot name="subtitle">{{ $game->title }}</x-slot>

    <div class="container">

        <h1>{{ $game->title }}</h1>

        <p><strong>Description:</strong> {{ $game->description }}</p>
        <p><strong>Author:</strong> {{ $game->author->username ?? 'Unknown' }}</p>
        <p><strong>Created at:</strong> {{ $game->created_at->format('M d, Y') }}</p>

        <hr>

        <h2>Top Scores</h2>

        @if($game->topScores->isEmpty())
            <p>No scores for this game yet.</p>
        @else
            <ol>
                @foreach ($game->topScores as $score)
                    <li>
                        {{ $score->user->username ?? 'Unknown User' }}
                        — {{ $score->score }}
                        ({{ $score->timestamp }})
                    </li>
                @endforeach
            </ol>
        @endif

        <a href="{{ url('/games') }}" class="btn btn-primary">Back to Games</a>
    </div>
</x-layout>
