@extends('layouts.app')

@section('title', $stream->getTranslatedAttribute('title'))

@section('content')
  <div class="page-header page-header-small">
      <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
      </div>
      <div class="content-center">
          <div class="row">
              <div class="col-md-6 ml-auto mr-auto text-center">
                  <h1 class="title">{{$stream->getTranslatedAttribute('title')}}</h1>
              </div>
          </div>
      </div>
  </div>

  <div class="section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-8 ml-auto mr-auto text-center">
          <div class="stream-container mb-5">
            <img src="{{is_null($stream->image)?asset('frontend/assets/img/default.png'):Voyager::image($stream->image)}}">
            <a href="{{$stream->url}}" class="play-btn video-popup"><img src="{{asset('frontend/assets/img/videos/play.png')}}" alt="video img"></a>
          </div>
          <p>{{ $stream->getTranslatedAttribute('description') }}</p>
        </div>
      </div>        
    </div>
  </div>                 
          
@endsection


