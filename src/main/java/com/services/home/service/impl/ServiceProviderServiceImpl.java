package com.services.home.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.services.home.dao.impl.ServiceProviderDaoImpl;
import com.services.home.entities.ServiceProvider;
import com.services.home.service.ServiceProviderService;

public class ServiceProviderServiceImpl implements ServiceProviderService{

	private ServiceProviderDaoImpl serviceProviderDao;

	@Autowired
	@Qualifier(value = "serviceProviderDao")
	public void setServiceProviderDao(ServiceProviderDaoImpl serviceProviderDao) {
		this.serviceProviderDao = serviceProviderDao;
	}
	
	public int aunthenticateServiceProvider(String phoneNum) {
		List<ServiceProvider> list=this.serviceProviderDao.getAllServiceProvider();
		for(ServiceProvider serviceProvider: list ) {
			if(serviceProvider.getPhoneNum().equals(phoneNum))return 1;
		}
		return 0;
	}

	public ServiceProvider getServiceProvider(String phoneNum) {
		return this.serviceProviderDao.getServiceProvider(phoneNum);
	}

	
}
