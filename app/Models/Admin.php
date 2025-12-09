<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    // created_at and updated_at timestamps are not used
    const UPDATED_AT = null;

    // Optional: if you don’t want created_at either
    public $timestamps = false;

    // Fillable fields (adjust based on your admins table)
    protected $fillable = [
        'username',
        'password',
    ];

    // Hidden fields for arrays
    protected $hidden = [
        'password',
        'remember_token',
    ];
}