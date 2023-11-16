<?php

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
})->middleware('guest');

Route::get('/register', function () {
    return view('register');
})->middleware('guest');

Route::get('google/login', 'Auth\LoginController@redirectToProvider')->name("redirectlogingoogle");
Route::get('google/register', 'Auth\LoginController@redirectToProviderRegister')->name("redirectregistergoogle");
Route::get('google/redirect', 'Auth\LoginController@handleProviderCallback');

Route::resource('publikuser', PublikUserController::class);
Route::post('/register', [PublikUserController::class, 'create'])->name('publikuser.create');
Route::post('/login', [PublikUserController::class, 'login'])->name('login.user');
Route::post('/logout', 'Auth\LoginController@handleLogoutUser')->name('logoutuser');

// Route::get('/register', function () {
//     return view('register.register-base');
// });

// Route::middleware(['auth'])->group(function () {
//     // Rute-rute yang hanya dapat diakses oleh pengguna
//     Route::get('/home', [PublikUserController::class, 'home'])->name('home');
// });
