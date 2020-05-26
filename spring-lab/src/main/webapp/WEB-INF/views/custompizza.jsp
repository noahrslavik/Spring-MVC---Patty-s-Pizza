<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Pizza Builder</title>
<link href="/style.css" rel="stylesheet" />
</head>

<body>
	
	<div class="container">
		<h1>Custom Pizza Builder</h1>
	</div>
	
	<div class="container">
		<form action="/confirmation">
			
			<div class="container">
				<label for="size">What Size:</label>
				<select id="size" name="size" required>
					<option value="small">Small</option>
					<option value="medium">Medium</option>
					<option value="large">Large</option>
				</select>		
			</div>
			
			<div class="container">
				<label for="toppings">How many toppings:</label>
				<select id="toppings" name="toppings" required>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
			</div>
			
			<div class="container">
				<input type="checkbox" id="glutenfree" name="glutenfree" value="glutenfree">
  				<label for="glutenfree"> Gluten Free Crust?</label><br>
			</div>
			
			<div class="container">
				<label>Special Requests:</label>
				<p></p>
				<textarea name="specialrequests" rows="5" cols="25" placeholder="Special Requests?..." required></textarea>
			</div>
			
			<div class="container">
				<input type="submit" value="Submit">
			</div>		
		</form>
	</div>
	
	<div class="container">
		<h3><a href="/">Home</a></h3>
	</div>

</body>
</html>