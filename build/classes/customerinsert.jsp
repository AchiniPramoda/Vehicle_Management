<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script> 
function validate()
{ 
     var fullname = document.form.fname.value;
     var email = document.form.email.value;
     
     var username = document.form.uid.value; 
     var password = document.form.psw.value;
     var conpassword= document.form.psw2.value;
     
     if (fullname==null || fullname=="")
     { 
     alert("Full Name can't be blank"); 
     return false; 
     }
     else if (email==/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (username==null || username=="")
     { 
     alert("Username can't be blank"); 
     return false; 
     }
     else if(password.length<6)
     { 
     alert("Password must be at least 6 characters long."); 
     return false; 
     } 
     else if (password!=conpassword)
     { 
     alert("Confirm Password should match with the Password"); 
     return false; 
     } 
 } 
</script> 
 <!-- Bootstrap css -->
   
     <script src="js/myins.js"></script>
	<meta charset="ISO-8859-1">
	<title>Register</title>
<link href="css/up.css" rel="stylesheet">
<link rel="stylesheet" href="js/insert.js">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
	<form action="insert" method="post" name="form" onsubmit="return validate()">
	<div class="container">
	<h1> Create Account Here...</h1>
	   
		First  Name <br><input type="text"  class="form-control" name="fname" required ><br>
	
		Last  Name <br><input type="text"  class="form-control" name="lname" required ><br>
		
	 
		Email Address <br><input type="text"  class="form-control" name="email" required><br>
		
		Phone Number<br> <input type="text" class="form-control" name="phone" required><br>
		
		User Name <br><input type="text"  class="form-control" name="uid"><br>
	
		Password <br><input type="password" class="form-control"  name="psw" required><br>
		
	    Conform	Password <br><input type="password" class="form-control"  name="psw2" required><br>
		<br>
		<button type="submit" name="submit"  class="btn btn-outline-primary" value="Create Customer">Create Customer</button>
		</div>
	</form>

</body>
</html>