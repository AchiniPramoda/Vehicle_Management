<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

<head>
    
    <script>
let map;

function initMap(){
	map = new google.maps.Map(document.getElementById("map"),{
		center :{lat:8.312190,lng:80.418716},
		zoom: 8,

		
	});
}


</script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">    
    <title>Distance Between Two Cities</title>
</head>
<body>
    <div class="header">
            <div class="row">
                <h1>Calculate driving distance between two cities</h1>
            </div>
    </div>

    <div class="container">
        <form>
            <!-- Location 1 -->
            <div class="row">
                <div class="location-label">
                    <label>Origin: </label>                                    
                </div>
                <div class="location-input">
                    <input type="text" id="location-1" name="origin" placeholder="Enter a start location..."> 
                </div>
            </div>
            <!-- Location 2 -->
            <div class="row">
                <div class="location-label">
                    <label>Destination: </label>
                </div>
                <div class="location-input">
                    <input type="text" id="location-2" name="destination" placeholder="Enter a last location...">
                </div>
            </div>

            <!-- Submit button -->
            <div class="row">
                <button class="button" type="button" onclick="clearRoute();">Clear</button>
                <button class="button" type="button" onclick="calcRoute();">Submit</button>
            </div>      
            
            <!-- Stats table -->                
            <div id="output" class="result-table"></div>
       </form>
                
            <div class="container-map" id="map"></div>   
    </div>
      
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBf6u3GYWgKm3sCKSVZylnqCqgPFkq1Sho&callback=initMap&libraries=&v=weekly" async></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</body>
</html>