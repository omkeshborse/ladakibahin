package com.application.ladakibahin.Dao;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
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
		user.setOtpGeneratedTime(LocalDateTime.now());
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

	public String verifyUser(String email, String otp) {
		UserModel user = userRepository.findByEmail(email);
		if (user != null) {
			LocalDateTime otpGeneratedTime = user.getOtpGeneratedTime();
			LocalDateTime now = LocalDateTime.now();

			// Check if OTP is expired
			if (Duration.between(otpGeneratedTime, now).toMinutes() > 5) {
				return "expired";
			}

			// Check if OTP matches
			if (user.getOtp().equals(otp)) {
				user.setVerified(true);
				userRepository.save(user);
				return "success";
			} else {
				return "incorrect";
			}
		}
		return "error"; // General error case
	}
	
	
	 @Override
	    public void sendForgotPasswordOtp(String email) {
	        UserModel user = userRepository.findByEmail(email);
	        if (user != null) {
	            String otp = String.format("%06d", new Random().nextInt(999999));
	            user.setOtp(otp);
	            user.setOtpGeneratedTime(LocalDateTime.now());
	            userRepository.save(user);
	            sendOtpEmailReSetPassword(user.getEmail(), otp);
	        }
	    }
	 
	    // Method to update the password
	    @Override
	    public String updatePassword(String email, String otp, String password) {
	        UserModel user = userRepository.findByEmail(email);
	        System.out.println("USer update password" + user );
	        System.err.println(email);
	        System.out.println(otp);
	        if (user != null) {
	            LocalDateTime otpGeneratedTime = user.getOtpGeneratedTime();
	            LocalDateTime now = LocalDateTime.now();

	            // Check if OTP is expired
	            if (Duration.between(otpGeneratedTime, now).toMinutes() > 5) {
	                return "OTP has expired. Please request a new OTP.";
	            }

	            // Check if OTP matches
	            if (user.getOtp().equals(otp)) {
	                user.setPassword(password);  // Assuming the password is stored in plain text (consider encrypting)
	                user.setOtp(null);  // Clear OTP after successful password reset
	                userRepository.save(user);
	                return "success";
	            } else {
	                return "Invalid OTP. Please try again.";
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

		@Override
		public List<UserModel> displayinfo() {
			// TODO Auto-generated method stub
			return userRepository.findAll();
		}

		@Override
		public void deledata(long id) {
			// TODO Auto-generated method stub
			userRepository.deleteById(id);
		}

		@Override
		public UserModel getSingleInfo(long id) {
			// TODO Auto-generated method stub
			return userRepository.getById(id);
		}

		@Override
		public UserModel registerUpdate(UserModel user) {
			UserModel updatedata = userRepository.save(user);
			
			return updatedata;
		}
}
