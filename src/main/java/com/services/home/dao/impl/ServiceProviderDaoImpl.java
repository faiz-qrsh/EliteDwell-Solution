package com.services.home.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.services.home.dao.ServiceProviderDao;
import com.services.home.entities.ServiceProvider;

public class ServiceProviderDaoImpl implements ServiceProviderDao{

private HibernateTemplate template;
	
	public ServiceProviderDaoImpl() {}

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	@Transactional
	public void insert(ServiceProvider serviceProvider) {
		this.template.save(serviceProvider);
	}

	public List<ServiceProvider> getAllServiceProvider() {
		return this.template.loadAll(ServiceProvider.class);
	}

	public ServiceProvider getServiceProvider(String phoneNum) {
		return this.template.get(ServiceProvider.class, phoneNum);
	}

}
