package com.services.home.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.services.home.dao.impl.UserDaoImpl;
import com.services.home.entities.User;
import com.services.home.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	private UserDaoImpl userDao;

	@Autowired
	@Qualifier(value = "userDao")
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

	//Creating an account
	public Long insertUser(User user) {
		for (User u : this.userDao.getAllUsers()) {
			if (u.getMobNumber().longValue() == user.getMobNumber().longValue())
				return null;
		}
		return this.userDao.insert(user);
	}

	//Login
	public User aunthenticateUser(Long mobNumber, String password) {
		for (User u : this.userDao.getAllUsers()) {
			if (u.getMobNumber().longValue() == mobNumber.longValue()) {
				if (u.getPassword().equals(password))
					return u;
				else
					return null;
			}
		}
		return null;
	}

}
