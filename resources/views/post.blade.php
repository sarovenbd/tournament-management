@extends('layouts.app')

@section('meta-tags')
<meta name="title" content="{{$post->seo_title}}">
<meta name="description" content="{{$post->meta_description}}">
<meta name="keywords" content="{{$post->meta_keywords}}">
@endSection

@section('title', $post->getTranslatedAttribute('title'))

@section('content')
    <div class="page-header">
        <div class="page-header-image" style="background-image: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.3)), url({{is_null($post->image)? asset('frontend/assets/img/default.png') :Voyager::image($post->image)}});"></div>
            <div class="container">
                <div class="row">
                    <div class="content-center">
                        <div class="col-md-8 ml-auto mr-auto text-center">
                            <h1 class="title">{{ $post->getTranslatedAttribute('title') }}</h1>
                            <br/>
                            <h4 class="description"><i class="tim-icons icon-single-02"></i> {{ is_null($post->authorId)?'Admin':$post->authorId->name }}</h4>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
    </div>

  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 ml-auto mr-auto">
            <h6 class="date">{{ $post->created_at->diffForHumans() }}</h6>
            <div class="blog-category mb-5">
                Category:&nbsp;
                <span class="badge badge-primary">{{ is_null($post->category_id)? "Uncategorized" : $post->category->name}}</span>
            </div>
            {!! clean($post->getTranslatedAttribute('body')) !!}
        </div>
      </div>
    </div>
  </div>
 
  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 ml-auto mr-auto">
          <div class="card-area">
            <h2 class="title text-center">Comments</h2>
            <div id="disqus_thread"></div>
          </div> 
        </div>
      </div>
    </div>
  </div>

  @if (count($related_posts)>0)
    <div class="section">
        <div class="container">
          <div class="row">
            <div class="col-md-12 ml-auto mr-auto">
              <h2 class="title text-center">Related</h2>
              <br/>
              @foreach ($related_posts as $post)
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
                                  {{Str::words($post->excerpt,10)}}
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
  
@endSection