@extends('layouts.app')

@section('title','Players')

@section('content')
  <div class="page-header page-header-small">
      <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
      </div>
      <div class="content-center">
          <div class="row">
              <div class="col-md-6 ml-auto mr-auto text-center">
                  <h1 class="title">{{__('players.page-title')}}</h1>
              </div>
          </div>
      </div>
  </div>

<!-- player info part start-->
<section class="team_member mt-5 mb-5">
  <div class="container">
     <div class="row">
       @foreach ($players as $player)
           <div class="col-sm-6 col-lg-3">
               <div class="single_team_member single-home-player">
                  <div class="card">
                     <img class="img-fluid" src="{{is_null($player->image)?asset('frontend/assets/img/default.png'):Voyager::image($player->image)}}" class="card-img-top" alt="player">
                     <div class="card-body mt-2">
                        <div class="tean_content ml-2">
                           <a class="player_item_date"><h3>{{$player->getTranslatedAttribute('wins')}}</h3></a>
                           <a href="/player/{{$player->getTranslatedAttribute('slug')}}">
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

      <div class="container mt-5">
         <div class="row justify-content-center">
           {{$players->links()}} 
         </div>
      </div>
  </div>
</section>

<!--Testimonial-->
@include('sections.testimonial')

@endSection
