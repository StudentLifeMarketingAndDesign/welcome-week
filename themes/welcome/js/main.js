$(window).load(function() {

	// add js class to body if javascript enabled
	$('html').removeClass('no-js');

	// FITVIDS.JS
	$(".cbp_tmlabel").fitVids();

	$('.nav-title a').click(function() {
		$('.nav-main-wrapper').toggleClass('expand');
		return false;
	});

	// LAZYLOAD
	$(function() {
		$("img.lazy").lazyload({
			threshold : 200
		});
	});
});
