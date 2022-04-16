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
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"></script>
  
  <style>
    .error {
      color: red
    }
  </style>

  <script>
    $(function() {
    // handle submit event of form
      $(document).on("submit", "#handleAjax", function() {
        var e = this;
        // change login button text before ajax
        $(this).find("[type='submit']").html("LOGIN...");

        $.post($(this).attr('action'), $(this).serialize(), function(data) {

          $(e).find("[type='submit']").html("LOGIN");
          if (data.status) { // If success then redirect to login url
            window.location = data.redirect_location;
          }
        }).fail(function(response) {
            // handle error and show in html
          $(e).find("[type='submit']").html("LOGIN");
          $(".alert").remove();
          var erroJson = JSON.parse(response.responseText);
          for (var err in erroJson) {
            for (var errstr of erroJson[err])
              $("#errors-list").append("<div class='alert alert-danger'>" + errstr + "</div>");
          }
        });
        return false;
      });
    });
  </script>
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
    <div class="container">
      <!-- main app container -->
      <div class="readersack">
        <div class="container">
          <div class="row">
            <div class="col-md-6 offset-md-3">
              <h3>Login</h3>

              <div id="errors-list"></div>
              <form method="post" id="handleAjax" action="{{url('do-login')}}" name="postform">
                <div class="form-group">
                  <label>Email</label>
                  <input type="email" name="email" value="{{old('email')}}" class="form-control" />
                @csrf
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" name="password" class="form-control" />
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary mt-5">LOGIN</button>
                </div>
              </form>
              <button type="submit" class="btn btn-primary">
                <a href="{{url('register')}}" style="color: white">REGISTER</a>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

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
