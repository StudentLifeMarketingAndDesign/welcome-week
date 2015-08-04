$(document).ready(function(){ 
	// Variables
	var links = $('#main-menu').find('a');
	var htmlbody = $('html,body');
	
	function goToByScroll(dataslide) {
			var mainNavHeight = $('#main-nav').height() - 2;
			var isExpanded = ( $('.top-bar').hasClass('expanded') ) ;
			$('.top-bar').removeClass('expanded');
			var scrollTop ;
			
			if( isExpanded ) {
				scrollTop = ( $('#' + dataslide).offset().top ) - ( $('#main-nav').find('.title-area').height() ) ;
	      
			} else {
				scrollTop = ( $('#' + dataslide).offset().top ) - mainNavHeight ;
			}
			
      htmlbody.animate({
          scrollTop: scrollTop
      }, 2000, 'easeInOutQuint');
      
      
			
  }
  //When the user clicks on the navigation links, get the data-slide attribute value of the link and pass that variable to the goToByScroll function
	
  links.click(function (e) {
      e.preventDefault();
      dataslide = $(this).attr('data-slide');
      goToByScroll(dataslide);
      return false ;
  });
  
  
  // Get dimensions/positions
  var windowHeight = $(window).height();
  var windowWidth = $(window).width();
  var mainNavHeight = $('#main-nav').height();
  var topOfHero = $("#home").offset().top;
  
  var daHeight = windowHeight-mainNavHeight+2 ;
  
  // Set slide heights
  $('body').css( "padding-top", mainNavHeight );
  $("#home").css("height",daHeight);
  $("#press").css("height",daHeight);
  $("#connect").css("height",daHeight);
  $("#festival-pass").css("height",daHeight);
  $('.video-background').css( 'height', daHeight );
  
	// Init composers Grid
	Grid.init();
	
	// Scroll down button on home slide
	$(".slide-button").find( "a" ).click(function(e){
		e.preventDefault();
    dataslide = $(this).attr('data-slide');
    goToByScroll(dataslide);
      return false;
	});
	
	// Click logo to slide back to the top
	//$(".name").find( "a" ).click(function() {
	//  $("html, body").animate({ scrollTop: 0 }, "slow");
	//  return false;
	//});
  
  // If not a touch device do stellar
	if(!Modernizr.touch){ 		
		  
		  $('.slide').css( 'background-attachment', 'fixed' );
	    $.stellar({
		    horizontalScrolling: false,
		    horizontalOffset: 0
		  });			
		  
		  // Load video html
			$('#video-container').html('<video autoplay loop class=""><source src="http://nyphil.vo.llnwd.net/o28/video/1314/Owl_Loop_Final.webmhd.webm" type="video/webm"/><source src="http://nyphil.vo.llnwd.net/o28/video/1314/Owl_Loop_Final.ogg" type="video/ogg"/><source src="http://nyphil.vo.llnwd.net/o28/video/1314/owl_loop_final.mp4" type="video/mp4"/>Your browser does not support the video tag.</video>');
			
			//$('video').attr('height', daHeight );
			// Helper function to Fill and Center the HTML5 Video
			
			
			 				 
	} else {
			$('#festival-pass').addClass('no-video') ;
		
	}
	$('body').scrollspy({ 
	  target: '#main-menu',
	  offset: mainNavHeight 
	});
  
  
  
  
  $('.hard-link').click(function (e) {
      e.preventDefault();
      window.open($(this).attr('href'));
  });
  
});


$(window).load(function(e){ 
		$('video, object').maximage('maxcover');	 
		$('body').scrollspy('refresh');
});

$(window).resize(function(e){   
	if(Modernizr.touch) {
    e.preventDefault();
    return false;
	}
	
	// Get dimensions/positions
  var windowHeight = $(window).height();
  var windowWidth = $(window).width();  
  var mainNavHeight = $('#main-nav').height();
  var topOfHero = $("#home").offset().top;
  
  var daHeight = windowHeight-mainNavHeight + 2 ;
  
  $('body').css( "padding-top", mainNavHeight );
  $("#home").css("height",daHeight);
  $("#press").css("height",daHeight);
  $("#connect").css("height",daHeight);
  $("#festival-pass").css("height",daHeight);
	$('.video-background').css( 'height', daHeight );
	
	$('body').scrollspy('refresh');
	//alert('topBarHeight resize: ' + topBarHeight );
});