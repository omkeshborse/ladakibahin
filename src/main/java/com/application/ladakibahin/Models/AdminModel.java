package com.application.ladakibahin.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "adminuser")
public class AdminModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(length = 300)
	private String adminfull_name;

	@Column(length = 10)
	private String adminmobileNumber;

	private String adminemail;
		
	@Column(length = 25)
	private String admingovtid;


	@Column(length = 25)
	private String adminpassword;

	@Column(length = 25)
	@Transient
	private String adminconfrim_password;
	
	private String otp;
	
	private String authorized_Person;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAdminfull_name() {
		return adminfull_name;
	}

	public void setAdminfull_name(String adminfull_name) {
		this.adminfull_name = adminfull_name;
	}

	public String getAdminmobileNumber() {
		return adminmobileNumber;
	}

	public void setAdminmobileNumber(String adminmobileNumber) {
		this.adminmobileNumber = adminmobileNumber;
	}

	public String getAdminemail() {
		return adminemail;
	}

	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}

	public String getAdmingovtid() {
		return admingovtid;
	}

	public void setAdmingovtid(String admingovtid) {
		this.admingovtid = admingovtid;
	}

	public String getAdminpassword() {
		return adminpassword;
	}

	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

	public String getAdminconfrim_password() {
		return adminconfrim_password;
	}

	public void setAdminconfrim_password(String adminconfrim_password) {
		this.adminconfrim_password = adminconfrim_password;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public String getAuthorized_Person() {
		return authorized_Person;
	}

	public void setAuthorized_Person(String authorized_Person) {
		this.authorized_Person = authorized_Person;
	}

	@Override
	public String toString() {
		return "AdminModel [id=" + id + ", adminfull_name=" + adminfull_name + ", adminmobileNumber="
				+ adminmobileNumber + ", adminemail=" + adminemail + ", admingovtid=" + admingovtid + ", adminpassword="
				+ adminpassword + ", adminconfrim_password=" + adminconfrim_password + ", otp=" + otp
				+ ", authorized_Person=" + authorized_Person + "]";
	}

	
	
	
	

}
