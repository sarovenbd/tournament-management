@if (count($players)>0)
    <section class="ftco-team img" style="background-image:url({{asset('frontend/assets/img/match/match-bg.jpg')}});" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 pt-3 text-center">
                    <h2 class="title">Meet Our Players</h2>
                    <p>Meet the world class players fighting each other</p>
                </div>
            </div>
            <div class="row pb-5">
                <div class="col-md-12">
                    <div class="carousel-team owl-carousel">
                        @foreach ($players as $player)
                            <div class="item">
                                <div class="team-wrap text-center">
                                    <div class="img img-fluid" style="background-image: url({{is_null($player->image)?asset('frontend/assets/img/default.png'):Voyager::image($player->image)}});"></div>
                                    <div class="text">
                                        <h3 class="mb-0">{{$player->getTranslatedAttribute('name')}}</h3>
                                        <span class="position">{{$player->getTranslatedAttribute('country')}}</span>
                                    </div>
                                </div>
                            </div> 
                        @endforeach    
                    
                    </div>
                </div>
            </div>
        </div>
    </section>  
@endif