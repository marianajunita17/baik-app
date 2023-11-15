<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PublikUser extends Model
{
    protected $fillable = ['username', 'email', 'password'];
}
