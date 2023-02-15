package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int pId;
	private String pName;
	private int pNetPrice;
	private int pDetail;
	private int pStock;
	private Date enrollDate;
	private String returnYN;
	private String pTagYN;
	private String salId;
	private String categorySmall;
	
	private int reivewRating;
	private int reviewCount;
	private String firstImgSrc;
	
	
	public Product() {}

	public Product(int pId, String pName, int pNetPrice, int pDetail, int pStock, Date enrollDate, String returnYN,
			String pTagYN, String salId, String categorySmall) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.pDetail = pDetail;
		this.pStock = pStock;
		this.enrollDate = enrollDate;
		this.returnYN = returnYN;
		this.pTagYN = pTagYN;
		this.salId = salId;
		this.categorySmall = categorySmall;
	}

	
	
	public Product(int pId, String pName, int reivewRating, int reviewCount, int pNetPrice, String firstImgSrc) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.reivewRating = reivewRating;
		this.reviewCount = reviewCount;
		this.pNetPrice = pNetPrice;
		this.firstImgSrc = firstImgSrc;
	}

	public int getReivewRating() {
		return reivewRating;
	}

	public void setReivewRating(int reivewRating) {
		this.reivewRating = reivewRating;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public String getFirstImgSrc() {
		return firstImgSrc;
	}

	public void setFirstImgSrc(String firstImgSrc) {
		this.firstImgSrc = firstImgSrc;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpNetPrice() {
		return pNetPrice;
	}

	public void setpNetPrice(int pNetPrice) {
		this.pNetPrice = pNetPrice;
	}

	public int getpDetail() {
		return pDetail;
	}

	public void setpDetail(int pDetail) {
		this.pDetail = pDetail;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getReturnYN() {
		return returnYN;
	}

	public void setReturnYN(String returnYN) {
		this.returnYN = returnYN;
	}

	public String getpTagYN() {
		return pTagYN;
	}

	public void setpTagYN(String pTagYN) {
		this.pTagYN = pTagYN;
	}

	public String getSalId() {
		return salId;
	}

	public void setSalId(String salId) {
		this.salId = salId;
	}

	public String getCategorySmall() {
		return categorySmall;
	}

	public void setCategorySmall(String categorySmall) {
		this.categorySmall = categorySmall;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pNetPrice=" + pNetPrice + ", pDetail=" + pDetail
				+ ", pStock=" + pStock + ", enrollDate=" + enrollDate + ", returnYN=" + returnYN + ", pTagYN=" + pTagYN
				+ ", salId=" + salId + ", categorySmall=" + categorySmall + "]";
	}
	
	
}
