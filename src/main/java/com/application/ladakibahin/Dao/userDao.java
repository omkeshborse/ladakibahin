package com.application.ladakibahin.Dao;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.stereotype.Service;

import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.userServices;

@Service
public class userDao implements userServices {

	@Autowired
	userRepository userRepository;

	@Autowired
	private JavaMailSender mailSender;

	@Override
	public UserModel register(UserModel user) {
		System.out.println("user model");
		String otp = String.format("%06d", new Random().nextInt(999999));
		System.out.println(otp);
		System.out.println(user);

		user.setOtp(otp);
		user.setVerified(false);
		user.setUser_type("user");
		UserModel savedUser = userRepository.save(user);
		System.out.println(savedUser.getEmail());
		sendOtpEmail(savedUser.getEmail(), otp);
		return savedUser;
	}

	private void sendOtpEmail(String to, String otp) {
		System.out.println(to);
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Your OTP for Verification");
		message.setText("Dear User,\n\nYour OTP for registration is: " + otp + "\n\nThank you!");

		mailSender.send(message);
	}

	public boolean verifyUser(String email, String otp) {
		System.out.println("otp verification");
		UserModel user = userRepository.findByEmail(email) ;
		System.out.println(user);
		
		System.out.println("user out put");
		System.out.println(user != null);
		System.out.println("check otp equal or not");
		System.out.println(user.getOtp().equals(otp));
		if (user != null && user.getOtp().equals(otp)) {
			user.setVerified(true);
			userRepository.save(user);
			System.out.println();
			return true;
		}
		return false;
		
	}
	
	
}
