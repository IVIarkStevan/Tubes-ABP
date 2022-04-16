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

<!--Navbar & Carousel-->
  <header>

    <!-- Navbar -->
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
          <!-- Navbar brand -->

        </div>
      </nav>
    <!-- Navbar -->

    <!-- Carousel wrapper -->
      <div id="carousel_img" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel">
        <!-- Indicators -->
        <div class="carousel-indicators">
          <button type="button" data-mdb-target="#carousel_img" data-mdb-slide-to="0" aria-label="Slide 1" class="active" aria-current="true"></button>
          <button type="button" data-mdb-target="#carousel_img" data-mdb-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-mdb-target="#carousel_img" data-mdb-slide-to="2" aria-label="Slide 3"></button>
        </div>

        <!-- Inner -->
          <div class="carousel-inner">
            <!-- Single item -->
            <div class="carousel-item active">
              <img src="/img/rancaupas/ranca1.jpg" class="d-block w-100" alt="image1"/>
              <div class="carousel-caption d-none d-md-block">
                <h5>First slide label</h5>
                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
              </div>
            </div>

            <!-- Single item -->
            <div class="carousel-item">
              <img src="/img/dusunbambu/dusun1.jpg" class="d-block w-100" alt="image2"/>
              <div class="carousel-caption d-none d-md-block">
                <h5>Second slide label</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </div>

            <!-- Single item -->
            <div class="carousel-item">
              <img src="/img/maribaya/mari1.jpg" class="d-block w-100" alt="image3"/>
              <div class="carousel-caption d-none d-md-block">
                <h5>Third slide label</h5>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
              </div>
            </div>
          </div>
        <!-- Inner -->

        <!-- Controls -->
          <a class="carousel-control-prev" href="#carousel_img" role="button" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel_img" role="button" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        <!-- Controls -->
        
      </div>
    <!-- Carousel wrapper -->
    
  </header>
<!--Navbar & Carousel-->

<!--Main layout-->
  <main class="mt-5">
    <div class="container">
      <!--Section: Content-->
        <section>
          <div class="row">
            <div class="col-md-6 gx-5 mb-4">
              <div class="bg-image hover-overlay ripple shadow-2-strong rounded-5" data-mdb-ripple-color="light">
                {{-- logo website --}}
                <img src="/img/cover.jpg" class="img-fluid" />
              </div>
            </div>

            {{-- jelasin website --}}
            <div class="col-md-6 gx-5 mb-4">
              <h4><strong>Bumi Kemah Bandung</strong></h4>
              <p class="text-muted">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis consequatur
                eligendi quisquam doloremque vero ex debitis veritatis placeat unde animi laborum
                sapiente illo possimus, commodi dignissimos obcaecati illum maiores corporis.
              </p>
              <p><strong></strong></p>
              <p class="text-muted">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod itaque voluptate
                nesciunt laborum incidunt. Officia, quam consectetur. Earum eligendi aliquam illum
                alias, unde optio accusantium soluta, iusto molestiae adipisci et?
              </p>
            </div>
          </div>
        </section>
      <!--Section: Content-->

      <hr class="my-5" />

      <!--Section: Content-->
        <section class="text-center">
          <h4 class="mb-5"><strong>Facilis consequatur eligendi</strong></h4>

          <div class="row">

            <div class="col-lg-4 col-md-12 mb-4">
              <div class="card">
                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                  <img
                    src="/img/rancaupas/ranca1.jpg"
                    class="img-fluid"
                  />
                </div>
                <div class="card-body">
                  <h5 class="card-title">Ranca Upas</h5>
                  <p class="card-text">
                    Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. ...
                  </p>
                  <a href="/perkemahan/ranca-upas" class="btn btn-primary">Selengkapnya</a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card">
                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                  <img
                    src="/img/dusunbambu/dusun1.jpg"
                    class="img-fluid"
                  />
                </div>
                <div class="card-body">
                  <h5 class="card-title">Dusun Bambu</h5>
                  <p class="card-text">
                    Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping ...
                  </p>
                  <a href="/perkemahan/dusun-bambu" class="btn btn-primary">Selengkapnya</a>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card">
                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                  <img
                    src="/img/maribaya/mari1.jpg"
                    class="img-fluid"
                  />
                </div>
                <div class="card-body">
                  <h5 class="card-title">Maribaya</h5>
                  <p class="card-text">
                    Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat ...
                  </p>
                  <a href="/perkemahan/maribaya" class="btn btn-primary">Selengkapnya</a>
                </div>
              </div>
            </div>

          </div>
        </section>
      <!--Section: Content-->

      <hr class="my-5" />
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
