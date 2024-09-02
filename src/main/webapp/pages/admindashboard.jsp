<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
	<h2 align="center">User Details</h2>
	<div style="text-align: right;">
	    <a href="adminLogout" class="btn btn-danger" style="margin-right: 130px;">Logout</a>
	</div>
<br>

<table border="1px" align="center">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
<!--	<th>Password</th>   -->
		<th>District</th>
		<th>Taluka</th>
		<th>Village</th>
		<th>Municipal_corporation</th>
		<th>Authorized_Person</th>
		
	
		<th>Action</th>
		
	</tr>
	
	<c:forEach items="${kk}" var="e">
		<tr>
			<td>${e.id}</td>
			<td>${e.full_name}</td>
			<td>${e.mobileNumber}</td>
			<td>${e.email}</td>
<!--		<td>${e.password}</td>  -->
			<td>${e.distric}</td>
			<td>${e.taluka}</td>
	        <td>${e.village}</td>
			<td>${e.municipal_corporation}</td>
			<td>${e.authorized_Person}</td>
			
			
			
		
												
			<td>
				
				<a href="editdata/${e.id}" class="btn btn-primary"> Edit</a>
				<a href="deletedata/${e.id}" class="btn btn-danger">Delete</a>
				
			</td>
			
			
		</tr>
	
	
	
	</c:forEach>
	</table>
	<br>
	
	<!--
	<p style="margin-left: 130px;">
	<span class="text" >If you wants to Logout ??</span> 
	<a href="adminLogout" class="create-account-link" >Click Here</a>
	</p>
	-->
	
	</body>
	</html>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
	<style>
	body {
	    background-color:  rgba(255, 165, 0, 0.5);
	    background-size: cover; /* Ensures the image covers the entire background */
	    background-position: center; /* Centers the image */
	    background-repeat: no-repeat; /* Prevents the image from repeating */
	}
	
	</style>