package com.services.home.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.services.home.dao.BookingDao;
import com.services.home.entities.Booking;
import com.services.home.entities.ServiceProvider;
import com.services.home.entities.User;

@Repository
@Transactional
public class BookingDaoImpl implements BookingDao{
	
	private HibernateTemplate template;
	
	public BookingDaoImpl() {}

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	@Transactional
	public int insert(Booking booking) {
		return (Integer) this.template.save(booking);
	}

	public List<Booking> getAllBookings() {
		return this.template.loadAll(Booking.class);
	}

	public List<Booking> getMyBookings(User user) {
		return (List<Booking>)(this.template.getSessionFactory().getCurrentSession()
				.createQuery("FROM Booking WHERE user = :user")
				.setParameter("user", user).list());
	}

	public Booking getBooking(int bookingId) {
		return this.template.get(Booking.class, bookingId);
	}

	public void updateStatus(Booking booking) {
		booking.setStatus("Accepted");
		this.template.saveOrUpdate(booking);
	}

}
