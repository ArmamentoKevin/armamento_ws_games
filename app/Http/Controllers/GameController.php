<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;

class GameController extends Controller
{
    public function index()
    {
        $games = Game::with('author')->get();
        return view('admin.games.index', compact('games'));
    }

    public function show(Game $game)
    {
        return view('admin.games.show', compact('game'));
    }
}
