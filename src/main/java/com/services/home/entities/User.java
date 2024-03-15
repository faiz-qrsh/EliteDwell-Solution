package com.services.home.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User {
	
	private String email;
	@Id
	private Long mobNumber;
	private String password;
	@OneToMany(mappedBy="user", fetch = FetchType.EAGER)
	List<Booking> bookings;
	
	public User() {}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getMobNumber() {
		return mobNumber;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", mobNumber=" + mobNumber + ", password=" + password + ", bookings=" + bookings
				+ "]";
	}

	public void setMobNumber(Long mobNumber) {
		this.mobNumber = mobNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Booking> getBookings() {
		return bookings;
	}

	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}
	
	
}
