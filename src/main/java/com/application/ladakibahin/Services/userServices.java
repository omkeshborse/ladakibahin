package com.application.ladakibahin.Services;

import com.application.ladakibahin.Models.UserModel;

public interface userServices {
	
	
	public UserModel register(UserModel user) ;
	public boolean verifyUser(String email, String otp) ;
}
