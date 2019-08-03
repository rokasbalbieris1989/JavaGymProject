package com.javagym.services.userProfile;

import java.util.List;

import com.javagym.entities.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
