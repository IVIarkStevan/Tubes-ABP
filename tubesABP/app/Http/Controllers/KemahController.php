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

  public function show(Kemah $kemah){
    return view('kemah', [
      "title" => "Kemah",
      "kemah" => $kemah
    ]);
  }
}
