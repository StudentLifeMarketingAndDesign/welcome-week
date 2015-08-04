var infos = [];
var locations = [
  ['The Metropolitan Museum of Art', 40.779632,-73.963419, 'Grace Rainey Rogers Auditorium<br /> 1000 5th Avenue<br /> New York, NY 10028', '<p><a href="http://metmuseum.org">metmuseum.org</a></p>'],
  ['Avery Fisher Hall', 40.772693,-73.982967, '10 Lincoln Center Plaza<br />New York, NY 10023', '<p><a href="http://nyphil.org">nyphil.org</a></p>'],
  ['David Rubenstein Atrium<br /> at Lincoln Center', 40.771361,-73.982345, '61 West 62nd Street<br /> New York, NY 10023', '<p><a href="http://www.lincolncenter.org">lincolncenter.org</a></p>'],
  ['Gerald W Lynch Theater <br />at John Jay College', 40.771101,-73.988803, '524 West 59th Street<br /> New York, NY 10023', '<p><a href="http://jjay.cuny.edu">jjay.cuny.edu</a></p>'],
  ['Merkin Concert Hall <br />at Kaufman Music Center', 40.775667,-73.98301, '129 W 67th Street<br /> New York, NY 10023', '<p><a href="http://kaufman-center.org">kaufman-center.org</a></p>'],
  ['Frederck P. Rose Hall<br />at Lincoln Center', 40.769232,-73.982838, '10 Columbus Circle<br /> New York, NY 10023', '<p><a href="http://jalc.org">jalc.org</a></p>'],
  ['Stanley H. Kaplan Penthouse', 40.774342,-73.984124, '165 West 65th Street<br /> New York, NY 10023', '<p><a href="http://jalc.org">jalc.org</a></p>'],
  ['SubCulture', 40.72599,-73.994125, '45 Bleecker Street<br /> New York, NY 10012', '<p><a href="http://subculturenewyork.com">subculturenewyork.com</a></p>'],
  ['The Museum of Modern Art', 40.761837,-73.977753, '11 West 53rd Street<br /> New York, NY 10019', '<p><a href="http://moma.org">moma.org</a></p>']   
   ];
   
    function initialize() {
    var myOptions = {
      center: new google.maps.LatLng(40.779632,-73.963419),
      zoom: 13,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
	  scrollwheel: false
    }; 
	
	
    var map = new google.maps.Map(document.getElementById("map-canvas"),
        myOptions);
    setMarkers(map,locations)
  } 
   
	
	
  function setMarkers(map,locations){
      var marker, i
for (i = 0; i < locations.length; i++)
 {  

 var venue = locations[i][0]
 var lat = locations[i][1]
 var long = locations[i][2]
 var add =  locations[i][3]
 var website =  locations[i][4]

 latlngset = new google.maps.LatLng(lat, long);

  var marker = new google.maps.Marker({  
          map: map, title: venue , position: latlngset  
        });
        map.setCenter(marker.getPosition())

        var content = '<img src="http://nyphil.org/~/media/images/concerts-tickets/Season/1314/ny-phil-biennial.png" style="width:80%">' + '<h3 class="venueName">' + venue +  '</h3>' +  add  +  website  
  var infowindow = new google.maps.InfoWindow()
       
google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){ 
        return function() {
        
        /* close the previous info-window */
       closeInfos();        
           infowindow.setContent(content);
           infowindow.open(map,marker);
        
        /* keep the handle, in order to close it on next click event */
   infos[0]=infowindow;        
        };
    })(marker,content,infowindow)); 

  }
  }

function closeInfos(){ 
   if(infos.length > 0){ 
      /* detach the info-window from the marker ... undocumented in the API docs */
      infos[0].set("marker", null); 
      /* and close it */
      infos[0].close(); 
      /* blank the array */
      infos.length = 0;
   }
}