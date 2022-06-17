<?php

use Illuminate\Support\Facades\Route;
use App\Models\Kemah;
use App\Http\Controllers\KemahController;
use App\Http\Controllers\AuthController;

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

// Route::get('/', [KemahController::class, 'index']);
// Route::get('/page_perkemahan', [KemahController::class, 'page_perkemahan']);

Route::get('/', [KemahController::class, 'index']);

// SOAL COTS
//Fill this missing part(dhialif)
Route::get('/perkemahan', function(){
    return view('perkemahan', [
        "title" => "Perkemahan",
        "perkemahan" => Kemah::all()
    ]);
});

Route::get('perkemahan/{kemah:slug}', [KemahController::class, 'kemah']);

// Route::post('/favorites', [KemahController::class, 'favorites']);

Route::get('/login', [AuthController::class,"loginView"]);
Route::get('/register', [AuthController::class,"registerView"]);
Route::post('/do-login', [AuthController::class,"doLogin"]);
Route::post('/do-register', [AuthController::class,"doRegister"]);
Route::get('/logout', [AuthController::class,"logout"]);