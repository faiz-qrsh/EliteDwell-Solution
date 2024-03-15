package com.services.home.service;

import java.util.List;

import com.services.home.entities.Booking;
import com.services.home.entities.User;

public interface BookingService {
	
	void bookService(Booking booking, Long userId);
	
	List<Booking> getMyBookings(User user);

}
