<?php

namespace App\Http\Controllers;

use App\spesialisasi;
use Illuminate\Http\Request;

class PublikSpesialisController extends Controller
{
    public function index(){
        $spesialisasi = spesialisasi::all();

        return view('home', ['spesialisasis' => $spesialisasi]);
    }
}
