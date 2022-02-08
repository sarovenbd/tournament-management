@if (count($testimonials)>0)
    <section class="testimony-section" style="background-image: url({{asset('frontend/assets/img/match/match-bg.jpg')}});" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container pb-5 pt-5">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 text-center heading-section heading-section-white">
                    <span class="subheading">Testimonial</span>
                    <h2 class="mb-4">Happy Viewers</h2>
                </div>
            </div>
            <div class="row ftco-animate justify-content-center">
                <div class="col-md-7">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        @foreach ($testimonials as $testimonial)
                            <div class="item">
                                <div class="testimony-wrap text-center py-4 pb-5">
                                    <div class="user-img mb-4" style="background-image: url({{is_null($testimonial->image)?asset('frontend/assets/img/default.png'):Voyager::image($testimonial->image)}})">
                                        <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="fas fa-quote-left"></i>
                                        </span>
                                    </div>
                                    <div class="text p-3">
                                        <p class="mb-4"> {{$testimonial->getTranslatedAttribute('testimony')}} </p>
                                        <p class="name">{{$testimonial->getTranslatedAttribute('name')}}</p>
                                        <span class="position">Viewer</span>
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