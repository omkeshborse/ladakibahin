package com.application.ladakibahin.Controllers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.userServices;

@Controller
public class ForgotPasswordControllers {
	@Autowired
	userRepository userRepository ;
	
	@Autowired
	userServices userServices ;
	
	@GetMapping("/forgotPassword")
	public String forgotPasswordStatic() {

		return "forgotPassword";
	}
	
	
	
	// Mapping to initiate the forgot password process
    @PostMapping("/forgotPassword")
    public String forgotPassword(@ModelAttribute UserModel user, Model model) {
    	System.out.println(user.getEmail());
        UserModel userExits = userRepository.findByEmail(user.getEmail());
        System.out.println(userExits);
        
        if (userExits == null) {
            model.addAttribute("error", "Email is not registered");
            return "redirect:/forgotPassword?message=Email is not registered";
        }
        userServices.sendForgotPasswordOtp(user.getEmail());
        model.addAttribute("email", user.getEmail());
        // Redirect to updatePassword with email as a parameter
        return "redirect:/updatePassword?email=" + user.getEmail();
  
    }
    
    @GetMapping("/updatePassword")
    public String updatePasswordStatic(@RequestParam("email") String email, Model model) {
    	System.out.println(email);
    	// Add email to the model to use it in the view
        model.addAttribute("email", email);
    	return "updatePassword";
    }
 
    @PostMapping("/updatePassword")
    public String updatePassword(@ModelAttribute UserModel user, Model model) {
    	System.out.println(user);
    	System.out.println("users form update password");
        System.out.println(user.getEmail());
    	if (!(user.getPassword().equals(user.getConfrim_password()))) {
            model.addAttribute("error", "Passwords do not match");
            return "redirect:/updatePassword?message=Passwords and Confirm password do not match" ;
        }
        String result = userServices.updatePassword(user.getEmail(), user.getOtp(), user.getPassword());
        System.out.println(result);
        if ("success".equals(result)) {
            return "redirect:/login?message=Password updated successfully";
        } else {
            model.addAttribute("error", result);
            return "redirect:/updatePassword?message=" + result + "&email=" + user.getEmail();
        }
    		
    }

	
}
