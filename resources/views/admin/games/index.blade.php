<x-layout>
    <x-slot name="subtitle">
        Games
    </x-slot>

    <h2>Games</h2>
    <form method="GET" action={{ url('admin/games') }}>
        <input type="search" name="search" placeholder="Search games...">
        <button type="submit">Search</button>

    </form>
    <table id="gameTbl">
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Author</th>
                <th>Created At</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($games as $game)
                <tr>
                    <td>{{ $game-> title }}</td>
                    <td>{{ $game-> description }}</td>
                    <td>{{ optional($game->author)->username ?? 'N/A' }}</td>
                    <td>{{ $game->created_at->format('Y-m-d') }}</td>

                    <td>
                        <a href="{{ url('admin/games/' . $game->id) }}">View Game</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $games->links() }}
</x-layout>