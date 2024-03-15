package com.services.home.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.services.home.dao.impl.BookingDaoImpl;
import com.services.home.dao.impl.UserDaoImpl;
import com.services.home.entities.Booking;
import com.services.home.entities.ServiceProvider;
import com.services.home.entities.User;
import com.services.home.service.*; 

public class BookingServiceImpl implements BookingService{
	
	static private int id=1016;
	private BookingDaoImpl bookingDao;
	private UserDaoImpl userDao;
	private MailServiceImpl mailService;

	@Autowired
	@Qualifier(value = "bookingDao")
	public void setBookingDao(BookingDaoImpl bookingDao) {
		this.bookingDao = bookingDao;
	}
	
	@Autowired
	@Qualifier(value = "userDao")
	public void setUserDao(UserDaoImpl userDao) {
		this.userDao = userDao;
	}

	@Autowired
	@Qualifier(value = "mailService")
	public void setMailService(MailServiceImpl mailService) {
		this.mailService = mailService;
	}

	public void bookService(Booking booking, Long userId) {
		
		//Inserting Booking into DB
		booking.setId(id);
		booking.setStatus("Pending");
		User user=this.userDao.getUserById(userId);
		booking.setUser(user);
		this.bookingDao.insert(booking);
		id++;
		user.getBookings().add(booking);
		
		//Sending Confirmation Mail
		String message="Dear Sir/Madam,\r\n"
				+ "\r\n"
				+ "Thank you for choosing EliteDwell Home Solutions for your home service needs! We are delighted to confirm that your booking has been successfully received and is now being processed. Your satisfaction is our top priority, and we look forward to providing you with an exceptional service experience.\r\n"
				+ "\r\n"
				+ "Booking Details:\r\n"
				+ "- Service Type: " +booking.getService()+ "\r\n"
				+ "- Date: "+booking.getDate()+"\r\n"
				+ "- Time: "+booking.getTime()+"\r\n"
				+ "- Service Address: "+booking.getAddress()+", "+booking.getCity()+"\r\n"
				+ "\r\n"
				+ "Our team is currently working on allocating a skilled service provider for your booking. Rest assured, we'll notify you with the details of the assigned service provider once they are available and allocated to your service request.\r\n"
				+ "\r\n"
				+ "If you have any questions or need to make changes to your booking, please feel free to contact our customer support at customercare@elitedwell.com.\r\n"
				+ "\r\n"
				+ "To ensure a smooth and hassle-free service, please make sure that the service area is accessible, and any specific instructions are communicated in advance.\r\n"
				+ "\r\n"
				+ "We appreciate your trust in EliteDwell Home Solutions, and we are committed to exceeding your expectations. If you have any feedback after the service is complete, we would love to hear from you.\r\n"
				+ "\r\n"
				+ "Thank you again for choosing EliteDwell Home Solutions! We look forward to serving you.\r\n"
				+ "\r\n"
				+ "Best Regards,\r\n"
				+ "The EliteDwell Home Solutions Team\r\n";
				
		String subject="Confirmation - Your Home Service Booking is Confirmed!";
		this.mailService.sentTextMail(message, subject,user.getEmail());
	}

	public List<Booking> getMyBookings(User user) {
		return this.bookingDao.getMyBookings(user);
	}

	public Booking getBooking(int bookingId) {
		return this.bookingDao.getBooking(bookingId);
	}

	public void updateStatus(Booking booking) {
		this.bookingDao.updateStatus(booking);
	}
	

}
