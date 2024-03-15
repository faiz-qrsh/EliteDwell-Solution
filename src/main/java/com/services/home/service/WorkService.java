package com.services.home.service;

import com.services.home.entities.Booking;
import com.services.home.entities.ServiceProvider;

public interface WorkService {
	
	int addWork(Booking booking, ServiceProvider serviceProvider);

}
