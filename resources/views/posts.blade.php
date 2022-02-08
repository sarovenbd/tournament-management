@extends('layouts.app')

@section('title', 'Posts')

@section('content')

  <div class="page-header page-header-small">
    <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
    </div>
    <div class="content-center">
      <div class="row">
          <div class="col-md-6 ml-auto mr-auto text-center">
            <h1 class="title">{{__('news.page-title')}}</h1>
          </div>
      </div>
    </div>
  </div>
  <div class="main main-raised mt-5">
    <div class="container">
      @if(count($posts)>0) 
        <div class="row mt-5">
          @foreach($posts as $post)
            <div class="col-lg-4 col-md-6 mt-5">
              <div class="card card-blog h-100">
                <div class="card-image">
                  <a href="/post/{{$post->slug}}">
                    <img class="img-fluid" src="{{is_null($post->image)? asset('frontend/assets/img/default.png') :Voyager::image($post->image)}}">
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="category text-warning">{{is_null($post->category_id)?"Uncategorized":$post->category->name}}</h6>
                  <h4 class="card-title">
                    <a href="/post/{{$post->slug}}" class="card-link text-white">{{$post->getTranslatedAttribute('title')}}</a>
                  </h4>
                  <p class="card-description">{{Str::words($post->getTranslatedAttribute('excerpt'),10)}}</p>
                </div>
                <p class="ml-3 mb-3"> <i class="tim-icons icon-watch-time"></i> {{$post->created_at->diffForhumans()}} </p>
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
        {{$posts->links()}} 
      </div>
    </div>
    
    @if (count($featured_posts)>0)
    <div class="section">
        <div class="container">
          <div class="row">
            <div class="col-md-12 ml-auto mr-auto">
              <h2 class="title ml-1">Featured</h2>
              <br/>
              @foreach ($featured_posts as $post)
                <div class="card blog-horizontal">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card-image">
                              <a href="/post/{{$post->slug}}">
                                <img src="{{is_null($post->image)? asset('frontend/assets/img/default.png') :Voyager::image($post->image)}}" />
                              </a>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="card-body">
                              <h3 class="card-title">
                              <a href="/post/{{$post->slug}}" class="card-link text-white">{{$post->getTranslatedAttribute('title')}}</a>
                              </h3>
                              <p class="card-description">
                                  {{Str::words($post->getTranslatedAttribute('excerpt'),10)}}
                                  <a href="/post/{{$post->slug}}"> Read More </a>
                              </p>

                              <div class="author">
                                <p>By {{ is_null($post->authorId)?'Admin':$post->authorId->name }}
                                </p>
                                <p>{{$post->created_at->diffForhumans()}}
                                </p>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
              @endforeach
            </div>
          </div>
        </div>
      </div>
    @endif
    
  </div>
    
@endsection