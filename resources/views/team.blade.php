@extends('layouts.app')

@section('title', 'Team '.$team->getTranslatedAttribute('title'))

@section('content')

  <div class="profile-page">
    <div class="page-header page-header-small">
      <div class="page-header-image" style="background-image: url({{asset('frontend/assets/img/header-bg.jpg')}});">
      </div>
      <div class="container">
        <img class="img-fluid img-center" src="{{is_null($team->logo)?asset('frontend/assets/img/default.png'):Voyager::image($team->logo)}}" alt="team logo">
        <h1 class="title">{{$team->getTranslatedAttribute('title')}}</h1>
        <p class="mt-3 text-center">Founded {{date('d F,Y', strtotime($team->founding_date))}}</p>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <h2 class="title mb-5">About</h3> 
        <div class="row mb-5">
          <div class="col-md-8 ml-auto mr-auto text-center">
              {!! clean($team->getTranslatedAttribute('about')) !!}
          </div>
        </div>
        <div class="stats row mb-5 text-center align-items-center d-flex justify-content-center">
          <div class="col-sm-2">
              <p class="stats-details text-success">{{ $team->getTranslatedAttribute('total_game') }}</p>
              <p>Games</p>
          </div>
          <div class="col-sm-2">
            <p class="stats-details text-success">{{ $team->getTranslatedAttribute('wins') }}</p>
            <p>Wins</p>
          </div>
          <div class="col-sm-2">
            <p class="stats-details text-success">{{ $team->getTranslatedAttribute('loses') }}</p>
            <p>Loses</p>
          </div>
        </div>   
      </div>

      <div class="align-items-center d-flex justify-content-center mb-5">
        @if (count($team->players)>0)
          <div class="container">
            <div class="align-items-center d-flex justify-content-center">
              <h2 class="title mb-5">Meet our players</h2>
            </div>
            <div class="row">
              @foreach ($team->players as $player)
                <div class="col-sm-6 col-lg-3">
                  <div class="single_team_member single-home-player">
                    <div class="card">
                        <img class="img-fluid" src="{{is_null($player->image)?asset('frontend/assets/img/default.png'):Voyager::image($player->image)}}" class="card-img-top" alt="player">
                        <div class="card-body mt-2">
                          <div class="tean_content ml-2">
                              <a class="player_item_date"><h3>{{$player->getTranslatedAttribute('wins')}}</h3></a>
                              <a href="/player/{{$player->slug}}">
                                <h5 class="card-title">{{$player->getTranslatedAttribute('name')}}</h5>
                              </a>
                              <p>{{$player->country}}</p>
                          </div>
                          <div class="tean_right_content mr-2">
                              <div class="header_social_icon">
                                <ul>
                                    <li><a href="//{{$player->facebook_url}}"><i class="fab fa-facebook"></i></a></li>
                                    <li><a href="//{{$player->facebook_twitter}}"> <i class="fab fa-twitter"></i></a></li>
                                    <li><a href="//{{$player->facebook_youtube}}"><i class="fab fa-youtube"></i></a></li>
                                </ul>
                              </div>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
              @endforeach
            </div>
          </div>
        @endif
      </div>
      
    </div>
  </div>

@endsection