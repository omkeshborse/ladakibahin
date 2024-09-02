package com.application.ladakibahin.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.application.ladakibahin.Models.AdminModel;
import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.adminRepository;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.adminServices;
import com.application.ladakibahin.Services.userServices;

@Controller
public class AdminController 
{
	@Autowired
	adminServices as;
	
	@Autowired
	userServices us;
	
	@Autowired
	userRepository userRepository;
	
	@Autowired
	adminRepository adminRepository ;

	// Mapping for admin login
	@GetMapping("/adminlogin")
	public String login(){
		return "adminlogin";
	}
	
	// Mapping for transfer user data to admin dash page
	@GetMapping("/dash")
	public String dashmapping(Model m, HttpSession s1){
		
		List<UserModel> l1 = us.displayinfo();
		
		m.addAttribute("kk", l1);
		
		if(s1.getAttribute("temp")==null) {
			
			return "redirect:/adminlogin";
			
		}
		
		return "admindashboard";
	}

	
	// Mapping for adming login page to admin register page
	@GetMapping("/adminreg")
	public String one(){
		return "adminregister";
	}
	
	//admin register with password and cpass match 
	@RequestMapping("/adminregister")
	public String register(@ModelAttribute AdminModel adminuser, Model model) {
		System.out.println(adminuser);
		System.out.println(adminuser.getAdminpassword().equals(adminuser.getAdminconfrim_password()));
		if(adminuser.getAdminpassword().equals(adminuser.getAdminconfrim_password())) {
			
			as.register(adminuser);
					
			return "redirect:/adminlogin";
			
		}
		
		return "adminregister";
		
		
	}
	
	// Admin login credential check
	@PostMapping("/checkCredentialsAdmin")
	public String two(@ModelAttribute AdminModel adminuser, Model model, HttpSession sk){
		
		System.out.println(adminuser + "from user login credentail check");
		AdminModel h=as.checkCred(adminuser);
		
		if(h==null) {
			
			return "redirect:/adminlogin";
			
		}
		
		sk.setAttribute("temp", h.getAdminemail());
		
		return "redirect:/dash";
	}
	
	// for delete data of user admin access 
	@GetMapping("/deletedata/{id}")
	public String four(@PathVariable long id){
		
		us.deledata(id);
		
		return "redirect:/dash";
	}
	
	@GetMapping("/editdata/{id}")
	public String five(@PathVariable long id, Model m){
		
		UserModel um=us.getSingleInfo(id);
		System.err.println(um);
		m.addAttribute("hh", um);
		
		return "editPage";
	
		
	}
	
	
	@PostMapping("/UpdateEditInfo")
	public String update(@ModelAttribute("m1") UserModel updatedUser) {
	    UserModel currentUser = us.getSingleInfo(updatedUser.getId());

	    // Update only the fields that are not null or empty
	    if (updatedUser.getFull_name() != null && !updatedUser.getFull_name().isEmpty()) {
	        currentUser.setFull_name(updatedUser.getFull_name());
	    }
	    if (updatedUser.getMobileNumber() != null && !updatedUser.getMobileNumber().isEmpty()) {
	        currentUser.setMobileNumber(updatedUser.getMobileNumber());
	    }
	    if (updatedUser.getEmail() != null && !updatedUser.getEmail().isEmpty()) {
	        currentUser.setEmail(updatedUser.getEmail());
	    }
	    if (updatedUser.getPassword() != null && !updatedUser.getPassword().isEmpty()) {
	        currentUser.setPassword(updatedUser.getPassword());
	    }
	    if (updatedUser.getDistric() != null && !updatedUser.getDistric().isEmpty()) {
	        currentUser.setDistric(updatedUser.getDistric());
	    }
	    if (updatedUser.getTaluka() != null && !updatedUser.getTaluka().isEmpty()) {
	        currentUser.setTaluka(updatedUser.getTaluka());
	    }
	    if (updatedUser.getVillage() != null && !updatedUser.getVillage().isEmpty()) {
	        currentUser.setVillage(updatedUser.getVillage());
	    }
	    if (updatedUser.getMunicipal_corporation() != null && !updatedUser.getMunicipal_corporation().isEmpty()) {
	        currentUser.setMunicipal_corporation(updatedUser.getMunicipal_corporation());
	    }
	    if (updatedUser.getAuthorized_Person() != null && !updatedUser.getAuthorized_Person().isEmpty()) {
	        currentUser.setAuthorized_Person(updatedUser.getAuthorized_Person());
	    }

	    us.registerUpdate(currentUser);

	    return "redirect:/dash";
	}
	
	@RequestMapping("/adminLogout")
	public String seven(HttpSession s1){
		
		s1.invalidate();
		
		return "redirect:/adminlogin";
	}
	
	
	
	
	@GetMapping("/forgotAdminPassword")
	public String forgotPasswordStatic() {

		return "adminForgotPass";
	}
	
	
	// Mapping to initiate the forgot password process
    @PostMapping("/forgotAdminPassword")
    public String forgotAdminPassword(@ModelAttribute AdminModel adminModel, Model model) {
    	System.out.println(adminModel.getAdminemail());
        AdminModel adminExits = adminRepository.findByAdminemail(adminModel.getAdminemail());
        System.out.println(adminExits);
        System.out.println("printing from admin pannel");
        if (adminExits == null) {
            model.addAttribute("error", "Email is not registered");
            return "redirect:/forgotAdminPassword?message=Email is not registered";
        }
        as.sendForgotPasswordOtp(adminModel.getAdminemail());
        model.addAttribute("email", adminModel.getAdminemail());
        // Redirect to updatePassword with email as a parameter
        return "redirect:/updateAdminPassword?email=" +adminModel.getAdminemail();
  
    }
    
    @GetMapping("/updateAdminPassword")
    public String updateAdminPasswordStatic(@RequestParam("email") String email, Model model) {
    	System.out.println(email);
    	// Add email to the model to use it in the view
        model.addAttribute("email", email);
    	return "updateAdminPassword";
    }
    
	
    @PostMapping("/updateAdminPassword")
    public String updateUpdatePassword(@ModelAttribute AdminModel admin, Model model) {
    	System.out.println(admin);
    	System.out.println("admin form update password");
        System.out.println(admin.getAdminemail());
    	if (!(admin.getAdminpassword().equals(admin.getAdminconfrim_password()))) {
            model.addAttribute("error", "Passwords do not match");
            return "redirect:/updatePassword?message=Passwords and Confirm password do not match" ;
        }
        String result = as.updatePassword(admin.getAdminemail(), admin.getOtp(), admin.getAdminpassword());
        System.err.println("admin result");
        System.out.println(result);
        if ("success".equals(result)) {
            return "redirect:/adminlogin?message=Password updated successfully";
        } else {
            model.addAttribute("error", result);
            return "redirect:/updateAdminPassword?message=" + result + "&email=" + admin.getAdminemail();
        }
    	
    	
    }

	
}
	
