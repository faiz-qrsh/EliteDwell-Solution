package com.services.home.entities;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class JobApplication {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String phoneNum;
	private String gender;
	private String role;
	private int experience;
	private String jobType;
	private String about;
	private String status;
	@Lob
	private byte[] image;
	
	public JobApplication() {}

	public JobApplication(String name, String phoneNum, String gender, String role, int experience, String jobType,
			String about, byte[] image, String status) {
		super();
		this.name = name;
		this.phoneNum = phoneNum;
		this.gender = gender;
		this.role = role;
		this.experience = experience;
		this.jobType = jobType;
		this.about = about;
		this.image = image;
		this.status=status;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "JobApplication [id=" + id + ", name=" + name + ", phoneNum=" + phoneNum + ", gender=" + gender + ", role="
				+ role + ", experience=" + experience + ", jobType=" + jobType + ", about=" + about + ", image="
				+ Arrays.toString(image) + "]";
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
