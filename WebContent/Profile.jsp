<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="customTags" uri="WEB-INF/custom.tld"%>
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
	<%-- <customTags:GetForm />--%>
	<jsp:useBean id="residential" class="com.bitwise.training.utils.ResidenceInformation"
		scope="application">
	</jsp:useBean>
	<jsp:setProperty property="*" name="residential" />
	<div class="container">
		<form class="form-signin" action="Logout" method="post">
			<button class="btn btn-sm btn-danger btn-block" type="submit">Logout</button>
      	</form>
		<form class="form-signin" action="Profile.jsp" method="post">
			<h3 class="form-signin-heading">User Profile</h3>
			
			<h4 class="form-signin-heading">Education Information</h4>
			<jsp:useBean id="education" class="com.bitwise.training.utils.EducationInformation"
				scope="application">
				
			</jsp:useBean>
								
			
			<p>College: <jsp:getProperty property="college" name="education" /></p>
			<p>Degree: <jsp:getProperty property="degree" name="education" /></p>
			<p>Grade: <jsp:getProperty property="grade" name="education" /></p>
			
			<h4 class="form-signin-heading">Occupation Information</h4>
			
			
			<jsp:useBean id="occupation" class="com.bitwise.training.utils.OccupationInformation" scope="application">
			</jsp:useBean>
			<p>Company: <jsp:getProperty property="company" name="occupation" /></p>
			<p>Designation: <jsp:getProperty property="designation" name="occupation" /></p>
			<p>Salary: <jsp:getProperty property="salary" name="occupation" /></p>
			
			<h4 class="form-signin-heading">Residential Information</h4>
			
			<!-- no need to useBean Again for residence information -->
			<p>Street: <jsp:getProperty property="street" name="residential" /></p>
			<p>City: <jsp:getProperty property="city" name="residential" /></p>
			<p>Pin Code: <jsp:getProperty property="pin" name="residential" /></p>
			<p>State: <jsp:getProperty property="state" name="residential" /></p>
			
	
	
	
      	</form>      	
    </div> <!-- /container -->

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>