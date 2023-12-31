<?php

use App\Http\Controllers\DataAnakController;
use App\Http\Controllers\DataPasienController;
use App\Http\Controllers\PublikKonselorController;
use App\Http\Controllers\PublikSpesialisController;
use App\Http\Controllers\KonselorJanjiTemu28Controller;
use App\Http\Controllers\KonselorJanjiTemuAkanDatangController;
use App\Http\Controllers\PublikPembayaranController;
use App\Http\Controllers\PublikUserController;
use App\Http\Controllers\UserController;
use App\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('about-us.index');
});

Route::get('/test', function () {
    return view('layouts.main');
});

Route::get('/profile', function() {
    return view('profile-pasien.profile');
});

Route::get('/profile/edit', function() {
    return view('profile-pasien.edit');
});

Route::get('/login', function () {
    return view('login');
});

// Route::get('/home', function () {
//     return view('home');
// })->name("home")->middleware('auth');

Route::get('/login', function () {
    return view('login');
})->name('login')->middleware('guest');

// Route::get('/data-pasien', function () {
//     return view('data-pasien');
// })->name('data-pasien')->middleware('auth');

Route::get('/register', function () {
    return view('register');
})->middleware('guest');

Route::get('/konselor', function () {
    return view('konselor.konselor');
});

Route::get('/konselor/detailkonselor', function () {
    return view('konselor.detailkonselor');
});

Route::get('/konselor/detailkonselor/booking', function () {
    return view('booking');
});

Route::get('/status-booking', function () {
    return view('status-booking');
});

// Route::get('/konselor', [DataPasienController::class, 'janjiTemu'])->name('pasien.janjitemu');
Route::post('/data-anak', [DataAnakController::class, 'addDataAnak'])->name('dataanak');
Route::get('/booking/{id}', 'PublikPembayaranController@index')->name('booking');
Route::post('/booking/create', [PublikPembayaranController::class, 'booking'])->name('booking.create');
Route::get('/status-booking', [PublikPembayaranController::class, 'statusBooking'])->name('status-booking');

Route::get('google/login', 'Auth\LoginController@redirectToProvider')->name("redirectlogingoogle");
Route::get('google/register', 'Auth\LoginController@redirectToProviderRegister')->name("redirectregistergoogle");
Route::get('google/redirect', 'Auth\LoginController@handleProviderCallback');

Route::get('/profile', [PublikUserController::class, 'show'])->name('profile')->middleware('auth');
Route::get('/profile/edit', [PublikUserController::class, 'edit'])->name('profile.edit')->middleware('auth');
Route::put('/profile/update', [PublikUserController::class, 'update'])->name('profile.update')->middleware('auth');

Route::get('/home', [PublikSpesialisController::class, 'index'])->name('home')->middleware('auth');
Route::get('home/{id}/konselor', [PublikSpesialisController::class, 'showKonselor'])->name('spesialisasi.konselor');

Route::get('/home/category/{slug}', 'PublikSpesialisController@categoryPsikolog')->name('front.category');
Route::get('/konselor/detailkonselor/{id}', [PublikKonselorController::class, 'detailKonselor'])->name('konselor.detailKonselor');

Route::post('/register', [PublikUserController::class, 'create'])->name('publikuser.create');
Route::post('/login', [PublikUserController::class, 'login'])->name('login.user');
Route::post('/logout', 'Auth\LoginController@handleLogoutUser')->name('logoutuser');

Route::get('admin/konselor_janji_temu28/set-status/active/{id}', [KonselorJanjiTemu28Controller::class, 'active'])->name('janjitemu.aktif');
Route::get('admin/konselor_janji_temu28/set-status/tolak/{id}', [KonselorJanjiTemu28Controller::class, 'getEdit'])->name('janjitemu.tolak');

Route::get('admin/konselor_janji_temu_akan_datang/set-status/active/{id}', [KonselorJanjiTemuAkanDatangController::class, 'active'])->name('janjitemu.aktif');
Route::get('admin/konselor_janji_temu_akan_datang/set-status/tolak/{id}', [KonselorJanjiTemuAkanDatangController::class, 'insertAlasan'])->name('janjitemu.tolak');

Route::post('admin/konselor_janji_temu_akan_datang/inserttolak/{id}', [KonselorJanjiTemuAkanDatangController::class, 'insertAlasanTolak'])->name('insertalasan');

Route::post('admin/konselor_janji_temu28/inserttolak/{id}', [KonselorJanjiTemu28Controller::class, 'insertAlasanTolak'])->name('insertalasan');

Route::post('admin/konselor_janji_temu_akan_datang/addsesi', [KonselorJanjiTemuAkanDatangController::class, 'addSession'])->name('addSession');
