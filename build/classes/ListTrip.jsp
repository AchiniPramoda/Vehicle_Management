<%@page import="com.model.Trip"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.ITripService"%>
<%@page import="com.service.TripServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>InsertTrip</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/Newlis.css">
<link rel="stylesheet"
	href="./InsertTrip_files/Registration-Form-with-Photo.css">
<link rel="stylesheet" href="./InsertTrip_files/styles.css">
<link rel="stylesheet" href="css/style4.css">
<meta charset="ISO-8859-1">
<title>Booked Trip List</title>
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
<body data-new-gr-c-s-check-loaded="14.984.0" data-gr-ext-installed=""
	class="body3">
	
	<br>
	<br>
	<br>
	<br>
	<div align="left" class="container">
		<div class="table-responsive">
			<table class="table table-success table-striped table-primary">

				<tr>
					<th>Trip ID</th>
					<th>Customer Name</th>
					<th>Contact No</th>
					<th>Vehicle type</th>
					<th>Pick Up location</th>
					<th>Distance</th>
					<th> Destination</th>
					<th>Total Price</th>
					<th>Date</th>
					<th>Select</th>
				</tr>
				<%
				ITripService iTripService = new TripServiceImpl();
				ArrayList<Trip> arrayList = iTripService.getTrip();

				for (Trip trip : arrayList) {
				%>
				<tr>
					<td><%=trip.getTripID()%></td>
					<td><%=trip.getCustomername()%></td>
					<td><%=trip.getContactno()%></td>
					<td><%=trip.getVehicletype()%></td>
					<td><%=trip.getPickup()%></td>
					<td><%=trip.getDistance()%></td>
					<td><%=trip.getDestination()%></td>
					<td><%=trip.getTotalprice()%></td>
					<td><%=trip.getDate()%></td>
					<td>
						<form method="POST" action="GetTripServlet">
							<input type="hidden" name="tripID2" value="<%=trip.getTripID()%>" />
							<input type="submit" value="Update"
								class="btn btn-primary buttonde" />
						</form> <br>
						<form method="POST" action="DeleteTripServlet">
							<input type="hidden" name="tripID" value="<%=trip.getTripID()%>" />
							<input type="submit" value="Delete "
								class="btn btn-primary buttonde" />
						</form>
					</td>
				</tr>
				<%
				}
				%>

			</table>
		</div>
	</div>
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