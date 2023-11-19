<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    //
    public function redirectToProvider(){
        Session::put('loginby', 'loginuser');
        return Socialite::driver('google')->redirect();
    }

    public function redirectToProviderRegister(){
        Session::put('loginby', 'registeruser');
        return Socialite::driver('google')->with(['loginby' => 'user'])->redirect();
    }

    //
    public function handleProviderCallback(Request $request){
        try {
            $session_check = Session::get('loginby');
            Session::forget('loginby');
            $user = Socialite::driver('google')->user();

            if($session_check == "loginuser"){
                // Login User
                $existingUser = User::where('email', $user->getEmail())->first();
                if($existingUser){
                    auth()->login($existingUser, true);
                    return redirect()->intended('home');
                    // if($existingUser->id){
                    //     $checkdatapasien = DB::table("pasiens")->where("users_id", $existingUser->id)->first();
                    //     auth()->login($existingUser, true);
                    //     if($checkdatapasien){
                    //         // return dd("Data Ditemukan",$checkdatapasien,$existingUser->id);
                    //         return redirect()->intended('home');
                    //     }else{
                    //         // return dd("Data Tidak ktmu",$checkdatapasien,$existingUser->id);

                    //         return redirect()->intended('data-pasien');
                    //     }
                    // }

                }else{
                    return redirect()->route('login')->with('message' , 'Silahkan Register menggunakan Email anda terlebih dahulu')->withInput();
                }
            }elseif ($session_check == "registeruser") {
                User::create([
                    'username' => $user->getName(),
                    'email' => $user->getEmail(),
                    'google_id' =>$user->getId(),
                    'password' => bcrypt("test123"),
                ]);
                return redirect()->route('login')->with('message', 'Registrasi Akun Berhasil, Silahkan Login!');
            }else{
                // Login Admin
                $users = DB::table("cms_users")->where("email", $user->getEmail())->first();
                if($users){
                    //Data Found
                    $priv = DB::table("cms_privileges")->where("id", $users->id_cms_privileges)->first();
                    $roles = DB::table('cms_privileges_roles')->where('id_cms_privileges', $users->id_cms_privileges)->join('cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls')->select('cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete')->get();
                    $photo = ($users->photo) ? asset($users->photo) : asset('vendor/crudbooster/avatar.jpg');
                    Session::put('admin_id', $users->id);
                    Session::put('admin_is_superadmin', $priv->is_superadmin);
                    Session::put('admin_name', $users->name);
                    Session::put('admin_photo', $photo);
                    Session::put('admin_privileges_roles', $roles);
                    Session::put("admin_privileges", $users->id_cms_privileges);
                    Session::put('admin_privileges_name', $priv->name);
                    Session::put('admin_lock', 0);
                    Session::put('theme_color', $priv->theme_color);
                    Session::put("appname", get_setting('appname'));
                    return redirect('admin');
                }else{
                    //Data not found
                    DB::table('cms_users')->insert([
                        'name' => $user->getName(),
                        'email' => $user->getEmail(),
                        'password' => bcrypt("test123"),
                        'id_cms_privileges' => 4,
                        'status'=> "Active"
                    ]);
                    $users23 = DB::table("cms_users")->where("email", $user->getEmail())->first();
                    $priv = DB::table("cms_privileges")->where("id", 4)->first();
                    $roles = DB::table('cms_privileges_roles')->where('id_cms_privileges', $users->id_cms_privileges)->join('cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls')->select('cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete')->get();
                    $photo = ($users->photo) ? asset($users->photo) : asset('vendor/crudbooster/avatar.jpg');
                    Session::put('admin_id', $users23->id);
                    Session::put('admin_is_superadmin', $priv->is_superadmin);
                    Session::put('admin_name', $users23->name);
                    Session::put('admin_photo', $photo);
                    Session::put('admin_privileges_roles', $roles);
                    Session::put("admin_privileges", $users23->id_cms_privileges);
                    Session::put('admin_privileges_name', $priv->name);
                    Session::put('admin_lock', 0);
                    Session::put('theme_color', $priv->theme_color);
                    Session::put("appname", get_setting('appname'));
                    return redirect('admin');
                }
            }
        } catch (Exception $e) {
            return redirect('/login');
        }

    }

    public function handleLogoutUser(){
        Auth::logout();
        return redirect('/login');
    }
}
