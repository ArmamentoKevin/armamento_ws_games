<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GameController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Admin dashboard
Route::get('/admin', [AdminController::class, 'index']);

// Route for Platform user
Route::get('/admin/users',[UserController::class,'index']);

// modifying the user profile
Route::get('/admin/users/{user}',[UserController::class,'show']);

// All games
Route::get('/admin/games',[GameController::class,'index'])->name('admin.games.index');

//modifying games
Route::get('/admin/games/{game}',[GameController::class,'show']);

// Block user
Route::put('/admin/users/{user}/block',[UserController::class, 'block']);

// Unblock user
Route::put('/admin/users/{user}/unblock',[UserController::class, 'unblock']);

// Delete game
Route::delete('/admin/games/{game}',[GameController::class, 'destroy']);