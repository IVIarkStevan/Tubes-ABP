<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css" rel="stylesheet"/>
  
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"></script>
  
  <style>
    /* Height for devices larger than 576px */
    @media (min-width: 992px) {
      #introCarousel {
        margin-top: -58.59px;
      }
    }

    .navbar .nav-link {
      color: #fff !important;
    }

    .error {
      color: red !important
    }
    
    .dash{
      height: 400px;
      justify-content: center;
      align-items: center;
      font-size: 20px;
      font-weight: bold;
      display: flex;
      color:green;
      flex-direction: column;

    }
  </style>

  <title>{{ $title }}</title>
</head>

<body>

  <!--Navbar-->
    <header>
      <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block bg-dark" style="z-index: 2000;">
        <div class="container-fluid" target="_blank">
          <!-- Navbar brand -->
          <a class="navbar-brand nav-link">
            <strong>Bumi Kemah Bandung</strong>
          </a>
          <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarExample01">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item active">
                <a class="nav-link" aria-current="page" href="/">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/perkemahan">Perkemahan</a>
              </li>
            </ul>

            <ul class="navbar-nav d-flex flex-row">

              <!-- Login -->
                <div class="d-flex align-items-center">
                  @if(\Auth::check())
                    <a style="margin-right: 10px; color:white">You are logged in as  : {{\Auth::user()->email}}</a>
                    <button type="button" class="btn btn-link px-3 me-2">
                      <a href="{{url('logout')}}">Logout</a>
                    </button>
                  @else
                    <a class='error' style="margin-right: 10px"> You are not logged in  </a>
                    
                    <button type="button" class="btn btn-link px-3 me-2">
                      <a href="{{url('login')}}">Login</a>
                    </button>
                  @endif
                </div>
              <!-- Login -->

            </ul>
          </div>
        </div>
      </nav>
    </header>
  <!--Navbar-->

  <!--Main layout-->
    <main class="mt-5">

      <section class="py-5 text-center container">
        <div class="row py-lg-5">
          <div class="col-lg-6 col-md-8 mx-auto">
            <h1 class="fw-light">Perkemahan</h1>
            <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
            <p>
            </p>
          </div>
        </div>
      </section>

      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            
            @foreach ($perkemahan as $kemah)
              <div class="col">
                <div class="card shadow-sm">
                  <img src="{{ $kemah->image1 }}" alt="{{ $kemah["image"] }}" width="100%" height="225" role="img" aria-label="Image" preserveAspectRatio="xMidYMid slice" focusable="false">
                  <div class="card-body">
                    <h5 class="card-title">{{ $kemah->title }}</h5>
                    <p class="card-text">{{ $kemah->excerpt }}</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="btn-group">
                        <a href="/perkemahan/{{ $kemah->slug }}" type="button" class="btn btn-sm btn-outline-secondary">Selengkapnya</a>
                        {{-- <a id="favorites" href="/favorites" >Add to favorites</a> --}}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            @endforeach

          </div>
        </div>
      </div>

      <hr class="my-5" />      

      {{-- favorites --}}
      
      {{-- favorites --}}

    </main>
  <!--Main layout-->

  <!--Footer-->
    <footer>
      <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
          © Bumi Kemah Bandung
        </div>
      <!-- Copyright -->
    </footer>
  <!--Footer-->

  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
