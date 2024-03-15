package com.services.home.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.services.home.dao.UserDao;
import com.services.home.entities.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao<User>{
	
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	//Implemented Methods
	
	@Transactional
	public Long insert(User user) {
		return (Long)this.template.save(user);
	}

	public List<User> getAllUsers() {
		return this.template.loadAll(User.class);
	}

	
	public User getUserById(Long userId) {
		return (User)(this.template.getSessionFactory().getCurrentSession()
				.createQuery("FROM User WHERE mobNumber = :userId")
				.setParameter("userId", userId).list().get(0));
	}


}
