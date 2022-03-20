 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <link href="css/NewFile1.css" rel="stylesheet">
   <link href="css/update.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
.button {
  background-color:gray; /* Green */
  border: black;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>
	 <div class="container-fluid">
      <div class="container">
          <div class="row">
       
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 bg_section_login">
          
	<table>
	<div class="tbl-header">
	<h1> your details...</h1>
	
	<c:forEach var="cus" items="${cusDetails}">
	<c:set var="id" value="${cus.id}"/>
	<c:set var="fname" value="${cus.fname}"/>
	<c:set var="lname" value="${cus.lname}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr> 
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer First Name</td>
		<td>${cus.fname}</td>
	</tr>
		<tr>
		<td>Customer last Name</td>
		<td>${cus.lname}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>
		<tr>
		<td>Customer password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</div>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" class="button button1" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" class="button button2" value="Delete My Account">
	</a>
	<a href="login.jsp">
	<input type="button" name="delete" class="button button2" value="next">
	</a>
	</div>
		</div>
			</div>
				</div>	
				
</body>
</html>