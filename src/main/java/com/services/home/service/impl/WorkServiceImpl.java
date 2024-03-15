package com.services.home.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.services.home.dao.impl.WorkDaoImpl;
import com.services.home.entities.Booking;
import com.services.home.entities.ServiceProvider;
import com.services.home.entities.Work;
import com.services.home.service.WorkService;

public class WorkServiceImpl implements WorkService{

	private WorkDaoImpl workDao;
	
	@Autowired
	@Qualifier(value = "workDao")
	public void setWorkDao(WorkDaoImpl workDao) {
		this.workDao = workDao;
	}
	
	public int addWork(Booking booking, ServiceProvider serviceProvider) {
		Work work=new Work();
		work.setBooking(booking);
		work.setServiceProvider(serviceProvider);
		return this.workDao.insert(work);
	}
	
	

}
