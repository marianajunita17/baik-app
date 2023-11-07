<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pembayaran extends Model
{
    protected $table = 'pembayarans';

    public function janjitemus(){
        return $this->belongsTo('App\janjitemu', 'janji_temu_id');
    }
}
