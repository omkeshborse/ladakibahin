package com.application.ladakibahin.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StaticPages {
	
	@GetMapping("/")
	public String index(){
		return "index";
	}
	
	@GetMapping("/index_en")
	public String indexEn(){
		return "index_en";
	}
	
	@GetMapping("/scheme_information")
	public String scheme_information(){
		return "scheme_information";
	}
	
	@GetMapping("/scheme_information_en")
	public String scheme_informationEn(){
		return "scheme_information_en";
	}
	
	
	@GetMapping("/required_documents")
	public String required_documents(){
		return "required_documents";
	}
	
	@GetMapping("/required_documents_en")
	public String required_documentsEn(){
		return "required_documents_en";
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
