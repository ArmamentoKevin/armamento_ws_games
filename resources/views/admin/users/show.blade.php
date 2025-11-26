<x-layout>
    <x-slot name="subtitle">{{ $user->username }}</x-slot>

    <h2>{{ $user->username }}</h2>

    <p>Email: {{ $user->email }}</p>
    <p>Registration Date: {{ $user->created_at }}</p>
    <p>Last Login: {{ $user->last_login ?? 'Never' }}</p>

    <button class="action-btn">Block</button>

    <section>
        <h3>Developed Games</h3>
        @if($user->games->isEmpty())
            <p>This user has not developed any games yet.</p>
        @else
            @foreach ($user->games as $game)
                <div class="game-card">
                    <h4>{{ $game->title }}</h4>
                    <p>{{ $game->description }}</p>
                </div>
            @endforeach
        @endif
    </section>

    <section>
        <h3>Played Games</h3>
        @if($user->playedGames->isEmpty())
            <p>This user has not played any games yet.</p>
        @else
            @foreach ($user->playedGames as $game)
                <div class="game-card">
                    <h4>{{ $game->title }}</h4>
                    <p>{{ $game->description }}</p>
                    <p>Highest Score: {{ $game->pivot->score }}</p>
                </div>
            @endforeach
        @endif
    </section>
</x-layout>
