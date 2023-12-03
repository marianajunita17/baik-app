<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\konselor;
use App\topik;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikPembayaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index($id){
        $konselor = konselor::find($id);
        $spesialisasi = $konselor->spesialisasis()->get();
        // $topiks = topik::pluck('nama_topik', 'id');
        $topiks = topik::all();

        // return dd($topiks, $spesialisasi, $konselor);
        return view('booking', ['cms_users'=>$konselor, 'spesialisasis'=>$spesialisasi, 'topiks'=>$topiks]);
    }

    public function booking(Request $request){

        $request->validate([
            'konselor_id' => 'required',
            'keluhan' => 'required|min:100',
            'topik' => 'required',
        ]);

        $pasien_id = auth()->user()->id;
        $konselor_id = $request->input('id');
        $nominal = konselor::find($konselor_id)->nominal_bayar;
        $tgl_konsultasi_mulai = Carbon::now();

        $janji_temu = janjitemu::create([
            'pasien_id' => $pasien_id,
            'nominal_bayar' => $nominal,
            'tgl_konsultas_mulai' => $tgl_konsultasi_mulai,
            'konselor_id' => $konselor_id,
            "keluhan" => $request->input('keluhan'),
        ]);

        $topiks = $request->input('topiks_id');
        $janji_temu->topiks()->attach($topiks);

        // return dd($request);
        return redirect()->route('detail-pembayaran')->with('sucess', 'Booking Berhasil');
        // return view('status-booking', ['janji_temus'=> $janji_temu, 'topiks' => $topiks]);
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
