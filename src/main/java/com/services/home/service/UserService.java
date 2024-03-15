package com.services.home.service;

import com.services.home.entities.User;

public interface UserService {
	
	Long insertUser(User user);
	
	User aunthenticateUser(Long mobNumber, String password);
}
