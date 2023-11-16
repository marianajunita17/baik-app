<?php

namespace App\Http\Controllers;

use App\anak;
use Illuminate\Http\Request;

class DataAnakController extends Controller
{
    public function addDataAnak(Request $request) {
        $request->validate([
            'name' => 'required|string|max:255',
            'jeniskelamin' => 'required|string|max:255',
            'tgl_lahir' => 'required|date_format:Y-m-d'
        ]);

        $idpasien = auth()->user()->id;
        anak::create([
            'nama_anak'=> $request->input('name'),
            'jenis_kelamin'=> $request->input('jeniskelamin'),
            'tgl_lahir'=> $request->input('tgl_lahir'),
            'pasien_id' => $idpasien,
        ]);

        return redirect()->route('konselor.konselor')->with('success', 'Simpan Data Pasien Berhasil');
    }
}
