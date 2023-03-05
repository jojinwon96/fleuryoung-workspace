package com.admin.seller.model.vo;

import java.sql.Date;

public class Seller {

	private int selNo;
	private String selId;
	private String selPw;
	private String selBusinessNo;
	private String selStoreName;
	private String selName;
	private String selEmail;
	private String selPhone;
	private String selTel;
	private String selFax;
	private int selPostal;
	private String selStreet;
	private String selAddress;
	private String selImg;
	private String selStatus;
	private Date selEnrollDate;
	
	public Seller() {}
	
	public Seller(int selNo, String selId, String selPw, String selBusinessNo, String selStoreName, String selName,
			String selEmail, String selPhone, String selTel, String selFax, int selPostal, String selStreet,
			String selAddress, String selImg, String selStatus, Date selEnrollDate) {
		this.selNo = selNo;
		this.selId = selId;
		this.selPw = selPw;
		this.selBusinessNo = selBusinessNo;
		this.selStoreName = selStoreName;
		this.selName = selName;
		this.selEmail = selEmail;
		this.selPhone = selPhone;
		this.selTel = selTel;
		this.selFax = selFax;
		this.selPostal = selPostal;
		this.selStreet = selStreet;
		this.selAddress = selAddress;
		this.selImg = selImg;
		this.selStatus = selStatus;
		this.selEnrollDate = selEnrollDate;
	}

	public int getSelNo() {
		return selNo;
	}

	public void setSelNo(int selNo) {
		this.selNo = selNo;
	}

	public String getSelId() {
		return selId;
	}

	public void setSelId(String selId) {
		this.selId = selId;
	}

	public String getSelPw() {
		return selPw;
	}

	public void setSelPw(String selPw) {
		this.selPw = selPw;
	}

	public String getSelBusinessNo() {
		return selBusinessNo;
	}

	public void setSelBusinessNo(String selBusinessNo) {
		this.selBusinessNo = selBusinessNo;
	}

	public String getSelStoreName() {
		return selStoreName;
	}

	public void setSelStoreName(String selStoreName) {
		this.selStoreName = selStoreName;
	}

	public String getSelName() {
		return selName;
	}

	public void setSelName(String selName) {
		this.selName = selName;
	}

	public String getSelEmail() {
		return selEmail;
	}

	public void setSelEmail(String selEmail) {
		this.selEmail = selEmail;
	}

	public String getSelPhone() {
		return selPhone;
	}

	public void setSelPhone(String selPhone) {
		this.selPhone = selPhone;
	}

	public String getSelTel() {
		return selTel;
	}

	public void setSelTel(String selTel) {
		this.selTel = selTel;
	}

	public String getSelFax() {
		return selFax;
	}

	public void setSelFax(String selFax) {
		this.selFax = selFax;
	}

	public int getSelPostal() {
		return selPostal;
	}

	public void setSelPostal(int selPostal) {
		this.selPostal = selPostal;
	}

	public String getSelStreet() {
		return selStreet;
	}

	public void setSelStreet(String selStreet) {
		this.selStreet = selStreet;
	}

	public String getSelAddress() {
		return selAddress;
	}

	public void setSelAddress(String selAddress) {
		this.selAddress = selAddress;
	}

	public String getSelImg() {
		return selImg;
	}

	public void setSelImg(String selImg) {
		this.selImg = selImg;
	}

	public String getSelStatus() {
		return selStatus;
	}

	public void setSelStatus(String selStatus) {
		this.selStatus = selStatus;
	}

	public Date getSelEnrollDate() {
		return selEnrollDate;
	}

	public void setSelEnrollDate(Date selEnrollDate) {
		this.selEnrollDate = selEnrollDate;
	}

	@Override
	public String toString() {
		return "Seller [selId=" + selId + ", selPw=" + selPw + ", selBusinessNo=" + selBusinessNo + ", selStoreName="
				+ selStoreName + ", selName=" + selName + ", selEmail=" + selEmail + ", selPhone=" + selPhone
				+ ", selTel=" + selTel + ", selFax=" + selFax + ", selPostal=" + selPostal + ", selStreet=" + selStreet
				+ ", selAdress=" + selAddress + ", selImg=" + selImg + ", selStatus=" + selStatus + ", selEnrollDate="
				+ selEnrollDate + "]";
	} 
}