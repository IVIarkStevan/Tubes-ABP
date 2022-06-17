<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kemah;

class KemahController extends Controller
{
  public function index(){
    return view('home', [
      "title" => "Home",
      "perkemahan" => Kemah::all()
    ]);
  }

  public function kemah(Kemah $kemah){
    return view('kemah', [
      "title" => "Kemah",
      "kemah" => $kemah
    ]);
  }

  // public function favorites(){    
  //   return view('favorites', [
  //       "title" => "Favorites",
  //       "perkemahan" => Kemah::all(),
  //       "favorites" => 
  //   ]);
  // }
}