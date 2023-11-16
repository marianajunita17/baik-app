<?php

namespace App\Http\Controllers;

use App\pasien;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DataPasienController extends Controller
{
    public function addDataPasien(Request $request) {
        $request->validate([
            'name' => 'required|string|max:255',
            'umur' => 'required|integer|min:8',
            'jeniskelamin' => 'required|string|max:255',
        ]);

        $iduser = auth()->user()->id;
        pasien::create([
            'nama_pasien'=> $request->input('name'),
            'umur' => $request->input('umur'),
            'jenis_kelamin'=> $request->input('jeniskelamin'),
            'users_id' => $iduser,
        ]);

        return redirect()->route('home')->with('success', 'Simpan Data Pasien Berhasil');
    }
}
