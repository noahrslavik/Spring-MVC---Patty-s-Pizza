<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Review</title>
<link href="/style.css" rel="stylesheet" />
</head>


<body>

	<h1>Leave us a Review</h1>
	
	<form action="/reviewconfirmation">
		<p>
			<label>Name:</label><br>
			<input type="text" name="name">
		</p>
		
		<p>
			<label>Comment:</label><br>
			<textarea name="comment" rows="10" cols="30">
			</textarea>
		</p>
		
		<input type="radio" id="1" name="1" value="1">
  			<label for="1">1 </label>
  		<input type="radio" id="2" name="2" value="2">
  			<label for="2">2</label>
  		<input type="radio" id="3" name="3" value="3">
  			<label for="3">3</label>
  		<input type="radio" id="4" name="4" value="4">
  			<label for="4">4</label>
  		<input type="radio" id="5" name="5" value="5">
  			<label for="5">5</label> 		
  		
  		<input type="submit" value="Submit">
	
	</form>
	
	<p><a href="/">Home</a></p>

</body>
</html>