<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class janjitemu extends Model
{
    protected $table = 'janji_temu';

    public function pasien(){
        return $this->belongsTo('App\pasien', 'pasien_id');
    }

    public function janjitemu_terkait(){
        return $this->hasMany('App\janjitemu', 'janji_temu_id', 'id');
    }

    public function janjitemu_sebelumnya(){
        return $this->belongsTo('App\janjitemu', 'janji_temu_id');
    }

    public function konselor(){
        return $this->belongsTo('App\konselor', 'konselor_id');
    }

    public function pembayarans(){
        return $this->hasMany('App\pembayaran');
    }
}
