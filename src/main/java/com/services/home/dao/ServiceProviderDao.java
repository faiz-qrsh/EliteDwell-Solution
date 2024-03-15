package com.services.home.dao;

import java.util.List;

import com.services.home.entities.ServiceProvider;

public interface ServiceProviderDao {

	void insert(ServiceProvider serviceProvider);
	
	List<ServiceProvider> getAllServiceProvider();
}
