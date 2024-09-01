package com.application.ladakibahin.Services;

import java.util.List;

import com.application.ladakibahin.Models.UserModel;

public interface userServices {
	
	
	public UserModel register(UserModel user) ;
	public String verifyUser(String email, String otp) ;
	public void sendForgotPasswordOtp(String email);
	public String updatePassword(String email, String otp, String newPassword);
	
	

	
	public List<UserModel> displayinfo();
	
	// delete data to user admin access
	public void deledata(long id);
	
	public UserModel getSingleInfo(long id);
	
	public UserModel registerUpdate(UserModel user) ;
	
	
	
	
}
