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
        // $spesialis = spesialisasi::find($id);
        // $spesialis = DB::table('spesialisasis')->where('id', $id)->first();
        // $spesialis = DB::table('spesialisasis')->join('konselor_spesialis','spesialisasis.id','=','konselor_spesialis.spesialisasis_id')
        // ->where('spesialisasis.id', $id);
        // $cms_users = DB::table('konselor_spesialis')
        // ->join('cms_users', 'konselor_spesialis.cms_users_id', '=', 'cms_users.id')
        // ->join('spesialisasis', 'konselor_spesialis.spesialisasis_id', '=', 'spesialisasis.id')
        // ->where('spesialisasis.id', '=', $spesialis)
        // ->select('cms_users')
        // ->get();

        // $cms_users = $spesialis->cms_users;
        // return dd($cms_users);
        $cms_users = DB::table('cms_users')
        ->join('konselor_spesialis','konselor_spesialis.cms_users_id','=','cms_users.id')
        ->join('spesialisasis','spesialisasis.id','=','konselor_spesialis.spesialisasis_id')
        ->where('konselor_spesialis.spesialisasis_id',$id)
        ->first();

        return view('konselor.konselor', ['cms_users'=>$cms_users]);
    }
}
