@extends('layouts.app')

@section('title', 'Streams')

@section('content')
  <div class="page-header page-header-small">
      <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
      </div>
      <div class="content-center">
          <div class="row">
              <div class="col-md-6 ml-auto mr-auto text-center">
                  <h1 class="title">{{__('streams.page-title')}}</h1>
              </div>
          </div>
      </div>
  </div>

  
  <div class="main main-raised mt-5 mb-5">
    <div class="container">
      @if(count($streams)>0)
        <div class="row mt-5">
          @foreach($streams as $stream)
            <div class="col-lg-4 col-md-6 mt-5">
              <div class="card card-blog h-100">
                <div class="card-image">
                  <a href="/stream/{{$stream->slug}}">
                    <img class="img-fluid" src="{{is_null($stream->image)? asset('frontend/assets/img/default.png') :Voyager::image($stream->image)}}">
                  </a>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="/stream/{{$stream->slug}}" class="card-link text-white">{{$stream->getTranslatedAttribute('title')}}</a>
                  </h4>
                  <p class="card-description">{{Str::words($stream->getTranslatedAttribute('description'),10)}}</p>
                </div>
                <p class="ml-3 mb-3"> <i class="tim-icons icon-wifi"></i> {{$stream->status}} </p>
              </div>
            </div>
          @endforeach
        </div>
      @else
        No items to show
      @endif
    </div>

    <div class="container mt-5">
      <div class="row justify-content-center">
        {{$streams->links()}} 
      </div>
    </div>

  </div>
                     
          
@endsection
