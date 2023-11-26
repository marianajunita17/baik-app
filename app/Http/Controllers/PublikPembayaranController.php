<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\topik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikPembayaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(){
        $topik =topik::pluck('nama_topik', 'id')->toArray();

        // return dd($topik);
        return view('booking', compact('topik'));
    }

    public function booking(Request $request){
        $request->validate([
            'topik' => 'required|string|max:255',
            'spesialisasi'=>'required|string|max:255',
            'keluhan'=>'required|string|max:255'
        ]);

        $iduser = auth()->user()->id;
        janjitemu::create([
            // 'pasien_id'=>$iduser,
            // topik()->attach($request->input('topik')),
            // 'keluhan'=> $request->input('keluhan')
        ]);

        // return redirect()->route('detailpembayaran')->with('sucess', 'Booking Berhasil');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $topik = topik::all();
        // return view('pembayaran', compact('topiks'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = auth()->user()->nama_pasien;
        $konselor = $request->input('cms_users_id');
        $nominal = $request->input('nominal_bayar');
        $keluhan = $request->input('keluhan');
        $topik = $request->input('nama_topik');
        $spesialisasi = $request->input('nama_spesialisasi');
        // $topik_keluhan = $request->input('keluhan');

        $janji_temu = new janjitemu();
        $janji_temu->users_id = $user;
        $janji_temu->keluhan = $keluhan;
        $janji_temu->nominal=$nominal;
        $janji_temu->konselor_id=$konselor;
        $janji_temu->save();

        $janji_temu->topiks()->attach($request->input('topiks_id'));

        // return view('pembayaran');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
