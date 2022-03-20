<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>InsertTrip</title>
<link rel="stylesheet" href="./InsertTrip_files/bootstrap.min.css">
<link rel="stylesheet" href="./InsertTrip_files/NewFile5.css">
<link rel="stylesheet" href="./InsertTrip_files/NewFile1.css">
<link rel="stylesheet" href="css/style4.css">
<link rel="stylesheet" href="css/header.css">
</head>
	<div class="header">
	<image class="logo" src="images/logo.jpg" width="140px" height="85px" alt="logo">
	
	<div class="header-right">
	<h2>..Route Master Transport..</h2>
	</div>
<!-- The form -->
<button type="button" class="butt" onclick="location.href = 'login.jsp';">Login</button> 
<button type="button" class="butt1"onclick="location.href = 'customerinsert.jsp';">Sign up</button>
<br>
<nav class="nav">
	<a href="index.jsp">Home</a>
	<a href="InsertTrip.jsp">Add Trip</a>
	<a href="ListTrip.jsp">List Trip</a>
	<a href="#">Your profile</a>

	<a href="#">Driver</a>
	<a href="#">Services</a>
	<a href="#">Rent a vehicle</a>
	<a href="index.jsp">Log Out</a>
	</nav>
	</div>
	<br>
	<br>
		<br>
	<br>
	<body data-new-gr-c-s-check-loaded="14.984.0" data-gr-ext-installed=""
	class="body4">
	<div class="register-photo">
		<div class="form-container">
			<div class="image-holder"></div>
			<form method="post" action="AddTripServlet">
				<h2 class="text-center">
					<strong>Book a Ride</strong>
				</h2>
				<div class="form-group">
					<input class="form-control" type="text" name="customername"
						placeholder="Enter Customer Name" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="number" name="contactno"
						placeholder="Enter Contact No" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="tel" name="vehicletype"
						placeholder="Enter Vehicle Type" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="pickup"
						placeholder="Enter Pick Up location" required>
				</div>
				
				<div class="form-group">
					<input class="form-control" type="number" name="distance"
						placeholder="Enter Distance" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="text" name="destination"
						placeholder="Enter Destination" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="price" name="totalprice"
						placeholder="Enter Total Price" required>
				</div>
				<div class="form-group">
					<input class="form-control" type="datetime-local" name="date"
						placeholder="Enter Date" required>
				</div>

				<div class="form-group">
					<button class="btn btn-primary btn-block" type="submit">MAKE RESERVATION</button>
				</div>
			</form>
		</div>
	</div>
	<script src="./InsertTrip_files/jquery-3.2.1.min.js.download"></script>
	<script src="./InsertTrip_files/bootstrap.min.js.download"></script>
	<script id="bs-live-reload" data-sseport="5414"
		data-lastchange="1620728791720"
		src="./InsertTrip_files/livereload.js.download"></script>


</body>
<footer class="footer">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>company</h4>
  	 			<ul>
  	 				<li><a href="#">about us</a></li>
  	 				<li><a href="#">our services</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 				<li><a href="#">affiliate program</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				<li><a href="#">Driving</a></li>
  	 				<li><a href="#">returns</a></li>
  	 				<li><a href="#">Your status</a></li>
  	 				<li><a href="#">payment options</a></li>
  	 				<li><a href="#"></a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Address</h4>
  	 			<ul>
  	 				<li><a href="#">Main Road,colombo 5</a></li>
  	 				<li><a href="#">076567990</a></li>
  	 				<li><a href="#">RouteMaster@.gmail.com</a></li>
  	 				
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>
</html>