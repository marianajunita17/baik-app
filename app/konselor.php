<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class konselor extends Model
{
    protected $table = 'cms_users';

    public function janjitemus(){
        return $this->hasMany('App\janjitemu');
    }

    public function user(){
        return $this->belongsTo('App\User', 'users_id');
    }

    public function spesialisasis(){
        return $this->belongsToMany('App\janjitemu', 'konselor_spesialis', 'konselors_id', 'spesialisasis_id');
    }
}
