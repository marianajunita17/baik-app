<?php

namespace App\Http\Controllers;

use App\PublikUser;
use App\User;
use FontLib\Table\Type\post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PublikUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();
        return view('profile-pasien.profile', ['users'=>$user]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
            'username' => 'required|string|max:255',
            'password' => 'required|string|min:8',
            'email' => 'required|email|max:255',
        ]);

        User::create([
            'username' => $request->input('username'),
            'password' => bcrypt($request->input('password')),
            'email' => $request->input('email'),
        ]);

        // return redirect()->route('publikuser.index')->with('success', 'Pendaftaran berhasil!');
        // return redirect()->back()->with('success', 'Pendaftaran Berhasil');
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
    public function show()
    {
        $user = auth()->user();
        return view('profile-pasien.profile', ['users'=>$user]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $user = auth()->user()->id;
        $userData = DB::table('users')
        ->where('id', $user)
        ->first();
        // return dd($user);
        return view('profile-pasien.edit', ['users' => $user]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $user = auth()->user()->id;

        DB::table('users')
        ->where('id', $user)
        ->update([
            'nama_pasien'=> $request->input('nama_pasien'),
            'email'=>$request->input('email'),
            'umur'=>$request->input('umur'),
            'jenis_kelamin'=>$request->input('jenis_kelamin')
        ]);
        // $request->validate([
        //     'nama_pasien' => 'required|string|max:255',
        //     'email' => 'required|max:255|email',
        //     'umur' => 'required|integer|min:8',
        //     'jenis_kelamin' => 'required|string|max:255',
        // ]);

        // $user = auth()->user()->id;
        // User::updated([
        //     'nama_pasien'=>$request->nama_pasien,
        //     'email'=>$request->email,
        //     'umur'=>$request->umur,
        //     'jenis_kelamin'=>$request->jenis_kelamin
        // ]);
        // $user->nama_pasien = $request['nama_pasien'];
        // $user->email = $request['email'];
        // $user->umur = $request['umur'];
        // $user->jenis_kelamin = $request['jenis_kelamin'];
        // $user->save();

        // return dd($user);
        // $user->update($request->all());

        // $this->validate($request, [
        //     'nama_pasien' => 'required|string|min:3|max:70',
        //     'email'=>'required|min:1|max:255|email|unique:users',
        //     'umur'=>'required|integer|min:0',
        //     'jenis_kelamin'=>'required|min:1|max:255'
        // ]);

        // $user = User::find($id);

        return redirect()->route('profile')->with('success', 'Profil berhasil diperbarui');
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

    public function showLoginForm()
    {
        return view('login');
    }

    public function login(Request $request){

        $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);

        $user = User::where('username', $request->input('username'))->first();

        if($user && $user->password == $request->input('password')) {
            return dd("berhasil");
            return redirect()->route('home');
        }

        return back()->withErrors(['username' => 'Username atau password salah'])->withInput();
    }
}
