<?php

namespace App\Http\Controllers;

use App\janjitemu;
use App\konselor;
use App\pembayaran;
use App\topik;
use Carbon\Carbon;
use Exception;
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
        $bank = pembayaran::all();
        $topiks = topik::all();
        $janji_temu = janjitemu::where('konselor_id', $id)->get();

        return view('booking', ['cms_users'=>$konselor, 'spesialisasis'=>$spesialisasi, 'topiks'=>$topiks, 'pembayarans'=>$bank, 'janji_temu'=>$janji_temu]);
    }

    public function booking(Request $request){
        try {
            $request->validate([
                'selectedTopik' => 'required|integer',
                'keluhan' => 'required',
                // 'time' => 'required',
                'selectedBank' => 'required',
                'selectedJanjiTemu' => 'required',
                // 'konselor_id'=>'required'
            ]);

            $uid = auth()->user()->id;
            $keluhan = $request->input('keluhan');
            $bank = $request->input('selectedBank');
            $selectedJanjiTemu = $request->input('selectedJanjiTemu');
            // $janji_temu = janjitemu::find($selectedJanjiTemu);
            // $status = 0;

            $janji_temu = DB::table('janji_temu')
            ->where('id', $selectedJanjiTemu)
            ->update([
                'pasien_id' => $uid,
                'keluhan' => $keluhan,
                'bank_id' => $bank,
                'status' => 0,
            ]);

            // $janji_temu = janjitemu::create([
            //     'pasien_id' => $uid,
            //     // 'nominal' => $nominal,
            //     // 'tgl_konsultasi_mulai' => $tgl_konsultasi_mulai,
            //     // 'konselor_id' => $konselor_id,
            //     'keluhan' => $keluhan,
            //     'bank_id' => $bank
            // ]);

            $topik_janji_temu = DB::table('topik_janji_temu')
            ->insert([
                'janji_temu_id' => $janji_temu->id,
                'topiks_id' =>  $selectedTopik = $request->input('selectedTopik'),
            ]);

            // $topik = Topik::findOrFail($selectedTopik);
            // $janji_temu->topiks()->attach($topik->topiks_id);

            return dd($janji_temu);
            // return redirect()->route('status-booking')->with('success', 'Booking Berhasil');
        } catch (Exception $e) {
            // return redirect('/booking');
            return dd($e);
        }
    }

    public function statusBooking() {
        $uid = auth()->user()->id;
        $janji_temu = JanjiTemu::with('konselor')->where('pasien_id', $uid)->get();

    // return view('status_booking', ['janjiTemu' => $janjiTemu]);

        return view('status-booking', ['janji_temu'=> $janji_temu]);
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
