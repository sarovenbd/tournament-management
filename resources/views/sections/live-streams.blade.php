@if (count($streams)>0)
    <section class="video-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="title">Live Streams</h3>
                    <hr class="line-info"> 
                </div>
            </div>
            <div class="row">
                <div class="video-slider owl-carousel">

                    @foreach ($streams as $stream)
                        <div class="col-lg-3"> 
                            <div class="video-item set-bg" data-setbg="{{is_null($stream->image)?asset('frontend/assets/img/default.png'):Voyager::image($stream->image)}}">
                                <a href="{{$stream->url}}" class="play-btn video-popup"><img src="{{asset('frontend/assets/img/videos/play.png')}}" alt="video img"></a>
                                <div class="vi-time">{{$stream->status}}</div>
                            </div>
                        </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
    </section> 
@endif