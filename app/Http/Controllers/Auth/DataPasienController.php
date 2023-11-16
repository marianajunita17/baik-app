<?php

namespace App\Http\Controllers;

use App\pasien;
use Illuminate\Http\Request;

class DataPasienController extends Controller
{
    public function addDataPasien(Request $request) {
        $request->validate([
            'nama_pasien' => 'required|string|max:255',
            'umur' => 'required|integer|min:8',
            'jenis_kelamin' => 'required|string|max:255',
        ]);

        // $pasien = new pasien();
        // $pasien->nama_pasien = $request->input('nama_pasien');
        // $pasien->umur = $request->input('umur');
        // $pasien->jenis_kelamin = $request->input('jenis_kelamin');
        // $pasien->save();

        pasien::create([
            'nama_pasien'=> $request->input('nama_pasien'),
            'umur' => $request->input('umur'),
            'jenis_kelamin'=> $request->input('jenis_kelamin')
        ]);
        return dd();
        // return redirect()->route('home')->with('success', 'Simpan Data Pasien Berhasil');
    }
}
