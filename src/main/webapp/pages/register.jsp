<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js"	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css" />
<title>Sign in & Sign up Form</title>
<link href="./style/register.css" rel="stylesheet" />
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<style>
/* Popup container - can be anything you want */
.popup {
    position: fixed;
    z-index: 9;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    padding: 20px;
    border: 1px solid #ccc;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    display: none; /* Hidden by default */
    width: 300px;
    text-align: center;
}

/* Popup close button */
.popup p{
color: black;
}
.popup .close-btn {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 15px;
   
}

.popup .close-btn:hover {
    background-color: #0056b3;
}
</style>
<script type="text/javascript">
function showPopup(message) {
    if (message) {
        const popup = document.getElementById('customPopup');
        const popupMessage = document.getElementById('popupMessage');
        popupMessage.textContent = message;
        popup.style.display = 'block';
    }
}

function closePopup() {
    document.getElementById('customPopup').style.display = 'none';
}
</script>
</head>
<body onload="showPopup('${param.message}')">
	<div class="panels-container">
		<div class="panel left-panel">
			<img src="./assets/ldkb.png" class="image" alt="Background Image"
				height="400" width="400" />
		</div>
		<div class="panel right-panel">
			<div class="login">
				<form id="dynamicForm" action="register" method="post">
					<h1 style="text-align: center">Sign up</h1>
					
					<!-- name -->
					<label for="name" title="full name at have 5 to 300 character">Full Name as per Aadhar <span	class="required-star">*</span></label> 
					<input type="text" id="name" name="full_name"	placeholder="Full Name as per Aadhar" />
					
					
					<!-- mobile number -->
					<label for="mobile" title="mobile number must be 10 digits">Mobile No. <span	class="required-star">*</span></label>
					 <input type="text" id="mobile"  name="mobileNumber" placeholder="Mobile No." required />
					
					<!-- email  -->
					<label for="email" title="enter email id">email id <span class="required-star">*</span></label>
					<input type="text" id="email" name="email" placeholder="email Id" required />
					
					
					<!-- password -->
					<label for="password" title="password must contains 1 Capital ,1 small and 1 specail character">Password <span class="required-star">*</span></label> 
					<input type="password" id="password" name="password" placeholder="Password" required />
						
					
					<!-- confirm password -->
					<label for="cpassword" title="password and confirm password must be same">Confirm Password <span	class="required-star">*</span>	</label> 
					<input type="password" id="cpassword" name="confrim_password" placeholder="Confirm Password" required />

					
					<!-- distric  -->
					<label for="distric" title="Enter your distric name">Distric <span	class="required-star">*</span>	</label> 
					<input type="text" id="distric" name="distric" placeholder="Enter Distric"	required />
					
					<!-- taluka  -->
					<label for="taluka" title="Enter your taluka name">Taluka <span class="required-star">*</span> </label>
					<input type="text" id="taluka" name="taluka" placeholder="taluka" required />

					
					<!--  Village-->
					<label for="village" title="Enter your village name">Village <span	class="required-star">*</span>	</label> 
					<input type="text" id="village" name="village" placeholder="village" required />
				
				
					
					<!-- Municipal Corporation / Council -->
					<label for="corporation" title="Enter your Municipal Corporation">Municipal	Corporation <span class="required-star">*</span>	</label>
					 <input type="text" id="corporation" name="municipal_corporation"	placeholder="Municipal corporation" required /> 
					 
					 
					 <label	for="authorized-person" title="select kind of person you are.">Authorized Person<span class="required-star">*</span>	</label>
						<select id="authorized-person" name="authorized_Person" required>
						<option value="" selected>Select AuthorizedPerson</option>
						<option value="general_woman" >General Woman</option>
						<option value="cluster_resource_person" >Cluster Resource Person (CRP)</option>
						<option value="anganwadi_worker" >Anganwadi Worker</option>
						<option value="gram_sevak" >Gram Sevak</option>
						<option value="ward_officer" >Ward Officer</option>
						<option value="setu_center" >Setu Center</option>
						<option value="municipal_corporation_kindergarten_worker" >Municipal Corporation Kindergarten Worker</option>
						<option value="asha_worker" >ASHA Worker</option>
						<option value="government_service_center" >Government Service Center</option>
						<option value="city_mission_manager" >City Mission Manager (CMM)</option>
						<option value="help_desk_chief" >Help Desk Chief</option>
						<option value="supervisor" >Supervisor (Chief Worker)</option>
					</select>


					<div class="g-recaptcha"
						data-sitekey="6Lf9yC0qAAAAAK_Em8szZePFkvbAxk7R1F1FRk1R"></div>

					<div class="button-container">
						<button type="submit" class="login-btn">Sign up</button>
					</div>

					<p>
						<span class="text">Already Have an Account?</span> 
						<a	href="./login" class="create-account-link">Login</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<!-- Custom Popup -->
	<div id="customPopup" class="popup">
		<p id="popupMessage"></p>
		<button class="close-btn" onclick="closePopup()">Close</button>
	</div>
</body>
</html>
