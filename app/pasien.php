<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pasien extends Model
{
    protected $table = 'pasiens';

    protected $fillable = [
        'nama_pasien', 'email', 'password', 'google_id'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getId(){
        return $this->id;
    }

    public function janjitemus(){
        return $this->hasMany('App\janjitemu');
    }

    // public function user(){
    //     return $this->hasOne('App\User', 'users_id');
    // }

    public function anaks(){
        return $this->hasMany('App\anak');
    }
}
