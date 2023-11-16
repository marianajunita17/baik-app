<?php

namespace App\Http\Controllers;

use App\konselor;
use App\spesialisasi;
use Illuminate\Http\Request;

class PublikKonselorController extends Controller
{
    public function index($id){
        // $spesialisasi = spesialisasi::find($id)
        // if($spesialisasi->id){
        //     $
        // }
        $konselor = konselor::all();

        return view('konselor.konselor', ['konselors' => $konselor]);
    }

    public function detailKonselor($id){
        // $this->authorize('get-detail');
        // return json_encode($konselor);
        $detailkonselor = konselor::find($id);
        return view('konselor.detailkonselor', ['konselors' => $detailkonselor]);
    }
}
