<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PublikPasienController extends Controller
{
    // public function showForm()
    // {
    //     return view('register');
    // }

    // public function processForm(Request $request)
    // {
    //     $request->validate([
    //         'name' => 'required|string|max:255',
    //         'umur' => 'required|string|min:8',
    //         'gender' => 'required|in:male,female',
    //     ]);

    //     // Simpan data ke database
    //     Pasien::create([
    //         'name' => $request->input('name'),
    //         'umur' => $request->input('umur'),
    //         'gender' => $request->input('gender'),
    //     ]);

    //     // Redirect atau berikan respons sesuai kebutuhan Anda
    //     return redirect()->route('home')->with('success', 'Pendaftaran berhasil!');
    // }

}
