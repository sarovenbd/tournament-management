@extends('layouts.app')

@section('title','Player '.$player->getTranslatedAttribute('name'))

@section('content')

<div class="profile-page">
  <div class="page-header page-header-small">
    <div class="page-header-image" style="background-image: url({{asset('frontend/assets/img/header-bg.jpg')}});">
    </div>
    <div class="container">
      <img class="player-img img-fluid img-center rounded-circle" src="{{is_null($player->image)?asset('frontend/assets/img/default.png'):Voyager::image($player->image)}}" alt="player image">
      <h1 class="title">{{$player->getTranslatedAttribute('name')}}</h1>
      <p class="mt-3 text-center">{{$player->getTranslatedAttribute('country')}}</p>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <!-- <div class="button-container">
        <a href="//{{$player->twitter_url}}" target="_blank" class="btn btn-default btn-round btn-lg btn-icon">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="//{{$player->facebook_url}}" target="_blank" class="btn btn-default btn-round btn-lg btn-icon">
          <i class="fab fa-facebook"></i>
        </a>
        <a href="//{{$player->youtube_url}}" target="_blank" class="btn btn-default btn-round btn-lg btn-icon">
          <i class="fab fa-youtube"></i>
        </a>
        <a href="//{{$player->twitch_url}}" target="_blank" class="btn btn-default btn-round btn-lg btn-icon">
          <i class="fab fa-twitch"></i>
        </a>
      </div> -->

      <h2 class="title mt-5 mb-5 text-center">About the Player</h3>
      <div class="row mb-5">
        <div class="col-md-8 ml-auto mr-auto text-center">
            {!! clean($player->getTranslatedAttribute('bio')) !!}
        </div>
      </div>

      <!-- <div class="stats row mb-5 text-center align-items-center d-flex justify-content-center">
        <div class="col-sm-2">
            <p class="stats-details text-success">{{ $player->getTranslatedAttribute('total_game') }}</p>
            <p>Games</p>
        </div>
        <div class="col-sm-2">
          <p class="stats-details text-success">{{ $player->getTranslatedAttribute('wins') }}</p>
          <p>Wins</p>
        </div>
        <div class="col-sm-2">
          <p class="stats-details text-success">{{ $player->getTranslatedAttribute('loses') }}</p>
          <p>Loses</p>
        </div>
      </div> -->

    </div>
  </div>

</div>

@include('sections.testimonial')

@endSection
