@extends('layouts.main')

@section('container')
    <div class="container">
        <div id="carousel_img" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carousel_img" data-bs-slide-to="0" aria-label="Slide 1" class="active" aria-current="true" ></button>
                <button type="button" data-bs-target="#carousel_img" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carousel_img" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ $kemah->image1 }}" class="d-block w-100" alt="image1">
                {{-- <div class="carousel-caption d-none d-md-block">
                    <h5>Gambar 1</h5>
                    <p></p>
                </div> --}}
            </div>
            <div class="carousel-item">
                <img src="{{ $kemah->image2 }}" class="d-block w-100" alt="image2">
            </div>
            <div class="carousel-item">
                <img src="{{ $kemah->image3 }}" class="d-block w-100" alt="image3">
            </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carousel_img" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carousel_img" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <article>
        {{-- <img src="{{ $kemah->image }}" alt="ranca1" width="500"> --}}
        <h2>{{ $kemah->title }}</h2>
        <div>
            <h5>Deskripsi : </h5>
            <p>{{ $kemah->description }}.</p>
        </div>
        <div>
            <h5>Alamat :</h5>
            <p>{{ $kemah->alamat }}</p>
        </div>
        <div>
            <h5>Harga :</h5>
            <p>{{ $kemah->harga }}</p>
        </div>
        <div>
            <h5>Fasilitas :</h5>
            <p>{{ $kemah->fasilitas }}</p>
        </div>
        <div>
            <h5>Website :</h5>
            <p><a href="{{ $kemah->website }}">{{ $kemah->website }}</a></p>
        </div>
        <div>
            <h5>Contact :</h5>
            <p>{{ $kemah->contact }}</p>
        </div>
    </article>

    <a href="/perkemahan">Back to Perkemahan</a>
@endsection