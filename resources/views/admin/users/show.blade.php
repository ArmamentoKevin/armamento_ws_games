<x-layout>
    <x-slot:subtitle>
        {{ $user->username }}
</x-slot>
       <h2>{{ $user->username }}</h2>
       <p>Email: {{ $user->email }} </p>
       <p>Registration Date:  {{ $user->created_at }}</p>
       <p>Last Login:  {{ $user->last_login ?? 'Never' }}</p>
       <button>Block</button>
       
       <section>
        <header> Developed Games</header>
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
        <header> Played Games </header>
        @if($user->games->isEmpty())
            <p>This user has not played any games yet.</p>
        @else
            @foreach ($user->scores as $score)
                <div class="played-game-card">
                    <h4>{{ $score->game->title }}</h4>
                    <p>Score: {{ $score->points }}</p>
                </div>
            @endforeach
        @endif
       </section>
      
</x-layout>