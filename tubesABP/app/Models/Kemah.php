<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kemah extends Model
{
    use HasFactory;

    protected $fillable = ['title','slug','excerpt','description','alamat','harga','fasilitas','website','contact','image1','image2','image3']; // isi hanya yang didalam array
    // protected $guarded = ['id']; // isi selain yang didalam array
}
