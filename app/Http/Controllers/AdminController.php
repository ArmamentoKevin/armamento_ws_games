<?php

namespace App\Http\Controllers;
use App\Models\Admin;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
        $admin_users = Admin::all();
        return view('admin.index', compact('admin_users'));
    }
}
