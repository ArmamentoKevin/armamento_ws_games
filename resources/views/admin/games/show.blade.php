<x-layout>
    <x-slot:subtitle>
        {{$game-> title}}
</x-slot>
<div class="section-header">
    <h2> {{$game-> title}}</h2>

    <form id="delete-form" action={{ url('admin/games/' . $game->slug) }} method="POST">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-danger" id="delete-btn">Delete Game</button>
    <p>Title: {{$game-> title}}</p>
    <p>Description: {{$game-> description}}</p>
    <p>Author:  {{ $game-> author-> username }}</p>
    <p>Created at: {{ $game-> created_at }}</p>

    <h3>Top Scores</h3>
    <div id="top-scores">
    @if($game->topScores->isEmpty())
        <p>No scores recorded for this game yet.</p>
    @else
        <ol>
            @foreach ($game->topScores as $score)
                <li>
                    {{ $score->user->username }}
                    {{ $score->score }}
                    {{ $score->timestamp}}
                </li>
            @endforeach
        </ol>
    @endif
    </div>

       <section>
       </section>

</x-layout>