$(document).ready(function() {

	console.log("Am I working?");

	if ($('.map-canvas').length <= 0 ) {
		return;
	};

	var mapCanvas = document.getElementsByClassName('map-canvas')[0];

	var mapOptions = {

		center: new google.maps.LatLng(-22.875, 151.136),
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	var map = new google.maps.Map(mapCanvas, mapOptions);
	
	var marker = new google.maps.Marker({
		position: { lat: -33.875, lng: 151.136 },
		map: map
	});

})