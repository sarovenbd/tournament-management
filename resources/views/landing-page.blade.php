@extends('layouts.app')

@section('title','Home')

@section('content')
  <div class="wrapper">
    <!-- Hero Section Begin -->
    <section class="hero-section set-bg" data-setbg="{{is_null(setting('hero.image'))?asset('frontend/assets/img/header-bg.jpg'):Voyager::image(setting('hero.image'))}}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hs-item">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="hs-text">
                                        <h4>{{is_null(setting('hero.small_title'))?"eSports Gaming":setting('hero.small_title')}}</h4>
                                        <h2>{{is_null(setting('hero.large_title'))?"We organize esports tournament":setting('hero.large_title')}}</h2>
                                        <a href="/tournaments" class="btn btn-lg btn-info">See Tournaments</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Match Section Begin -->
    @include('sections.matches')
    <!-- Match Section End -->

    <!-- latest-news Section Begin -->
    @if (count($latest_posts)>0)
        <section class="latest-news-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-0">
                        <h3 class="title">News Feed</h3>
                        <hr class="line-info">
                    </div>
                </div>
                <div class="row">
                    @foreach ($latest_posts as $post)
                        <div class="col-lg-3 col-sm-6 p-0">
                            <div class="latest-news-item set-bg" data-setbg="{{is_null($post->image)? asset('frontend/assets/img/default.png') :Voyager::image($post->image)}}">
                                <div class="si-tag">{{!is_null($post->category_id)?$post->category->getTranslatedAttribute('name'):'Uncategorized'}}</div>
                                <div class="si-text">
                                    <h5><a href="/post/{{$post->slug}}">{{$post->getTranslatedAttribute('title')}}</a></h5>
                                    <ul class="m-0 p-0">
                                        <li><i class="fa fa-calendar"></i> {{$post->created_at->diffForHumans()}}</li>
                                        <li><i class="fa fa-user"></i> {{is_null($post->authorId)?"Admin":$post->authorId->name}}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    @endforeach 
                </div>
            </div>
        </section> 
    @endif
    <!-- latest-news Section End -->

    <!-- Team section Begin-->
    @include('sections.players')
    <!--Team Section End-->

    <!-- Video Section Begin -->
    @include('sections.live-streams')
    <!-- Video Section End -->

    <!-- Testimony Section Begin -->
    @include('sections.testimonial')
    <!-- Testimony Section End -->

  </div>
@endsection

@section('javascript')
  <script src="{{asset('frontend/assets/custom-js/main.js')}}"></script>
@endsection