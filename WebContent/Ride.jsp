<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
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
        
        
                <div class="row">
                <div class="location-label">
                    <label>Customer Name: </label>                                    
                </div>
                <div class="location-input">
                    <input type="text" id="location-1" name="origin" placeholder="Enter a start location..."> 
                </div>
            </div>
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
  
             <div class="row">
                <div class="location-label">
                    <label>Select the vehicle Type: </label>                                    
                </div>
                <div class="location-input">
                   <select name="cars" id="cars">
                   <option value="volvo">Volvo</option>
					  <option value="saab">Saab</option>
					  <option value="mercedes">Mercedes</option>
					  <option value="audi">Audi</option>
					</select>
                </div>
            </div>
            
                 <div class="row">
                <div class="location-label">
                    <label>Select the Drver Type: </label>                                    
                </div>
                <div class="location-input">
                   <select name="cars" id="cars">
                   <option value="volvo">Volvo</option>
					  <option value="saab">Saab</option>
					  <option value="mercedes">Mercedes</option>
					  <option value="audi">Audi</option>
					</select>
                </div>
            </div>
            <div class="row">
            <div class="location-label">
            <label for="birthdaytime">Select (date and time):</label>
          </div>
             <div class="location-input">
            <input type="datetime-local" id="birthdaytime" name="birthdaytime">
                </div>
            </div>
            <!-- Stats table -->                
            <div id="output" class="result-table"></div>
            
             <!-- Submit button -->
            <div class="row">
                <button class="button" type="button" onclick="clearRoute();">Conform</button>
                <button class="button" type="button" onclick="calcRoute();">Submit</button>
            </div> 
       </form>
                
            <div class="container-map" id="google-map"></div>   
            

    </div>

</div>

            <!-- Footer with dynamic year change -->
        <div class="footer">
            <p>Created for educational purposes.<br><a target="_blank" href="https://www.anesmulalic.com">Anes Mulalic | <script type="text/javascript">
                document.write(new Date().getFullYear());
            </script></a></p>                 
        </div>

</body>
    <script src="https://maps.googleapis.com/maps/api/js?key="AIzaSyA73d4nweH0sGFQPxGGFKlb8406NmKO8O0"&libraries=places"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/newmap.js"></script>
</html>