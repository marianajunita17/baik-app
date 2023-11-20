<?php
namespace App\Http\Controllers;

use App\pasien;
use App\konselor;
use App\User;
use App\spesialisasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikSpesialisController extends Controller
{
    public function index(){

        $spesialisasi = spesialisasi::all();
        $uid = auth()->user()->id;
        $user = User::findOrFail($uid);
        $konselor = konselor::all();
        if (request('category')) {
            $spesialisasi2 = spesialisasi::find(request('category'));
            $konselor = $spesialisasi2->konselors()->get();
        }

        return view('home', ['spesialisasis' => $spesialisasi,'cms_users' => $user, 'konselor' => $konselor]);
    }

    public function showKonselor($id){
        $spesialisasi = spesialisasi::find($id);
        $cms_users = $spesialisasi->konselors()->get();

        return view('konselor.konselor', ['cms_users'=>$cms_users]);
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

        // $cms_users = DB::table('cms_users')
        // ->join('konselor_spesialis','konselor_spesialis.cms_users_id','=','cms_users.id')
        // ->join('spesialisasis','spesialisasis.id','=','konselor_spesialis.spesialisasis_id')
        // ->where('konselor_spesialis.spesialisasis_id',$id)
        // ->first();


    }
}
