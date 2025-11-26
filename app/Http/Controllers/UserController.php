<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(){
    $platform_users = User::paginate(10);
    return view('admin.users.index', compact('platform_users'));
    }

    public function show(User $user){
        //we don't need to query the user by username anymore
        //because of getRouteKeyName in User model
        return view('admin.users.show',compact('user'));
    }
}