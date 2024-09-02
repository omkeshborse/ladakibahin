package com.application.ladakibahin.Dao;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.application.ladakibahin.Models.AdminModel;
import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.adminRepository;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.adminServices;

@Service
public class adminDao implements adminServices {

	@Autowired
	adminRepository ar;

	@Autowired
	userRepository ur;

	@Autowired
	private JavaMailSender mailSender;

	@Override
	public AdminModel register(AdminModel adminuser) {

		ar.save(adminuser);

		return null;
	}

	@Override
	public AdminModel checkCred(AdminModel adminuser) {

		AdminModel s = ar.findByAdminemailAndAdminpassword(adminuser.getAdminemail(), adminuser.getAdminpassword());

		return s;
	}

	@Override
	public void sendForgotPasswordOtp(String email) {
		// TODO Auto-generated method stub
		AdminModel admin = ar.findByAdminemail(email);
		System.out.println("Find admin from admin Dao");
		System.out.println(admin);
		
		   if (admin != null) {
	            String otp = String.format("%06d", new Random().nextInt(999999));
	            admin.setOtp(otp);
//	            admin.se(LocalDateTime.now());
	            ar.save(admin) ;
	            sendOtpEmailReSetPassword(admin.getAdminemail(), otp);
	        }
		
	}

	@Override
	public String updatePassword(String email, String otp, String newPassword) {
		// TODO Auto-generated method stub
		System.out.println("Email admin 101" + email);
		AdminModel admin = ar.findByAdminemail(email) ;
		System.out.println(admin);
		if (admin != null) {
			
			
			if (admin.getOtp().equals(otp)) {
				admin.setAdminmobileNumber(newPassword);
				admin.setOtp(null);
				ar.save(admin) ;
				return "success" ;
			}else {
				return "Invalid OTP. Please try again." ;
			}
		}
		  return "Error occurred. Please try again.";
	}

	private void sendOtpEmailReSetPassword(String to, String otp) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Your OTP for Password Reset");
		message.setText("Dear User,\n\nYour OTP for resetting your password is: " + otp + "\n\nThank you!");
		mailSender.send(message);
	}

}
