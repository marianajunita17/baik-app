<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class anak extends Model
{
    protected $table = 'anaks';

    public function pasien(){
        return $this->belongsTo('App\pasien', 'pasien_id');
    }
}
