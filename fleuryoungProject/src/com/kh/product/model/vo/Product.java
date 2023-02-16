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
	private int saleCount; // 판매량
	
	private String storeName;
	
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
	private String img7;
	private String img8;
	private String img9;
	private String img10;
	
	
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
	
	public Product(int pId, String pName, int reivewRating, int reviewCount ,int pNetPrice,  String firstImgSrc,
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

	
	
	public Product(String pName, String storeName, int reviewCount, int reivewRating, int pNetPrice,   String img1, String img2,
			String img3, String img4, String img5, String img6, String img7, String img8, String img9, String img10) {
		super();
		this.storeName = storeName;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.reivewRating = reivewRating;
		this.reviewCount = reviewCount;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.img6 = img6;
		this.img7 = img7;
		this.img8 = img8;
		this.img9 = img9;
		this.img10 = img10;
	}

	
	
	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	public String getImg5() {
		return img5;
	}

	public void setImg5(String img5) {
		this.img5 = img5;
	}

	public String getImg6() {
		return img6;
	}

	public void setImg6(String img6) {
		this.img6 = img6;
	}

	public String getImg7() {
		return img7;
	}

	public void setImg7(String img7) {
		this.img7 = img7;
	}

	public String getImg8() {
		return img8;
	}

	public void setImg8(String img8) {
		this.img8 = img8;
	}

	public String getImg9() {
		return img9;
	}

	public void setImg9(String img9) {
		this.img9 = img9;
	}

	public String getImg10() {
		return img10;
	}

	public void setImg10(String img10) {
		this.img10 = img10;
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
