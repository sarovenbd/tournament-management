<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags always come first -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  
  <title>{{is_null(setting('site.title'))?'': setting('site.title').'-'}}404</title>

  <link rel="shortcut icon" type="image" href="{{is_null(setting('site.logo'))?'': Storage::url(setting('site.logo'))}}">
    
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
    <link href="{{ asset('frontend/assets/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    <!-- Nucleo Icons -->
    <link href="{{ asset('frontend/assets/css/nucleo-icons.css') }}" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="{{ asset('frontend/assets/css/blk-design-system.css') }}" rel="stylesheet" />
    <!--custom CSS-->
    <link href="{{ asset('frontend/assets/custom-css/custom.css') }}" rel="stylesheet" />

</head>

<body>

<div class="wrapper">
    <div class="error-page page-header">
        <div class="container">
            <div class="row content-center">
                <div class="col-md-12">
                    <h1 class="title">404</h1>
                    <h2 class="description">Page not found :(</h2>
                    <h4 class="description">Ooooups! Looks like you got lost.</h4>
                    <a href="/" class="btn btn-primary">Go Home</a>
                </div>
            </div>
        </div>
    </div>
</div>    
<!--   Core JS Files   -->
<script src="{{ asset('frontend/assets/js/core/jquery.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/core/popper.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/core/bootstrap.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/plugins/perfect-scrollbar.jquery.min.js') }}"></script>
<!-- Control Center for parallax effects -->
<script src="{{ asset('frontend/assets/js/blk-design-system.min.js') }}" type="text/javascript"></script>
  
</body>

</html>
