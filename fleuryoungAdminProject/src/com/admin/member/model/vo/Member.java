package com.admin.member.model.vo;

import java.sql.Date;

public class Member {
	
	private String memId;
	private String memPw;
	private String memEmail;
	private String memName;
	private String memPhone;
	private int memPostal;
	private String memStreet;
	private String memAddress;
	private Date memEnrollDate;
	private int memMileage;
	private String memImg;
	private String memGetPhone;
	private Date memBirthDate;
	private int memGender; // 1.M 2.F
	private String memStatus;
	
	public Member() {}

	public Member(String memId, String memPw, String memEmail, String memName, String memPhone, int memPostal,
			String memStreet, String memAddress, Date memEnrollDate, int memMileage, String memImg, String memGetPhone,
			Date memBirthDate, int memGender, String memStatus) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memEmail = memEmail;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memPostal = memPostal;
		this.memStreet = memStreet;
		this.memAddress = memAddress;
		this.memEnrollDate = memEnrollDate;
		this.memMileage = memMileage;
		this.memImg = memImg;
		this.memGetPhone = memGetPhone;
		this.memBirthDate = memBirthDate;
		this.memGender = memGender;
		this.memStatus = memStatus;
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

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public int getMemPostal() {
		return memPostal;
	}

	public void setMemPostal(int memPostal) {
		this.memPostal = memPostal;
	}

	public String getMemStreet() {
		return memStreet;
	}

	public void setMemStreet(String memStreet) {
		this.memStreet = memStreet;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public Date getMemEnrollDate() {
		return memEnrollDate;
	}

	public void setMemEnrollDate(Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	public int getMemMileage() {
		return memMileage;
	}

	public void setMemMileage(int memMileage) {
		this.memMileage = memMileage;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	public String getMemGetPhone() {
		return memGetPhone;
	}

	public void setMemGetPhone(String memGetPhone) {
		this.memGetPhone = memGetPhone;
	}

	public Date getMemBirthDate() {
		return memBirthDate;
	}

	public void setMemBirthDate(Date memBirthDate) {
		this.memBirthDate = memBirthDate;
	}

	public int getMemGender() {
		return memGender;
	}

	public void setMemGender(int memGender) {
		this.memGender = memGender;
	}

	public String getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(String memStatus) {
		this.memStatus = memStatus;
	}

	@Override
	public String toString() {
		return "Member [memId=" + memId + ", memPw=" + memPw + ", memEmail=" + memEmail + ", memName=" + memName
				+ ", memPhone=" + memPhone + ", memPostal=" + memPostal + ", memStreet=" + memStreet + ", memAddress="
				+ memAddress + ", memEnrollDate=" + memEnrollDate + ", memMileage=" + memMileage + ", memImg=" + memImg
				+ ", memGetPhone=" + memGetPhone + ", memBirthDate=" + memBirthDate + ", memGender=" + memGender
				+ ", memStatus=" + memStatus + "]";
	}
}
