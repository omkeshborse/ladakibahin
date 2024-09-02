
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Forgot Password</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
body {
	background-color: #f8f9fa;
}

.forgot-password-container {
	max-width: 400px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.forgot-password-container h3 {
	text-align: center;
	margin-bottom: 20px;
	font-weight: 600;
}

.forgot-password-container .btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.forgot-password-container .btn-primary:hover {
	background-color: #0056b3;
	border-color: #004085;
}

.forgot-password-container .form-text {
	font-size: 0.9rem;
}

.back-to-login {
	display: block;
	text-align: center;
	margin-top: 20px;
}
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
	<div class="forgot-password-container">
		<h3>Forgot Your Password?</h3>
		<p class="text-muted text-center">Enter your email address below
			and we'll send you a otp to reset your password.</p>
		<form action=/forgotPassword method="post">
			<div class="mb-3">
				<label for="email" class="form-label">Email address</label> <input
					type="text" class="form-control" id="email" name="email"
					aria-describedby="emailHelp" placeholder="Enter your email"
					required />
				<div id="emailHelp" class="form-text text-muted">Make sure to
					enter the email associated with your account.</div>
			</div>
			<button type="submit" class="btn btn-warning w-100">Send OTP
			</button>
		</form>
		<a href="/login" class="back-to-login text-primary">Back to Login</a>
	</div>
	<!-- Custom Popup -->
	<div id="customPopup" class="popup">
		<p id="popupMessage"></p>
		<button class="close-btn" onclick="closePopup()">Close</button>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>