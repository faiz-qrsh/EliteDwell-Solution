package com.services.home.dao;

import java.util.List;

import com.services.home.entities.Booking;
import com.services.home.entities.User;

public interface BookingDao {
	
	int insert(Booking booking);
	
	List<Booking> getMyBookings(User user);
	
}
