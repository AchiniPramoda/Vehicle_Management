<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<table>
	<h1> Avalable  details...</h1>
	<c:forEach var="cus" items="${checkDetails}">
	<c:set var="id" value="${cus.id}"/>
	<c:set var="soursecity" value="${cus.type}"/>
	<c:set var="prices" value="${cus.prices}"/>
	<c:set var="soursecity" value="${cus.soursecity}"/>
	
  <tr>
    <th>Booking id</th>
    <th>Booking type</th>
    <th>Booking price for km</th>
      <th>Booking price for km</th>
	</tr>
	<tr> 
		
		<td>${cus.id}</td>
			<td>${cus.type}</td>
				<td>${cus.prices}</td>
				<td><button class="editbtn">edit</button></td>
				
	</tr>
	</c:forEach>
	</table>				
</body>
</html>
