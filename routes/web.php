<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\Users\GameController as UsersGameController;



// PUBLIC HOME PAGE
Route::get('/', function () {
    return view('welcome');
});



// USER ROUTES

// Dashboard (User Games List)
Route::get('/dashboard', [UsersGameController::class, 'index'])
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

// User profile + user games routes
Route::middleware('auth')->group(function () {
    // Profile
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // User games (Create, Store, Show)
    Route::get('/games/new', [UsersGameController::class, 'create'])->name('games.create');
    Route::post('/games', [UsersGameController::class, 'store'])->name('games.store');
    Route::get('/games/{game:slug}', [UsersGameController::class, 'show'])->name('games.show');
});

// Default user auth
require __DIR__.'/auth.php';



// ADMIN AUTH (LOGIN PAGE & PROCESS)

Route::get('/admin/login', function () {
    return view('admin.auth.login');
})->name('admin.login');

Route::post('/admin/login', [AdminAuthController::class, 'login']);



// ADMIN PROTECTED ROUTES

Route::middleware('auth:admin')->group(function () {

    // Admin Dashboard
    Route::get('/admin', [AdminController::class, 'index'])->name('admin.dashboard');

    // Admin: Manage Users
    Route::get('/admin/users', [UserController::class, 'index'])->name('admin.users');
    Route::get('/admin/users/{user}', [UserController::class, 'show'])->name('admin.users.show');
    Route::put('/admin/users/{user}/block', [UserController::class, 'block'])->name('admin.users.block');
    Route::put('/admin/users/{user}/unblock', [UserController::class, 'unblock'])->name('admin.users.unblock');

    // Admin: Manage Games
    Route::get('/admin/games', [GameController::class, 'index'])->name('admin.games');
    Route::get('/admin/games/{game}', [GameController::class, 'show'])->name('admin.games.show');
    Route::delete('/admin/games/{game}', [GameController::class, 'destroy'])->name('admin.games.destroy');

    // Admin logout
    Route::post('/admin/logout', [AdminAuthController::class, 'logout'])->name('admin.logout');
});
