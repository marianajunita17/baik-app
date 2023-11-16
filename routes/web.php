<?php

use App\Http\Controllers\DataPasienController;
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

Route::get('/login', function () {
    return view('login');
});

Route::get('/home', function () {
    return view('home');
})->name("home")->middleware('auth');

Route::get('/login', function () {
    return view('login');
})->name('login')->middleware('guest');

Route::get('/data-pasien', function () {
    return view('data-pasien');
})->name('data-pasien')->middleware('auth');

Route::get('/register', function () {
    return view('register');
})->middleware('guest');

Route::get('/konselor', function () {
    return view('konselor.konselor');
});

Route::get('/detailkonselor', function () {
    return view('konselor.detailkonselor');
});

Route::get('google/login', 'Auth\LoginController@redirectToProvider')->name("redirectlogingoogle");
Route::get('google/register', 'Auth\LoginController@redirectToProviderRegister')->name("redirectregistergoogle");
Route::get('google/redirect', 'Auth\LoginController@handleProviderCallback');

Route::post('/data-pasien', 'DataPasienController@addDataPasien')->name('datapasien');

Route::resource('publikuser', PublikUserController::class);
Route::post('/register', [PublikUserController::class, 'create'])->name('publikuser.create');
Route::post('/login', [PublikUserController::class, 'login'])->name('login.user');
Route::post('/logout', 'Auth\LoginController@handleLogoutUser')->name('logoutuser');

