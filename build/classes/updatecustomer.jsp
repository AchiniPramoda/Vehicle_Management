<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap css -->
   
    <!-- Custom css -->
<link href="css/up.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Update profile</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
	
	<form action="update" method="post">
	<div class="container">
	<h1> User Profile</h1>
		
			Customer ID<br><input type="text"  class="form-control" name="cusid" value="<%=id%>" readonly>
		
			
			Customer First Name<br><input type="text"  class="form-control" name="fname" value="<%=fname%>" >
		
			Customer Last Name<br><input type="text"  class="form-control" name="lname" value="<%=lname%>" >
	
	   
		Email Address<br>
		<input type="text" class="form-control" name="email" value="<%=email %>">

		Phone number<br>
		<input type="text" class="form-control" name="phone" value="<%=phone %>">
		
		User name<br>
		<input type="text" class="form-control"  name="uname" value="<%=userName %>">
		
		
		Password<br>
		<input type="password" class="form-control" name="pass" value="<%=password %>">
		
	
	<br>
	

	<button type="submit" name="submit"  class="btn btn-outline-primary" value="Update My Data">Update</button>
	</div>
	</form>
	

</body>
</html>