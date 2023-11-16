<?php

namespace App\Http\Controllers;

use App\konselor;
use Illuminate\Http\Request;

class PublikKonselorController extends Controller
{
    public function index(){
        $konselor = konselor::all();

        return view('konselor.konselor', ['konselors' => $konselor]);
    }

    public function detailKonselor(konselor $konselor){
        // $this->authorize('get-detail');
        // return json_encode($konselor);
        $detailkonselor = konselor::all();
        return view('konselor.detailkonselor', ['konselors' => $detailkonselor]);
    }
}
