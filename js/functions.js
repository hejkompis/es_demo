/* jQuery-funktioner */

var root = window.location.origin;

$(document).ready(function() {
	
	$(document).on('click', '[data-type="confirm"]', function() {

		var message = $(this).attr('data-message');

		if(!confirm(message)) {
			return false;
		}

	});

});

$(document).ready(function() {

	$('[data-type="slider"]').click(function(e) {
		
		var dataTarget = $(this).attr('data-target');
			
		$(this).children('span').toggleClass('fa-angle-down fa-angle-up');
		$('[data-type="content"][data-target="'+dataTarget+'"]').slideToggle('slow');
		
		e.preventDefault();
		
	});
	
	$('[data-type="slider"]').append(' <span class="fa fa-angle-down">');
	
	$('.nav-tabs li a').click(function (e) {
	
		e.preventDefault()
  		$(this).tab('show');
	
	});

});