<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pasien extends Model
{
    protected $table = 'pasiens';

    protected $fillable = [
        'nama_pasien', 'umur', 'jenis_kelamin','users_id'
    ];

    public function janjitemus(){
        return $this->hasMany('App\janjitemu');
    }

    public function user(){
        return $this->hasOne('App\User', 'users_id');
    }

    public function anaks(){
        return $this->hasMany('App\anak');
    }
}
