<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add more Details</title>
<style>
body {
    background-color: lightblue;
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}
</style>
</head>
<body>
	<form:form action="/postHouse" method="POST" class="login-form" modelAttribute="house">
<form:hidden path="pic" value="${house.pic}"/>
	name: <c:out value="${house.name}"></c:out> <br>
	
	address: <c:out  value="${house.address}"></c:out><br>
	owner: <c:out  value="${house.owner}"></c:out><br>
	description: <c:out  value="${house.description}"></c:out><br>
	category: <c:out  value="${house.category}"></c:out><br>
	hotel: 	  <c:out  value="${house.hotel}"/><br><br>
	bedrooms: <c:out  value="${house.bedrooms}"></c:out><br>
	size: <c:out value="${house.size}"></c:out><br>
	price: <c:out value="${house.price}"></c:out><br>
	bath: <c:out value="${house.bath}"></c:out><br>
	
	Washer:
	  <c:out value="${house.washer}"/><br>
  dryer:
  <c:out  value="${house.dryer}"/> <br>
  kitchen:
  <c:out  value="${house.kitchen}"/> <br>
  
  WIFI:
  <c:out value="${house.WIFI}"/><br>
  
  pool:
  <c:out  value="${house.pool}"/><br>


</form:form>


<br><br>

Upload house pic:
<form method="POST" action="upload" enctype="multipart/form-data">	
	<input class="btn btn-secondary" type="file" name="file" style=" position: absolute; left: 175px; top: 270px;"/><br /> <br /> 
    <input type="submit" class="btn btn-secondary btn-xs" value="Submit" style=" position: absolute; left: 190px; top: 300px;" />
</form>

<form:form action="/viewHouse" method="GET">
<input type="submit" value="View all houses">
</form:form>	

	
</body>
</html>