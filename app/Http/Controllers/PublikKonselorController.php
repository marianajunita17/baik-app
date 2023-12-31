<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\konselor;
use App\spesialisasi;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikKonselorController extends Controller
{
    public function index(){
        $cms_users = konselor::all();

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

        return dd($cms_users);
    }

    public function detailKonselor($id){
        $konselor = DB::table("cms_users")->where('id', $id)->first();

        $tgllahir = Carbon::parse($konselor->tgl_lahir);
        $usia = $tgllahir->diffInYears(Carbon::now());


        return view('konselor.detailkonselor', compact('konselor', 'usia'));
    }

    public function pembayaranKonselor($id) {
        // $detailPembayaran = pembayaran::find($id)
        // return view('');
    }
}
