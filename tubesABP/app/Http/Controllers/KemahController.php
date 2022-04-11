<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kemah;

class KemahController extends Controller
{
  public function index(){
    return view('home', [
      "title" => "Home"
    ]);
  }

  public function show(Kemah $kemah){
    return view('kemah', [
      "title" => "kemah",
      "kemah" => $kemah
    ]);
  }
}
