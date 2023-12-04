<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class janjitemu extends Model
{
    protected $table = 'janji_temu';

    protected $fillable = [
        'keluhan', 'pasien_id', 'nominal', 'tgl_konsultasi_mulai', 'konselor_id', 'bank_id'
    ];

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

    public function topiks(){
        return $this->belongsToMany('App\topik', 'topik_janji_temu', 'janji_temu_id', 'topiks_id');
    }
}
