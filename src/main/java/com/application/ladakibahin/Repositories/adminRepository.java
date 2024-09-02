package com.application.ladakibahin.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.application.ladakibahin.Models.AdminModel;


public interface adminRepository extends JpaRepository <AdminModel, Long>
{

	public AdminModel findByAdminemail(String k) ;
	
	public AdminModel findByAdminemailAndAdminpassword(String x, String y) ;
	
}
