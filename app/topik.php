<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class topik extends Model
{
    protected $table = 'topiks';

    public function janjitemus(){
        return $this->belongsToMany('App\janjitemu', 'topik_janji_temu', 'topiks_id', 'janji_temu_id');
    }

}
