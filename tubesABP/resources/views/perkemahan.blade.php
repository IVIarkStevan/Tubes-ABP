@extends('layouts.main')

@section('container')
    <h1>Perkemahan</h1>

    <div class="card-group">
        @foreach ($perkemahan as $kemah)
            <article class="mb-5">
                <div class="card" style="width: 18rem;">
                    <img src="{{ $kemah->image1 }}" class="card-img-top" alt="{{ $kemah["image"] }}" width="150" height="150">
                    <div class="card-body">
                        <h5 class="card-title">{{ $kemah->title }}</h5>
                        <p class="card-text">{{ $kemah->excerpt }}</p>
                        <a href="/perkemahan/{{ $kemah->slug }}" class="btn btn-primary">Selengkapnya</a>
                    </div>
                </div>
            </article>
        @endforeach
    </div>
@endsection