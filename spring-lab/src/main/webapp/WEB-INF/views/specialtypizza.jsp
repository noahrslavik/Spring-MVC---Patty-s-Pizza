<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Famous Za's</title>
<link href="/style.css" rel="stylesheet" />
</head>


<body>
	
	
	<div class="container">
		<h3>${pizzaType}</h3>
		<h4>PRICE:</h4>
		<h5><fmt:formatNumber value="${price}" type="number" pattern="$#,###.##"/></h5>
		<h3><a href="/">Home</a></h3>
		<img alt="pizza" src="/images/patty.jpg" width="250px" height ="250px">
		<img alt="pizza" src="/images/smellyhands.jpg" width="250px" height ="250px">
		<img alt="pizza" src="/images/hottamales.jpg" width="250px" height ="250px">
	</div>

</body>
</html>