<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patty's Pizza Pies </title>
<link href="/style.css" rel="stylesheet" />
</head>

<body>
	
	<div class="container">
		<h1>Welcome to Patty's</h1>
	
		<h2>Try a house favorite</h2>	
			
			<ul>
				<li>
					<h3><a href="/specialtypizza?sp=sp1">Spicy Chicken Fresco</a></h3>
				</li>
				<li>
					<h3><a href="/specialtypizza?sp=sp2">Patty's Signature</a></h3>	
				</li>
				<li>
					<h3><a href="/specialtypizza?sp=sp3">The Meat Supreme</a></h3>	
				</li>
			</ul>
		
		<h2>
			<a href="custompizza">Build your own pizza!</a>
		</h2>
		
		<h2>
			<a href="review">Leave us a review</a>
		</h2>
	</div>	
	
	
	
	
</body>
</html>