package com.kh.member.model.vo;

import java.sql.Date;

public class Coupon {
	private int couId;		
	private String couName;		
	private String couDetail;		
	private String couImg;		
	private Date couExpire;		
	private String couCondition1;		
	private String couCondition2;		
	private String couCondition3;		
	private Date couRegDate;		
	private Date couEditDate;		
	private int couDiscount;
	
	public Coupon() {}

	public Coupon(int couId, String couName, String couDetail, String couImg, Date couExpire, String couCondition1,
			String couCondition2, String couCondition3, Date couRegDate, Date couEditDate, int couDiscount) {
		super();
		this.couId = couId;
		this.couName = couName;
		this.couDetail = couDetail;
		this.couImg = couImg;
		this.couExpire = couExpire;
		this.couCondition1 = couCondition1;
		this.couCondition2 = couCondition2;
		this.couCondition3 = couCondition3;
		this.couRegDate = couRegDate;
		this.couEditDate = couEditDate;
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

	public String getCouImg() {
		return couImg;
	}

	public void setCouImg(String couImg) {
		this.couImg = couImg;
	}

	public Date getCouExpire() {
		return couExpire;
	}

	public void setCouExpire(Date couExpire) {
		this.couExpire = couExpire;
	}

	public String getCouCondition1() {
		return couCondition1;
	}

	public void setCouCondition1(String couCondition1) {
		this.couCondition1 = couCondition1;
	}

	public String getCouCondition2() {
		return couCondition2;
	}

	public void setCouCondition2(String couCondition2) {
		this.couCondition2 = couCondition2;
	}

	public String getCouCondition3() {
		return couCondition3;
	}

	public void setCouCondition3(String couCondition3) {
		this.couCondition3 = couCondition3;
	}

	public Date getCouRegDate() {
		return couRegDate;
	}

	public void setCouRegDate(Date couRegDate) {
		this.couRegDate = couRegDate;
	}

	public Date getCouEditDate() {
		return couEditDate;
	}

	public void setCouEditDate(Date couEditDate) {
		this.couEditDate = couEditDate;
	}

	public int getCouDiscount() {
		return couDiscount;
	}

	public void setCouDiscount(int couDiscount) {
		this.couDiscount = couDiscount;
	}

	@Override
	public String toString() {
		return "Coupon [couId=" + couId + ", couName=" + couName + ", couDetail=" + couDetail + ", couImg=" + couImg
				+ ", couExpire=" + couExpire + ", couCondition1=" + couCondition1 + ", couCondition2=" + couCondition2
				+ ", couCondition3=" + couCondition3 + ", couRegDate=" + couRegDate + ", couEditDate=" + couEditDate
				+ ", couDiscount=" + couDiscount + "]";
	}
	
	
}
