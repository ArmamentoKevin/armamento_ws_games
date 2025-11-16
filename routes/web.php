<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Admin dashboard
Route::get('/admin', [AdminController::class, 'index']);

// Platform user page
Route::get('/admin/user/{username}', function ($username) {
    return view('admin.user.index', ['username' => $username]);
});

// All games
Route::get('/admin/games', function () {
    return view('admin.games.index');
});

// Individual game pages
Route::get('/admin/games/{game}', function ($game) {
    return view('admin.games.show', ['game' => $game]);
});

// Block user
Route::get('/admin/users/{username}/block', function ($username) {
    return "<h1>Blocking $username</h1>";
});

// Unblock user
Route::get('/admin/users/{username}/unblock', function ($username) {
    return "<h1>Unblocking $username</h1>";
});

// Delete game
Route::delete('/admin/games/{slug}', function ($slug) {
    return "<h1>Deleting game $slug</h1>";
});
