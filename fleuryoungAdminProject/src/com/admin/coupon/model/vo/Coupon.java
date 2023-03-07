package com.admin.coupon.model.vo;

import java.sql.Date;

public class Coupon {
	
	private int couId;
	private String couName;
	private String couDetail;
	private String couImg;
	private Date couExpDate;
	private String couCon1;
	private String couCon2;
	private String couCon3;
	private Date couAddDate;
	private Date couEditDate;
	private int discount;
	
	public Coupon() {
		super();
	}

	public Coupon(int couId, String couName, String couDetail, String couImg, Date couExpDate, String couCon1,
			String couCon2, String couCon3, Date couAddDate, Date couEditDate, int discount) {
		super();
		this.couId = couId;
		this.couName = couName;
		this.couDetail = couDetail;
		this.couImg = couImg;
		this.couExpDate = couExpDate;
		this.couCon1 = couCon1;
		this.couCon2 = couCon2;
		this.couCon3 = couCon3;
		this.couAddDate = couAddDate;
		this.couEditDate = couEditDate;
		this.discount = discount;
	}

	public int getCouId() {
		return couId;
	}

	public void setCouId(int couId) {
		this.couId = couId;
	}

	public String getCouName() {
		return couName;
	}

	public void setCouName(String couName) {
		this.couName = couName;
	}

	public String getCouDetail() {
		return couDetail;
	}

	public void setCouDetail(String couDetail) {
		this.couDetail = couDetail;
	}

	public String getCouImg() {
		return couImg;
	}

	public void setCouImg(String couImg) {
		this.couImg = couImg;
	}

	public Date getCouExpDate() {
		return couExpDate;
	}

	public void setCouExpDate(Date couExpDate) {
		this.couExpDate = couExpDate;
	}

	public String getCouCon1() {
		return couCon1;
	}

	public void setCouCon1(String couCon1) {
		this.couCon1 = couCon1;
	}

	public String getCouCon2() {
		return couCon2;
	}

	public void setCouCon2(String couCon2) {
		this.couCon2 = couCon2;
	}

	public String getCouCon3() {
		return couCon3;
	}

	public void setCouCon3(String couCon3) {
		this.couCon3 = couCon3;
	}

	public Date getCouAddDate() {
		return couAddDate;
	}

	public void setCouAddDate(Date couAddDate) {
		this.couAddDate = couAddDate;
	}

	public Date getCouEditDate() {
		return couEditDate;
	}

	public void setCouEditDate(Date couEditDate) {
		this.couEditDate = couEditDate;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "Coupon [couId=" + couId + ", couName=" + couName + ", couDetail=" + couDetail + ", couImg=" + couImg
				+ ", couExpDate=" + couExpDate + ", couCon1=" + couCon1 + ", couCon2=" + couCon2 + ", couCon3="
				+ couCon3 + ", couAddDate=" + couAddDate + ", couEditDate=" + couEditDate + ", discount=" + discount
				+ "]";
	}
	
}
