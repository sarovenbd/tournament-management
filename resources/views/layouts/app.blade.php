
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    @yield('meta-tags')
    <title>{{is_null(setting('site.title'))?'': setting('site.title').'-'}}@yield('title')</title>
  
    <link rel="shortcut icon" type="image" href="{{is_null(setting('site.logo'))?'': Storage::url(setting('site.logo'))}}">
    
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
    <link href="{{ asset('frontend/assets/fontawesome-free/css/all.min.css') }}" rel="stylesheet">
    <!-- Nucleo Icons -->
    <link href="{{ asset('frontend/assets/css/nucleo-icons.css') }}" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="{{ asset('frontend/assets/css/blk-design-system.css') }}" rel="stylesheet" />

    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.carousel.min.css') }}">
    <!-- popup CSS -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/magnific-popup.css') }}">
    <!-- custom CSS -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/custom-css/custom.css') }}">

    @yield('css')
</head>

<body class="@yield('body-class')">
<!-- Navbar -->
<nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="100">
    <div class="container">
        <div class="navbar-translate">
            <a class="navbar-brand" href="/">
                <span>{{is_null(setting('site.title'))?'eSports': setting('site.title')}}</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <div class="navbar-collapse-header">
                <div class="row">
                    <div class="col-6 collapse-brand">
                    <a>
                        <span>{{is_null(setting('site.title'))?'eSports': setting('site.title')}}</span>
                    </a>
                    </div>
                    <div class="col-6 collapse-close text-right">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="tim-icons icon-simple-remove"></i>
                    </button>
                    </div>
                </div>
            </div>

            <ul class="navbar-nav">
                {{ menu('header_menu','partials.header-menu')}}

                <?php $languages=explode(',', env('LANGUAGES','en')); ?>

                @if(!is_null(setting('site.lang_switch')) && setting('site.lang_switch')==1)
                <select class="langSelect">
                    @foreach ($languages as $language)
                        <option value="{{$language}}" 
                        @if(session()->get('locale')==$language)
                            selected 
                        @endif
                        >{{$language}}</option>
                    @endforeach
                </select>
                @endif
            </ul>
        </div>
    </div>
</nav>
<!-- End Navbar -->
<div class="wrapper">

    @yield('content')
    <footer class="footer">
        <div class="container">
            <div class="row">
            <div class="col-md-3">
                <h1 class="title">{{is_null(setting('site.title'))?'eSports': setting('site.title')}}</h1>
            </div>
            <div class="col-md-3">
                <ul class="nav">
                    <li class="nav-item">
                        <a href="/" class="nav-link">
                        Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/posts" class="nav-link">
                        News
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/teams" class="nav-link">
                        Teams
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="nav">
                    {{ menu('footer_menu','partials.footer-menu')}}
                </ul>
            </div>
            <div class="col-md-3">
                <h3 class="title">Follow us:</h3>
                <div class="btn-wrapper profile">
                <a target="_blank" href="//{{setting('social.twitter')}}" class="btn btn-icon btn-neutral btn-round btn-simple" >
                    <i class="fab fa-twitter"></i>
                </a>
                <a target="_blank" href="//{{setting('social.facebook')}}" class="btn btn-icon btn-neutral btn-round btn-simple" >
                    <i class="fab fa-facebook-square"></i>
                </a>
                <a target="_blank" href="//{{setting('social.youtube')}}" class="btn btn-icon btn-neutral  btn-round btn-simple" >
                    <i class="fab fa-youtube"></i>
                </a>
                <a target="_blank" href="//{{setting('social.twitch')}}" class="btn btn-icon btn-neutral  btn-round btn-simple">
                    <i class="fab fa-twitch"></i>
                </a>
                </div>
            </div>
            </div>
        </div>
    </footer>
</div>
<!--   Core JS Files   -->
<script src="{{ asset('frontend/assets/js/core/jquery.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/core/popper.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/core/bootstrap.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontend/assets/js/plugins/perfect-scrollbar.jquery.min.js') }}"></script>
<!-- Control Center for parallax effects -->
<script src="{{ asset('frontend/assets/js/blk-design-system.min.js') }}" type="text/javascript"></script>

<script src="{{ asset('frontend/assets/js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('frontend/assets/js/jquery.magnific-popup.js') }}"></script>
<script src="{{asset('frontend/assets/custom-js/main.js')}}"></script>

@yield('javascript')
</body>

</html>
 