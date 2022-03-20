<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./InsertTrip_files/bootstrap.min.css">
<link rel="stylesheet"
	href="./InsertTrip_files/Navigation-with-Button.css">
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
	</br>
	</br>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

 
body {
 background-image: url(images/pay2.jpg);
  font-family: Arial;
  font-size: 14px;
  padding: -8px;
   font-color:#2cabee;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

* {
  box-sizing: border-box;
}

.row {

  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 65%; /* IE10 */
  flex: 60%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}
h3{
color:#E5F5F7 ;
}
.container {

 max-width: 500px;
  background-color:black ;
  margin-left:400px;
  padding: 5px 2px 10px 70px;
  border: 1px solid pink;
  border-radius: 3px;
  font-color:white;
}
h2{
 margin-left:450px;
 color:#E5F5F7;


}
input[type=text] {
  width: 80%;
  margin-bottom: 8px;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom:8px;
  display: block;
  color:white;
}

.icon-container {
  margin-bottom: 10px;
  padding: 7px 0;
  font-size: 26px;
  font-color:white;
}

.btn {
  background-color: #0E1718;
  color: white;
  padding: 12px;
  margin: 1px ;
  border: none;
  width: 90%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #2cabee;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 80px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 10px;
  }
}

</style>

</head>
<body>
<br>
<br>
<br>
<br>
<h2>Do Your payments Here....</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="Pay" method="post"  >
      
        <div class="row">
          <div class="col-50">
         <h3>Payment</h3>
            <label ><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="fname" placeholder="Adee M. Doe">
            <label ><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="Adess@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th  Main Street">
            <label ><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="colombo">
            <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="">
		</div>
           
    
           
          </div>
          <div class="col-50">

            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cd" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="CdNo" placeholder="1111-2222-3333">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="month" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="year" placeholder="2028">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
        <input type="submit" value="Continue to checkout" onclick="location.href = 'customerinsert.jsp';"class="btn">
      </form>
    </div>
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
  	 <br>
  	 <br>
  	 <br>
  </footer>
</html>
