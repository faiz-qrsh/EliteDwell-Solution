package com.services.home.dao;

import java.util.List;

public interface UserDao<User> {

	Long insert(User user);

	List<User> getAllUsers();
	
	User getUserById(Long userId);
}
