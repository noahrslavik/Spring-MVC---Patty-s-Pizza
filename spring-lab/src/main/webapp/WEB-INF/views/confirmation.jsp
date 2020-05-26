<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Custom Pizza</title>
<link href="/style.css" rel="stylesheet" />
</head>

<body>
	<div class="container">
		<h1>Order Confirmation</h1>
	
		<h6>Size:</h6>
		<p>${size}</p>
		<h6>Number of Toppings:</h6>
		<p>${toppings}</p>
		<h6>Gluten Free:</h6>
		<p>${glutenfree}</p>
		<h6>Special Requests:</h6>
		<p>${specialRequests}</p>
		
		<h6>Price:</h6>
		<h5><fmt:formatNumber value="${totalPrice}" type="number" pattern="$#,###.##"/></h5>
		<h3><a href = "/custompizza"> Build another?</a></h3>
		<h3><a href="/">Home</a></h3>
	</div>

</body>
