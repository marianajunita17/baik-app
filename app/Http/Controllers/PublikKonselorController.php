<?php

namespace App\Http\Controllers;

use App\konselor;
use App\spesialisasi;
use Illuminate\Http\Request;

class PublikKonselorController extends Controller
{
    public function index(){
        $konselor = konselor::all();

        return view('konselor.konselor', ['konselors' => $konselor]);
    }

    public function detailKonselor($id){
        $detailkonselor = konselor::find($id);
        return view('konselor.detailkonselor', ['konselors' => $detailkonselor]);
    }

    public function pembayaranKonselor($id) {
        // $detailPembayaran = pembayaran::find($id)
        // return view('');
    }
}
