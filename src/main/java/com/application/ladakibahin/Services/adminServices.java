package com.application.ladakibahin.Services;


import com.application.ladakibahin.Models.AdminModel;

public interface adminServices 
{
	
	public AdminModel register(AdminModel adminuser) ;
	
	public AdminModel checkCred(AdminModel adminuser) ;
	

	public void sendForgotPasswordOtp(String email);
	public String updatePassword(String email, String otp, String newPassword);
	


}
