package com.kh.member.model.vo;

import java.sql.Date;

public class Member {
	
	private String memId;
	private String memPw;
	private String email;
	private String memName;
	private String phone;
	private int postal; // 우편번호
	private String street;
	private String address;
	private Date enrollDate;
	private int mileage;
	private String memImg;
	private String getPhone;
	private String memBirthDate;
	private int gender;
	private String status;
	
	
	
	
	
	public Member() {}
	
	

	public Member(String memId, String memPw, String email, String memName, String phone, int postal, String street,
			String address, Date enrollDate, int mileage, String memImg, String getPhone, String memBirthDate,
			int gender, String status) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.email = email;
		this.memName = memName;
		this.phone = phone;
		this.postal = postal;
		this.street = street;
		this.address = address;
		this.enrollDate = enrollDate;
		this.mileage = mileage;
		this.memImg = memImg;
		this.getPhone = getPhone;
		this.memBirthDate = memBirthDate;
		this.gender = gender;
		this.status = status;
	}



	public Member(String memId, String memPw, String email, String memName, String phone, int postal, String street,
			String address, String memBirthDate, int gender) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.email = email;
		this.memName = memName;
		this.phone = phone;
		this.postal = postal;
		this.street = street;
		this.address = address;
		this.memBirthDate = memBirthDate;
		this.gender = gender;
		
	}
	
	
	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getPostal() {
		return postal;
	}

	public void setPostal(int postal) {
		this.postal = postal;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMemBirthDate() {
		return memBirthDate;
	}

	public void setMemBirthDate(String memBirthDate) {
		this.memBirthDate = memBirthDate;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	

	@Override
	public String toString() {
		return "Member [memId=" + memId + ", memPw=" + memPw + ", email=" + email + ", memName=" + memName + ", phone="
				+ phone + ", postal=" + postal + ", street=" + street + ", address=" + address + ", memBirthDate="
				+ memBirthDate + ", gender=" + gender + "]";
	}

	
	
	
	
	
	
}
