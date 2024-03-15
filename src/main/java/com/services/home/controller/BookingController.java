package com.services.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.services.home.dao.impl.BookingDaoImpl;
import com.services.home.entities.Booking;
import com.services.home.entities.User;
import com.services.home.service.impl.AdminServiceImpl;
import com.services.home.service.impl.BookingServiceImpl;

import net.bytebuddy.asm.Advice.This;

@Controller
public class BookingController {

	private BookingServiceImpl bookingService;

	@Autowired
	@Qualifier(value = "bookingService")
	public void setAdminService(BookingServiceImpl bookingService) {
		this.bookingService = bookingService;
	}

	@RequestMapping("/book-service")
	public String bookService() {
		return "book-service";
	}
	
	@RequestMapping("/my-bookings")
	public ModelAndView showMyBookings(HttpSession session) {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("my-bookings");
		User user=(User)session.getAttribute("user1");
		System.out.println(user);
		System.out.println(session.getAttribute("user"));
		mView.addObject("myBookings", this.bookingService.getMyBookings(user));
		return mView;
	}
	
	@RequestMapping("/booking-data")
	public String addBookingToDB(@ModelAttribute("Booking") Booking booking, HttpSession session) {
		if(session.getAttribute("user")==null)return "login-form";
		Long userId=(Long)session.getAttribute("user");
		this.bookingService.bookService(booking,userId);
		return "success";
	}
}
