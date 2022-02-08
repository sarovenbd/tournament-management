(function ($) {

	'use strict';
    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });


	$('.carousel-testimony').owlCarousel({
		autoplay: true,
		autoHeight: true,
		center: true,
		loop: true,
		items:1,
		margin: 30,
		stagePadding: 0,
		nav: false,
		dots: true,
		navText: ['<span class="ion-ios-arrow-back">', '<span class="ion-ios-arrow-forward">'],
		responsive:{
			0:{
				items: 1
			},
			600:{
				items: 1
			},
			1000:{
				items: 1
			}
		}
	});

	$('.carousel-team').owlCarousel({
		autoplay: true,
		autoHeight: true,
		center: true,
		loop: true,
		items:1,
		margin: 30,
		stagePadding: 0,
		nav: false,
		dots: true,
		navText: ['<span class="ion-ios-arrow-back">', '<span class="ion-ios-arrow-forward">'],
		responsive:{
			0:{
				items: 1
			},
			600:{
				items: 3
			},
			1000:{
				items: 5
			}
		}
	});

	
    /*------------------------
		Video Slider
    ----------------------- */
    $(".video-slider").owlCarousel({
        items: 4,
        dots: false,
        autoplay: false,
        margin: 0,
        loop: true,
        smartSpeed: 1200,
        nav: true,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 2,
            },
            768: {
                items: 3,
            },
            992: {
                items: 4,
            },
        }
    });

    /*------------------
        Magnific Popup
    --------------------*/
    $('.video-popup').magnificPopup({
        type: 'iframe'
    });

	$('.langSelect').on('change',function(){
		var lang=$('select[class=langSelect] option').filter(':selected').val();

		$.get('/locale/'+lang).done(function(){
			location.reload(true);
		}).fail(function(){
			alert('try again');
		})
	});

})(jQuery);