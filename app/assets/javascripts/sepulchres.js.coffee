$ ->
  mapOptions = {
    zoom: 16,
    center: new google.maps.LatLng(51.77732,19.43514),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)

  # $.ajax "http://localhost:3000/lutheran.json"
  #   done: (data) ->
  #     console.log(data[0]["lat"])
