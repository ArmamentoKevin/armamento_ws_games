<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Models\Game;
use Illuminate\Http\Request;

class GameController extends Controller
{
    /**
     * Display a listing of the games.
     */
    public function index()
    {
        // Get all games with their author and scores
        $games = Game::with(['author', 'scores'])->get();

        return view('dashboard', compact('games'));
    }

    /**
     * Show a specific game.
     */
    public function show(Game $game)
    {
        $game->load('author', 'topScores.user'); // eager load relationships
        return view('games.show', compact('game'));
    }
}
