package com.services.home.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.services.home.dao.impl.ApplicationDaoImpl;
import com.services.home.entities.JobApplication;
import com.services.home.service.ApplicationService;


public class ApplicationServiceImpl implements ApplicationService{

	private ApplicationDaoImpl applicationDao;

	@Autowired
	@Qualifier(value = "applicationDao")
	public void setApplicationDao(ApplicationDaoImpl applicationDao) {
		this.applicationDao = applicationDao;
	}
	
	public void addApplication(JobApplication application) {
		this.applicationDao.insert(application);
	}

}
