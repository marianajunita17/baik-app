<?php

use App\Http\Controllers\PublikUserController;
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
})->name("home");

Route::get('/register', function () {
    return view('register');
});

Route::get('google/login', 'Auth\LoginController@redirectToProvider');
Route::get('google/redirect', 'Auth\LoginController@handleProviderCallback');

// Route::get('/register', function () {
//     return view('register.register-base');
// });

Route::resource("publikuser", PublikUserController::class);

Route::post("/create", [PublikUserController::class, "create"]);
