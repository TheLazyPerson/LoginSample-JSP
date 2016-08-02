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
	<jsp:useBean id="education" class="com.bitwise.training.utils.EducationInformation"
		scope="application">
	</jsp:useBean>

	<jsp:setProperty property="*" name="education" />
	<div class="container">
		<form class="form-signin" action="ResidentialInfo.jsp" method="post">
			<h3 class="form-signin-heading">Create User Profile</h3>
			
			<h4 class="form-signin-heading">Enter Occupation Information</h4>
			
			<label for="inputCompany" class="sr-only">Company</label>
			<input type="text" name="company" id="inputCompany" class="form-control" placeholder="Company Name" required autofocus>
			<label for="inputDegree" class="sr-only">Designation:</label>
			<input type="text" name="designation" id="inputDegree" class="form-control" placeholder="Designation" required>
			<label for="inputSalary" class="sr-only">Salary:</label>
			<input type="text" name="salary" id="inputSalary" class="form-control" placeholder="Salary" required>
			
			<button class="btn btn-lg btn-primary " type="submit">Next</button>
      	
      	</form>      	
    </div> <!-- /container -->

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>