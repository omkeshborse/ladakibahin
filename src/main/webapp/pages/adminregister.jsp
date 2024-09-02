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

function limitInputLength(input) {
    // Remove non-digit characters
    input.value = input.value.replace(/\D/g, '');

    // If the value is longer than 10 characters, trim it
    if (input.value.length > 10) {
      input.value = input.value.slice(0, 10);
    }
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
				<form id="dynamicForm" action="adminregister" method="post">
					<h1 style="text-align: center">Admin Sign up</h1>
					
					<!-- name -->
					<label for="name" title="full name at have 5 to 300 character">Full Name as per Aadhar <span	class="required-star">*</span></label> 
					<input type="text" id="adminname" name="adminfull_name"	placeholder="Full Name as per Aadhar" />
					
					
					<!-- mobile number -->
					<label for="mobile" title="mobile number must be 10 digits">Mobile No. <span	class="required-star">*</span></label>
					 <input type="number" id="adminmobile" maxlength="10" pattern="[0-9]{10}" name="adminmobileNumber" placeholder="Mobile No." oninput="limitInputLength(this)" required />
					
					<!-- email  -->
					<label for="email" title="enter email id">email id <span class="required-star">*</span></label>
					<input type="text" id="adminemail" name="adminemail" placeholder="email Id" required />
					
					<!-- email  -->
					<label for="text" title="Enter Govt Id">Govt Id <span class="required-star">*</span></label>
					<input type="text" id="admingovtid" name="admingovtid" placeholder="Govt Id" required />
					
					
					<!-- password -->
					<label for="password" title="password must contains 1 Capital ,1 small and 1 specail character">Password <span class="required-star">*</span></label> 
					<input type="password" id="adminpassword" name="adminpassword" placeholder="Password" required />
						
					
					<!-- confirm password -->
					<label for="cpassword" title="password and confirm password must be same">Confirm Password <span	class="required-star">*</span>	</label> 
					<input type="password" id="admincpassword" name="adminconfrim_password" placeholder="Confirm Password" required />

					
					
					 
					

					<div class="g-recaptcha"
						data-sitekey="6Lf9yC0qAAAAAK_Em8szZePFkvbAxk7R1F1FRk1R"></div>

					<div class="button-container">
						<button type="submit" class="login-btn">Sign up</button>
					</div>

					<p>
						<span class="text">Already Have an Account?</span> 
						<a	href="./adminlogin" class="create-account-link">Login</a>
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


