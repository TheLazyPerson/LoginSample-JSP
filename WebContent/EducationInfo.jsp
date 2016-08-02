<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Assignment using jsp</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
		<form class="form-signin" action="OccupationInfo.jsp" method="post">
			<h3 class="form-signin-heading">Create User Profile</h3>
			<h4 class="form-signin-heading">Enter Education Information</h4>
			
			<label for="inputCollege" class="sr-only">College Name</label>
			<input type="text" name="college" id="inputCollege" class="form-control" placeholder="Collage Name" required autofocus>
			
			<label for="inputDegree" class="sr-only">Degree:</label>
			<input type="text" name="degree" id="inputDegree" class="form-control" placeholder="Degree" required>
			
			<label for="inputGrade" class="sr-only">Grade:</label>
			<input type="number" name="grade" id="inputGrade" class="form-control" placeholder="Grade" required>
			
			<input type="hidden" name="submitted" value="true">
			<button class="btn btn-block btn-default btn-primary" type="submit">Next</button>
      		
      	</form>      	
    </div> <!-- /container -->

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>