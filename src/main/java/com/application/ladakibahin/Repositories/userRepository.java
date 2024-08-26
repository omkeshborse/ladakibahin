package com.application.ladakibahin.Repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import com.application.ladakibahin.Models.UserModel;

public interface userRepository extends JpaRepository<UserModel, Long>{
	UserModel findByEmail(String email);
    UserModel findByMobileNumber(String mobileNumber); // Add this method


}
