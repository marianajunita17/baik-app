<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class spesialisasi extends Model
{
    protected $table = 'spesialisasis';

    public function bidang(){
        return $this->belongsTo('App\bidang', 'bidang_id');
    }

    public function konselors(){
        return $this->belongsToMany('App\konselor', 'konselor_spesialis', 'spesialisasis_id', 'cms_users_id');
    }
}
