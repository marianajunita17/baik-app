<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pasien extends Model
{
    protected $table = 'pasiens';

    public function janjitemus(){
        return $this->hasMany('App\janjitemu');
    }

    public function user(){
        return $this->hasOne('App\User', 'users_id');
    }

    public function konselors(){
        return $this->belongsToMany('App\konselor', 'pasien_konselor', 'pasiens_id', 'konselors_id');
    }

    public function anaks(){
        return $this->hasMany('App\anak');
    }
}