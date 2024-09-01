package com.application.ladakibahin.Controllers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.userRepository;

@Controller
public class UserSignInControllers {

	@Autowired
	userRepository userRepository;

	@PostMapping("/checkCredentials")
	public String login(@ModelAttribute UserModel user, Model model) {
		System.out.println(user.toString());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
		Pattern emailPattern = Pattern.compile(emailRegex);
		Matcher emailMatcher = emailPattern.matcher(user.getEmail());

		if (!emailMatcher.matches()) {
			model.addAttribute("error", "Invalid email format");
			return "redirect:/login?message=Invalid email format";
		}

		// Validate password
		String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,25}$";
		Pattern passwordPattern = Pattern.compile(passwordRegex);
		Matcher passwordMatcher = passwordPattern.matcher(user.getPassword());

		if (!passwordMatcher.matches()) {
			model.addAttribute("error",
					"Invalid password format. Must be 8-25 characters long, with at least one uppercase letter, one digit, and one special character.");
			return "redirect:/login?message=Invalid password format";
		}
		// Check if user already exists
		UserModel userExits = userRepository.findByEmail(user.getEmail());

		System.out.println("user exits");
		System.out.println(userExits);
		if (userExits == null) {
			model.addAttribute("error", "Email is not registered Please register first");
			return "redirect:/register?message=Email is not registered Please register first";
		}

		System.out.println("Password comparsion");
		if (!(userExits.getPassword().equals(user.getPassword()))) {
			model.addAttribute("error", "user credentials does not match , please enter valid credentials");
			return "redirect:/login?message=user credentials does not match please enter valid credentials";
		}

		return "dashboard";
	}

	

}
