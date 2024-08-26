package com.application.ladakibahin.Controllers;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.userServices;

@Controller
public class UserControllers {

	@Autowired
	userServices userServices;

	@Autowired
	userRepository userRepository;

	@PostMapping("/register")
	public String registerUser(@ModelAttribute UserModel user, Model model) {
		System.out.println("User model information: " + user.toString());
		System.out.println(user.getMobileNumber());
		// Check if user already exists
        if (userRepository.findByEmail(user.getEmail()) != null) {
            model.addAttribute("error", "Email is already registered");
            return "redirect:/register?message=Email is already registered";
        }
        if (userRepository.findByMobileNumber(user.getMobileNumber()) != null) {
            model.addAttribute("error", "Mobile number is already registered");
            return "redirect:/register?message=Mobile number is already registered";
        }


		// Validate email
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
		Pattern emailPattern = Pattern.compile(emailRegex);
		Matcher emailMatcher = emailPattern.matcher(user.getEmail());

		if (!emailMatcher.matches()) {
			model.addAttribute("error", "Invalid email format");
			return "redirect:/register?message=Invalid email format";
		}

		// Validate mobile number
		String mobileNumberRegex = "^[6-9]\\d{9}$";
		Pattern mobilePattern = Pattern.compile(mobileNumberRegex);
		Matcher mobileMatcher = mobilePattern.matcher(user.getMobileNumber());

		if (!mobileMatcher.matches()) {
			model.addAttribute("error", "Invalid mobile number format");
			return "redirect:/register?message=Invalid mobile number format";
		}

		// Validate password
		String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,25}$";
		Pattern passwordPattern = Pattern.compile(passwordRegex);
		Matcher passwordMatcher = passwordPattern.matcher(user.getPassword());

		if (!passwordMatcher.matches()) {
			model.addAttribute("error",
					"Invalid password format. Must be 8-25 characters long, with at least one uppercase letter, one digit, and one special character.");
			return "redirect:/register?message=Invalid password format";
		}

		// Validate confirm password
		if (!user.getPassword().equals(user.getConfrim_password())) {
			model.addAttribute("error", "Password and confirm password do not match");
			return "redirect:/register?message=Password and confirm password do not match";
		}

		// Validate district, taluka, village, and municipal corporation fields
		if (user.getDistric().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your district";
		}

		if (user.getTaluka().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your taluka";
		}

		if (user.getVillage().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your village";
		}

		if (user.getMunicipal_corporation().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your municipal corporation";
		}

		

		// Proceed with registration if all validations pass
		UserModel registeredUser = userServices.register(user);
		model.addAttribute("email", registeredUser.getEmail());
		model.addAttribute("username", registeredUser.getFull_name());
		return "verify";
	}

	@PostMapping("/verify")
	public String verifyUser(@RequestParam String email, @RequestParam String otp, Model model) {
		boolean isVerified = userServices.verifyUser(email, otp);
		System.out.println("Is verified in controllers: " + isVerified);

		if (isVerified) {
			return "success"; // Redirect to the success page if OTP is correct
		} else {
			// If OTP is incorrect, display the error message and keep the user on the
			// verification page
			model.addAttribute("error", "Invalid OTP. Please try again.");
			model.addAttribute("email", email); // Retain the email value for the retry
			return "verify"; // Return to the OTP verification page
		}
	}
	
	@GetMapping("/success")
	public String success() {
		return "success" ;
	}
	

}
