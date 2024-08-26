package com.application.ladakibahin.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StaticPages {
	
	@GetMapping("/")
	public String index(){
		return "index";
	}
	
	@GetMapping("/scheme_information")
	public String scheme_information(){
		return "scheme_information";
	}
	
	@GetMapping("/required_documents")
	public String required_documents(){
		return "required_documents";
	}
	
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	
	@GetMapping("/register")
	public String register(){
		return "register";
	}
	
	
}
