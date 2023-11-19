<?php

namespace App\Http\Controllers;

use App\pasien;
use App\spesialisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikSpesialisController extends Controller
{
    public function index(){
        $spesialisasi = spesialisasi::all();
        // $priv = DB::table("pasiens")->where("id", auth()->user()->id)->first();

        // if($priv) {
        return view('home', ['spesialisasis' => $spesialisasi]);
        // }

        // return view('data-pasien');
    }

    public function showKonselor($id){
        $spesialis = spesialisasi::find($id);
        $cms_users = $spesialis->cms_users;
        return view('konselor.konselor', ['cms_users'=>$cms_users]);
    }
}
