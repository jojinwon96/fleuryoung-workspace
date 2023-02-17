package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int pId;
	private String pName;
	private String pNetPrice;
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
	private int saleCount; // 판매량
	
	private String storeName;
	
	private String imgs;
	private String img1;
	
	
	public Product() {}

	public Product(int pId, String pName, String pNetPrice, int pDetail, int pStock, Date enrollDate, String returnYN,
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
	
	public Product(int pId, String pName, int reivewRating, int reviewCount, String pNetPrice, String firstImgSrc) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.reivewRating = reivewRating;
		this.reviewCount = reviewCount;
		this.pNetPrice = pNetPrice;
		this.firstImgSrc = firstImgSrc;
	}
	
	public Product(int pId, String pName, int reivewRating, int reviewCount ,String pNetPrice,  String firstImgSrc,
			int saleCount) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.reivewRating = reivewRating;
		this.reviewCount = reviewCount;
		this.firstImgSrc = firstImgSrc;
		this.saleCount = saleCount;
	}

	
	public Product(String pName, String storeName, int reviewCount, int reivewRating, String pNetPrice, String img1, String imgs) {
		super();
		this.storeName = storeName;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.reivewRating = reivewRating;
		this.reviewCount = reviewCount;
		this.img1 = img1;
		this.imgs = imgs;
	}

	
	
	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImgs() {
		return imgs;
	}

	public void setImgs(String imgs) {
		this.imgs = imgs;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public int getSaleCount() {
		return saleCount;
	}

	public void setSaleCount(int saleCount) {
		this.saleCount = saleCount;
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

	public String getpNetPrice() {
		return pNetPrice;
	}

	public void setpNetPrice(String pNetPrice) {
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
