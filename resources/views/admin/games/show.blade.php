<x-layout>
    <x-slot:subtitle>
        {{$game->title}}
</x-slot>
       <h2> {{$game->title}}</h2>
       <p>Title: {{$game->title}}</p>
       <p>Description: {{$game->description}}</p>
       <p>Author:  {{ $game->username }}</p>
       <p>Created at: {{ $game->created_at }}</p>

       <button>Delete</button>

       <section>
        <header>
            Top Scores
        </header>
       </section>

</x-layout>