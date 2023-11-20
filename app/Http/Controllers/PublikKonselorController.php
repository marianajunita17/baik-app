<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\konselor;
use App\spesialisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikKonselorController extends Controller
{
    public function index($id){
        // $id_privileges = 4;
        // $cms_users = DB::table("cms_users")->where('id_cms_privileges', $id_privileges)->first();
        $cms_users = konselor::all();
        // return dd($cms_users);


        // filter spesialisasi
        // if($request->has('spesialisasi')) {
        //     $id_spesialisasi = $request->input('spesialisasi');
        //     $cms_user->where('spesialisasis', function($query) use ($id_spesialisasi) {
        //         $query->where('spesialisasi_id', $id_spesialisasi);
        //     });
        // }

        // filter price
        // if($request->has('nominal_bayar')) {
        //     $nominal_bayar = $request->input('price');
        //     $cms_user->where('nominal_bayar', '=', $nominal_bayar);
        // }

        // $filter_user = $cms_user->get();
        // $spesialisasi = spesialisasi::all();

        // return view('home', [
        //     'filter_user'=>$filter_user,
        //     'spesialisasis'=>$spesialisasi,
        // ]);

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
