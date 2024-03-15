package com.services.home.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class ServiceProvider {

	private String name;
	@Id
	private String phoneNum;
	private String gender;
	private String role;
	private int experience;
	@Lob
	private byte[] image;
	
	public ServiceProvider() {}
	
	public ServiceProvider(String name, String phoneNum, String gender, String role, int experience, byte[] image) {
		super();
		this.name = name;
		this.phoneNum = phoneNum;
		this.gender = gender;
		this.experience = experience;
		this.image = image;
		this.role=role;
	}

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	
	
}
