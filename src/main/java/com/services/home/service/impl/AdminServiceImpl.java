package com.services.home.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.services.home.dao.impl.ApplicationDaoImpl;
import com.services.home.dao.impl.BookingDaoImpl;
import com.services.home.dao.impl.ServiceProviderDaoImpl;
import com.services.home.dao.impl.UserDaoImpl;
import com.services.home.entities.Booking;
import com.services.home.entities.JobApplication;
import com.services.home.entities.ServiceProvider;
import com.services.home.entities.User;
import com.services.home.service.AdminService;
import java.util.*;

public class AdminServiceImpl implements AdminService{
	
	private UserDaoImpl userDao;
	private BookingDaoImpl bookingDao;
	private ApplicationDaoImpl applicationDao;
	private ServiceProviderDaoImpl serviceProviderDao;

	@Autowired
	@Qualifier(value = "userDao")
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}
	
	@Autowired
	@Qualifier(value = "bookingDao")
	public void setBookingDao(BookingDaoImpl bookingDao) {
		this.bookingDao = bookingDao;
	}
	
	@Autowired
	@Qualifier(value = "applicationDao")
	public void setApplicationDao(ApplicationDaoImpl applicationDao) {
		this.applicationDao = applicationDao;
	}
	
	@Autowired
	@Qualifier(value = "serviceProviderDao")
	public void setServiceProviderDao(ServiceProviderDaoImpl serviceProviderDao) {
		this.serviceProviderDao = serviceProviderDao;
	}
	
	public List<User> getAllUsers() {
		return this.userDao.getAllUsers();
	}
	
	public List<JobApplication> getAllApplication() {
		return this.applicationDao.getAllApplication();
	}

	public List<Booking> getAllBookings() {
		return this.bookingDao.getAllBookings();
	}

	public List<Booking> getPendingBookings() {
		List<Booking> list=this.bookingDao.getAllBookings();
		Iterator<Booking> iterator=list.iterator();
		while(iterator.hasNext())if(!(iterator.next().getStatus().equals("Pending")))iterator.remove();
		return list;
	}

	public void addServiceProvider(int applicationId) {
		JobApplication application=this.applicationDao.getApplication(applicationId);
		ServiceProvider serviceProvider=new ServiceProvider();
		serviceProvider.setExperience(application.getExperience());
		serviceProvider.setGender(application.getGender());
		serviceProvider.setName(application.getName());
		serviceProvider.setPhoneNum(application.getPhoneNum());
		serviceProvider.setRole(application.getRole());
		this.serviceProviderDao.insert(serviceProvider);
		this.applicationDao.delete(application);
	}

	public List<ServiceProvider> getAllServiceProvider() {
		return this.serviceProviderDao.getAllServiceProvider();
	}

}
