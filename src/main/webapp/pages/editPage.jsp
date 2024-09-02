<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<title>Sign in & Sign up Form</title>
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
.popup p {
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

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

.panels-container {
    position: absolute;
    height: 100%;
    width: 100%;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    transition: 1s ease-in-out;
}

.panel {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: left;
}

.left-panel {
    background: white;
    padding: 2rem;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
}

.left-panel img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
}

.right-panel {
    background:white;
    color: #fff;
    padding: 2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

body {
    margin: 0;
    display: flex;
    align-items: center;
    justify-content: left;
    height: 100vh;
    background-color: #111;
    color: #fff;
}

.login-card {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
}

form {
    display: flex;
    flex-direction: column;
}

form h1 {
    color: black; /* Ensures the heading text is visible */
    font-size: 2rem; /* Adjust font size as needed */
    margin-bottom: 1rem; /* Adds space below the heading */
}

label {
    margin: 10px 0 5px;
    font-weight: 500;
    color: black; /* Or any other color for the label text */
}

input {
    margin: 5px 0 10px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: white;
    color: #000;
}

.button-container {
    display: flex;
    justify-content: space-between;
}

button {
    padding: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.login-btn {
    background-color: green;
    color: #fff;
    margin-right: 10px;
}

.login-btn:hover {
    background-color: #0056b3;
}

.forgot-password {
    color: #007bff;
    text-decoration: none;
    font-size: 0.875rem;
    margin-top: 10px;
    display: inline-block;
    transition: color 0.3s;
}

.forgot-password:hover {
    color: #0056b3;
    text-decoration: underline;
}

@media ( max-width : 870px) {
    .panels-container {
        grid-template-columns: 1fr;
        grid-template-rows: 1fr 2fr;
    }
    .panel {
        flex-direction: row;
        justify-content: space-around;
    }
}

@media ( max-width : 600px) {
    .button-container {
        flex-direction: column;
    }
    .login-btn {
        margin: 10px 0;
    }
}

.create-account-link {
    color: blue;
    text-decoration: underline;
    margin-right: 5px; /* Adjust spacing between link and text as needed */
}

.text {
    color: black; /* Or any other color for the non-link text */
}

p {
    margin: 10px 0; /* Adjusts the space around the paragraphs */
    font-size: 16px; /* Sets the font size for readability */
}

/* Style for text input fields */
.login input[type="text"], .login input[type="password"] {
    width: 100%; /* Make the input fields full width */
    padding: 10px; /* Add padding inside the text boxes */
    margin-bottom: 15px; /* Add space below each input field */
    border: 1px solid #ccc; /* Border color and style */
    border-radius: 5px; /* Rounded corners */
    box-sizing: border-box;
    /* Include padding and border in the element's total width and height */
    font-size: 16px; /* Font size */
}

/* Style for select dropdown fields */
.login select {
    width: 100%; /* Make the dropdowns full width */
    padding: 10px; /* Add padding inside the dropdown */
    margin-bottom: 15px; /* Add space below each dropdown */
    border-radius: 5px; /* Rounded corners */
    box-sizing: border-box;
    border: 1px solid #ccc ; /* Include padding and border in the element's total width and height */
    font-size: 16px; /* Font size */
}

/* Optional: Style for checkbox */
.login input[type="checkbox"] {
    margin-right: 10px; /* Space between the checkbox and label text */
}

.required-star {
    color: red;
}

.error {
    color: red;
    display: none;
}

.error.show {
    display: block;
}

.g-recaptcha {
    margin-top: 1rem;
    margin-bottom: 2rem;
}
</style>
</head>
<body onload="showPopup('${param.message}')">
    <div class="panels-container">
        <div class="panel left-panel">
            <img src="/assets/ldkb.png" alt="Decorative Image" />
        </div>
        <div class="panel right-panel">
            <div class="login">
                <form id="dynamicForm" action="/UpdateEditInfo" method="post">
                    <h1 style="text-align: center">Edit Page</h1>
                    
                    <input type="hidden" id="id" name="id" value="${hh.id}" placeholder="Id" />

                    <!-- name -->
                    <label for="name" title="full name at have 5 to 300 character">Full Name as per Aadhar <span class="required-star">*</span></label> 
                    <input type="text" id="name" name="full_name" value="${hh.full_name}" placeholder="Full Name as per Aadhar" />
                    
                    <!-- mobile number -->
                    <label for="mobile" title="mobile number must be 10 digits">Mobile No. <span class="required-star">*</span></label>
                    <input type="text" id="mobile" name="mobileNumber" value="${hh.mobileNumber}" placeholder="Mobile No." required />
                    
                    <!-- email -->
                    <label for="email" title="enter email id">email id <span class="required-star">*</span></label>
                    <input type="text" id="email" name="email" value="${hh.email}" placeholder="email Id" required />
                    
                    <!-- password -->
                    <!-- Uncomment if needed -->
                    <!--
                    <label for="password" title="password must contains 1 Capital ,1 small and 1 special character">Password <span class="required-star">*</span></label> 
                    <input type="text" id="password" name="password" value="${hh.password}" placeholder="Password" required />
                    -->
                    
                    <!-- district -->
                    <label for="distric" title="Enter your district name">District <span class="required-star">*</span></label> 
                    <input type="text" id="distric" name="distric" value="${hh.distric}" placeholder="Enter District" required />
                    
                    <!-- taluka -->
                    <label for="taluka" title="Enter your taluka name">Taluka <span class="required-star">*</span></label>
                    <input type="text" id="taluka" name="taluka" value="${hh.taluka}" placeholder="taluka" required />

                    <!-- Village -->
                    <label for="village" title="Enter your village name">Village <span class="required-star">*</span></label> 
                    <input type="text" id="village" name="village" value="${hh.village}" placeholder="village" required />
                    
                    <!-- Municipal Corporation / Council -->
                    <label for="corporation" title="Enter your Municipal Corporation">Municipal Corporation <span class="required-star">*</span></label>
                    <input type="text" id="corporation" name="municipal_corporation" value="${hh.municipal_corporation}" placeholder="Municipal corporation" required /> 
                    
                    <!-- Authorized Person -->
                    <label for="authorized-person" title="select kind of person you are.">Authorized Person<span class="required-star">*</span></label>
                    <select id="authorized-person" name="authorized_Person" required>
                        <option value="" ${hh.authorized_Person == "" ? "selected" : ""}>Select Authorized Person</option>
                        <option value="general_woman" ${hh.authorized_Person == "general_woman" ? "selected" : ""}>General Woman</option>
                        <option value="cluster_resource_person" ${hh.authorized_Person == "cluster_resource_person" ? "selected" : ""}>Cluster Resource Person (CRP)</option>
                        <option value="anganwadi_worker" ${hh.authorized_Person == "anganwadi_worker" ? "selected" : ""}>Anganwadi Worker</option>
                        <option value="gram_sevak" ${hh.authorized_Person == "gram_sevak" ? "selected" : ""}>Gram Sevak</option>
                        <option value="ward_officer" ${hh.authorized_Person == "ward_officer" ? "selected" : ""}>Ward Officer</option>
                        <option value="setu_center" ${hh.authorized_Person == "setu_center" ? "selected" : ""}>Setu Center</option>
                        <option value="municipal_corporation_kindergarten_worker" ${hh.authorized_Person == "municipal_corporation_kindergarten_worker" ? "selected" : ""}>Municipal Corporation Kindergarten Worker</option>
                        <option value="asha_worker" ${hh.authorized_Person == "asha_worker" ? "selected" : ""}>ASHA Worker</option>
                        <option value="government_service_center" ${hh.authorized_Person == "government_service_center" ? "selected" : ""}>Government Service Center</option>
                        <option value="city_mission_manager" ${hh.authorized_Person == "city_mission_manager" ? "selected" : ""}>City Mission Manager (CMM)</option>
                        <option value="help_desk_chief" ${hh.authorized_Person == "help_desk_chief" ? "selected" : ""}>Help Desk Chief</option>
                        <option value="supervisor" ${hh.authorized_Person == "supervisor" ? "selected" : ""}>Supervisor (Chief Worker)</option>
                    </select>

                    <div class="g-recaptcha" data-sitekey="6Lf9yC0qAAAAAK_Em8szZePFkvbAxk7R1F1FRk1R"></div>

                    <div class="button-container">
                        <button type="submit" class="login-btn">Update</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
    <!-- Custom Popup -->
    <div id="customPopup" class="popup">
        <p id="popupMessage"></p>
        <button class="close-btn" onclick="closePopup()">Close</button>
    </div>

    <script>
        function showPopup(message) {
            if (message) {
                document.getElementById('popupMessage').innerText = message;
                document.getElementById('customPopup').style.display = 'block';
            }
        }

        function closePopup() {
            document.getElementById('customPopup').style.display = 'none';
        }
    </script>
</body>
</html>