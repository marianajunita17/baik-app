<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\konselor;
use App\spesialisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikKonselorController extends Controller
{
    public function index(){
        // $cms_user = DB::table("cms_users")->where('id_cms_privileges', 4);
        $cms_users = konselor::all();

        return view('konselor.konselor', ['cms_users' => $cms_users]);
    }

    public function detailKonselor($id){
        $detailkonselor = DB::table("cms_users")->where('id', $id)->first();
        return view('konselor.detailkonselor', ['cms_users' => $detailkonselor]);
    }

    public function pembayaranKonselor($id) {
        // $detailPembayaran = pembayaran::find($id)
        // return view('');
    }
}
