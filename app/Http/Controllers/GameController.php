<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;

class GameController extends Controller
{

    public function index(Request $request)
    {
        $search = $request->input('search');

        $games = Game::when($search, function ($query, $search) {
            $query->where(function ($q) use ($search) {
                $q->where('title', 'LIKE', "%{$search}%")
                  ->orWhere('description', 'LIKE', "%{$search}%");
            });
        })
        ->paginate(10)
        ->withQueryString();

        return view('admin.games.index', compact('games', 'search'));
    }

    public function show(Game $game)
    {
        return view('admin.games.show', compact('game'));
    }

    public function destroy(Game $game)
    {
        $game->delete();

        return redirect()
            ->route('admin.games.show')
            ->with('success', 'Game deleted successfully.');
    }
}