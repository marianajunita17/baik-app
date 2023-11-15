<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PublikUser extends Model
{
    protected $fillable =
    ['username', 'email', 'password'];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
