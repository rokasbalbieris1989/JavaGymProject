package com.javagym.daos.userProfile;

import java.util.List;

import com.javagym.entities.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
