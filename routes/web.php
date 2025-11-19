<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GameController;
use App\Models\User;
use App\Models\Game;
use App\Models\Score;
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

// return games developed by user with ID 1
// Route::get('test',function(){
//    return User::find(1)->games;
// });
// need to import User model at the top
// use App\Models\User;
// Route::get('test',function(){
//     return User::where("email_verified_at", ">", "2024-05-05 12:00:00")->get();
// });

// Route::get('test2',function(){
//     return User::where('is_blocked', 0)->count();
// });

// Route::get('test3',function(){
//     return User::whereIn('id',[1,2,3])->get();
// });

// Route::get('test4',function(){
//     return Score::max('score');
// });