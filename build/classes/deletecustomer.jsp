<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="css/NewFile2.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Delete account</title>
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
	<form action="delete" method="post">
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
     <button type="submit" class="btn btn-outline-primary"  onclick="location.href = 'customerinsert.jsp';">Delete </button>

</div>
	</form>
</body>
</html>