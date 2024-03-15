package com.services.home.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Booking {
	
	@Id
	private int id;
	private String address;
	private String city;
	private String pin;
	private String service;
	private String date;
	private String time;
	private String status;
	@ManyToOne
	private User user;
	
	public Booking() {}
	
	public Booking(int id, String address, String city, String pin, String service, String date, String time,
			String status, User user) {
		super();
		this.id = id;
		this.address = address;
		this.city = city;
		this.pin = pin;
		this.service = service;
		this.date = date;
		this.time = time;
		this.status = status;
		this.user = user;
	}

	public Booking(String address, String city, String pin, String service, String date, String time) {
		super();
		this.address = address;
		this.city = city;
		this.pin = pin;
		this.service = service;
		this.date = date;
		this.time = time;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", address=" + address + ", city=" + city + ", pin=" + pin + ", service=" + service
				+ ", date=" + date + ", time=" + time + ", status=" + status + "]";
	}
	
	
}
