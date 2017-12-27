<%-- 
    Document   : Contact
    Created on : Dec 7, 2017, 10:53:57 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #p2{
                position: relative;
                top: 240px;
                left: 70px;
            }
            #p3{
                position: relative;
                top: 245px; 
                left: 70px;
            }
            
            #map {
                position: relative;
                left: 300px;
                top: -100px;
                width: 75%;
                height: 500px;
                background-color: grey;
            }
            #address{
                position: absolute;
                top: 210px;
            }
      
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body bgcolor="#ffccff">
        <b id="address">&emsp;&emsp;&emsp;&emsp;Registered Office Address</b>
        <p id="p2">
            3rd Floor, A Block, <br>
            Hans Vihar Apartments, <br>
            Sector 13, <br>
            Rohini, <br>
            New Delhi - 110085 <br>
        </p>
        &emsp;
        &emsp;
        &emsp;
        <p id="p3">
            Telephone: +91-85-6155599
        </p>
    <div id="map"></div>
    </body>
    
    <script>
      function initMap() {
        var uluru = {lat: 28.725111,lng: 77.129161};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBU30LXagndeRsm93NUvdWNxFW-OHcAP9c&callback=initMap">
    </script>
</html>
