<?php

use Illuminate\Support\Facades\Route;
use App\Models\Kemah;
use App\Http\Controllers\KemahController;

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

Route::get('/perkemahan', function(){
    return view('perkemahan', [
        "title" => "Perkemahan",
        "perkemahan" => Kemah::all()
    ]);
});

Route::get('perkemahan/{kemah:slug}', [KemahController::class, 'show']);