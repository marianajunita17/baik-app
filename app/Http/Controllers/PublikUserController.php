<?php

namespace App\Http\Controllers;

use App\PublikUser;
use Illuminate\Http\Request;

class PublikUserController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'username' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'password' => 'required|string|min:8',
            // Tambahkan validasi untuk kolom lain sesuai kebutuhan
        ]);

        PublikUser::create([
            'username' => $request->input('username'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password')),
        ]);

        // Redirect atau berikan respons sesuai kebutuhan Anda
        return redirect()->route('data-pasien')->with('success', 'Pendaftaran berhasil!');
    }
}
