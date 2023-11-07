<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bidang extends Model
{
    protected $table = 'bidangs';

    public function spesialisasis(){
        return $this->hasMany('App\spesialisasi');
    }
}
