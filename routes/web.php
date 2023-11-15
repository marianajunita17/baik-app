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
});

Route::get('/register', function () {
    return view('register');
});

// Route::get('/register', function () {
//     return view('register.register-base');
// });

Route::resource('publikuser', PublikUserController::class);

Route::post('/register', [PublikUserController::class, 'create'])->name('publikuser.create');

Route::get('/login', [PublikUserController::class, 'showLoginForm'])->name('login');
Route::post('/login', [PublikUserController::class, 'login']);

Route::middleware(['auth'])->group(function () {
    // Rute-rute yang hanya dapat diakses oleh pengguna
    Route::get('/home', [PublikUserController::class, 'home'])->name('home');
});
