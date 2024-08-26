<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style/login.css" />
    <title>Sign in & Sign up Form</title>
	
	<link href="css/login.css" rel="stylesheet">
	
</head>
<body>
    <div class="panels-container">
        <div class="panel left-panel">
            <img src="./assets/ldkb.png" class="image" alt="Background Image" />
        </div>
        <div class="panel right-panel">
            <div class="login">
                <form>
                    <h1 style="text-align: center;">Login</h1>
                    <label for="username">Username</label>
                    <input type="text" id="username" placeholder="Username">
                    
                    <label for="password">Password</label>
                    <input type="password" id="password" placeholder="Password">
                    
                    <div class="button-container">
                        <button type="button" class="login-btn">Refresh</button>
                        <button type="submit" class="login-btn">Login</button>
                    </div>
                    
                    <p>
                        <span class="text">Doesn't have an account?</span>
                        <a href="./register" class="create-account-link">Create Account</a>
                    </p>
                    
                    <p>
                        <span class="text">Forgot Password?</span>
                        <a href="./forgot-password" class="create-account-link">Click here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

