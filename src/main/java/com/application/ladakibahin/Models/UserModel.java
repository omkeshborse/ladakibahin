package com.application.ladakibahin.Models;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "users")
public class UserModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(length = 300)
	private String full_name;

	@Column(length = 10)
	private String mobileNumber;

	private String email;

	@Column(length = 25)
	private String password;

	@Column(length = 25)
	@Transient
	private String confrim_password;

	@Column(length = 100)
	private String distric;

	@Column(length = 100)
	private String taluka;

	@Column(length = 100)
	private String village;

	private String municipal_corporation;

	private String authorized_Person;

	private String otp;

	private String user_type;
//	status of user
	private boolean isVerified;
	
	@Column(name = "otp_generated_time")
    private LocalDateTime otpGeneratedTime;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfrim_password() {
		return confrim_password;
	}

	public void setConfrim_password(String confrim_password) {
		this.confrim_password = confrim_password;
	}

	public String getDistric() {
		return distric;
	}

	public void setDistric(String distric) {
		this.distric = distric;
	}

	public String getTaluka() {
		return taluka;
	}

	public void setTaluka(String taluka) {
		this.taluka = taluka;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getMunicipal_corporation() {
		return municipal_corporation;
	}

	public void setMunicipal_corporation(String municipal_corporation) {
		this.municipal_corporation = municipal_corporation;
	}

	public String getAuthorized_Person() {
		return authorized_Person;
	}

	public void setAuthorized_Person(String authorized_Person) {
		this.authorized_Person = authorized_Person;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public boolean isVerified() {
		return isVerified;
	}

	public void setVerified(boolean isVerified) {
		this.isVerified = isVerified;
	}

	public LocalDateTime getOtpGeneratedTime() {
		return otpGeneratedTime;
	}

	public void setOtpGeneratedTime(LocalDateTime otpGeneratedTime) {
		this.otpGeneratedTime = otpGeneratedTime;
	}

	@Override
	public String toString() {
		return "UserModel [id=" + id + ", full_name=" + full_name + ", mobileNumber=" + mobileNumber + ", email="
				+ email + ", password=" + password + ", confrim_password=" + confrim_password + ", distric=" + distric
				+ ", taluka=" + taluka + ", village=" + village + ", municipal_corporation=" + municipal_corporation
				+ ", authorized_Person=" + authorized_Person + ", otp=" + otp + ", user_type=" + user_type
				+ ", isVerified=" + isVerified + ", otpGeneratedTime=" + otpGeneratedTime + "]";
	}

	

}
