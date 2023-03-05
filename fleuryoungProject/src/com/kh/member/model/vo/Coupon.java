package com.kh.member.model.vo;

import java.sql.Date;

public class Coupon {

	private int couId;
	private String couName;
	private String couDetail;
	private Date couRegDate;
	private Date couExpire;
	private float couDiscount;
	
	public Coupon() {}
	
	public Coupon(int couId, String couName, String couDetail, Date couRegDate, Date couExpire, float couDiscount) {
		super();
		this.couId = couId;
		this.couName = couName;
		this.couDetail = couDetail;
		this.couRegDate = couRegDate;
		this.couExpire = couExpire;
		this.couDiscount = couDiscount;
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

	public Date getCouRegDate() {
		return couRegDate;
	}

	public void setCouRegDate(Date couRegDate) {
		this.couRegDate = couRegDate;
	}

	public Date getCouExpire() {
		return couExpire;
	}

	public void setCouExpire(Date couExpire) {
		this.couExpire = couExpire;
	}

	public float getCouDiscount() {
		return couDiscount;
	}

	public void setCouDiscount(float couDiscount) {
		this.couDiscount = couDiscount;
	}

	@Override
	public String toString() {
		return "Coupon [couId=" + couId + ", couName=" + couName + ", couDetail=" + couDetail + ", couRegDate="
				+ couRegDate + ", couExpire=" + couExpire + ", couDiscount=" + couDiscount + "]";
	}
	
	
	
}
