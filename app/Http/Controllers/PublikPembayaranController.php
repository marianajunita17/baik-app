<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PublikPembayaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(){
        $pembayaran = pembayaran::all();

        return view('pembayaran', ['pembayarans' => $pembayaran]);

        // $janji_temu = janji_temu::find(id)
        // return view ('halaman pembayaran', compact('janji_temu'));
    }

    public function konselorDetail($id){
        $bayar = pembayaran::find($id);
        $konselor = $bayar->konselors;
        return view('konselor.detailkonselor', ['konselors' => $konselor]);
    }

    public function detailJanjiTemu($id){
        // $janji_temu = janjitemu::find(id)
        // return view('halaman pembayaran', compact('janji_temu'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
