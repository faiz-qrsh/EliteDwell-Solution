package com.services.home.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.services.home.dao.ApplicationDao;
import com.services.home.entities.JobApplication;
import com.services.home.entities.User;

@Transactional
@Repository
public class ApplicationDaoImpl implements ApplicationDao{

private HibernateTemplate template;
	
	public ApplicationDaoImpl() {}

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	@Transactional
	public int insert(JobApplication application) {
		return (Integer)this.template.save(application);
	}

	public List<JobApplication> getAllApplication() {
		return this.template.loadAll(JobApplication.class);
	}

	public JobApplication getApplication(int applicationId) {
		return this.template.get(JobApplication.class, applicationId);
	}

	public void delete(JobApplication application) {
		this.template.delete(application);
	}

	

}
