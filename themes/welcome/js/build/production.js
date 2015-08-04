$(document).ready(function() {

    // Hide the directory navigation
    // $('.division-directory').hide();


    // Show/Hide the directory navigation on-click
    $('.directory-toggle').click(function() {
        $(this).toggleClass("active");
        $('.division-directory').toggleClass("active");
        return false;
    });


    // For small screens - show/hide the search on-click
    $('.search-toggle').click(function() {
        $(this).toggleClass('active');
        $('.division-search').slideToggle();
        return false;
    });


    // For small screens - show the directory
    $('.division-menu').on('click', '.has-subnav a', function() {
        $(this).next().slideToggle('slow');
        $(this).toggleClass('active');

    });

});
$(window).load(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');


	// $('.fancybox').fancybox({
	// 	nextClick : true,
	// 	helpers : {
	// 		title : {
	// 			type : 'inside'
	// 		},
	// 		overlay : {
	// 			css : {
	// 				'background':'rgba(238,238,238,0.85)'
	// 			}
	// 		}
	// 	}
	// });

	// Hero Carousel
	// $('.slick-hero').slick({
	// 	autoplay: true,
	// 	dots: false,
	// 	arrows: false,
	// 	fade: true,
	// 	speed: 800,
	// 	autoplaySpeed: 6000,
	// 	pauseOnHover: false,
	// });


	// Sponsors Carousel
	// $('.slick-sponsors').slick({
	// 	infinite: true,
	// 	speed: 300,
	// 	slidesToShow: 5,
	// 	slidesToScroll: 1,
	// 	autoplay: true,
	// 	responsive: [
	// 	{
	// 		breakpoint: 1024,
	// 		settings: {
	// 			slidesToShow: 4,
	// 			slidesToScroll: 1,
	// 			infinite: true,
	// 		}
	// 	},
	// 	{
	// 		breakpoint: 700,
	// 		settings: {
	// 			slidesToShow: 2,
	// 			slidesToScroll: 1
	// 		}
	// 	},
	// 	{
	// 		breakpoint: 480,
	// 		settings: {
	// 			slidesToShow: 1,
	// 			slidesToScroll: 1
	// 		}
	// 	}
	// 	]
	// });

	// Lazy load images
	// $(".unveil").unveil();


	$('.nav-title a').click(function() {
		$('.nav-main-wrapper').toggleClass('expand');
		return false;
	});
});
