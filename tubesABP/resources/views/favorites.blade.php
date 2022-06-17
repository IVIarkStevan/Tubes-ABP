<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title }}</title>
</head>
<body>
    <h1>Favorites</h1>

    @foreach ($favorites as $fav)
        <div class="col">
            <div class="card shadow-sm">
                <img src="{{ $fav->image1 }}" alt="{{ $fav["image"] }}" width="100%" height="225" role="img" aria-label="Image" preserveAspectRatio="xMidYMid slice" focusable="false">
                <div class="card-body">
                    <h5 class="card-title">{{ $fav->title }}</h5>
                    <p class="card-text">{{ $fav->excerpt }}</p>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                            <a href="/perkemahan/{{ $fav->slug }}" type="button" class="btn btn-sm btn-outline-secondary">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</body>
</html>