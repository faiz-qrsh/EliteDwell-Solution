package com.services.home.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Service {
	
	@Id
	private int id;
	private String name;
	private String detail;
	private Double visitCharge;
	
	public Service() {}
	
	public Service(int id, String name, String detail) {
		super();
		this.id = id;
		this.name = name;
		this.detail = detail;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Double getVisitCharge() {
		return visitCharge;
	}

	public void setVisitCharge(Double visitCharge) {
		this.visitCharge = visitCharge;
	}
	
	
	
}
