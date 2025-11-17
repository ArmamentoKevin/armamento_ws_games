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
Route::get('/admin/games',[GameController::class,'index']);

//modifying games
Route::get('/admin/games/{game}',[GameController::class,'show']);

// Block user
Route::put('/admin/users/{username}/block',function(){
    return "<h1> Blocking User... </h1>";
});

// Unblock user
Route::put('/admin/users/{username}/unblock',function(){
    return "<h1> Unblocking User... </h1>";
});

// Delete game
Route::delete('/admin/games/{slug}',function($games){
    return "<h1> Deleting Game </h1>";
});
