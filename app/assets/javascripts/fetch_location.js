$(document).ready(function(){

  function getLocation() {
    var longitude, latitude;

    navigator.geolocation.getCurrentPosition(function(position){
      latitude = position.coords.latitude;
      longitude = position.coords.longitude;
      $("#brewery_latitude").val(eval(latitude));
      $("#brewery_longitude").val(eval(longitude));
    });
  }

  getLocation();
});