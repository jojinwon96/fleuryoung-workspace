package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int pId; // 상품번호
	private String pName; // 상품명
	private String pNetPrice; // 가격
	private int pDetail; // 상세설명
	private int pStock; // 총수량
	private Date enrollDate; // 등록일 
	private String returnYN; // 환불여부
	private String pTagYN; // 카드여부
	private int saleCount; // 판매량
	private String pDayDelivery; // 당일배송여부
	private String pGift; // 선물여부
	private String selNo; // 판매자 번호 
	private String categoryNO; // 카테고리 번호
	
	private int reviewRating; // 별점 1 ~ 5
	
	public Product(int pId, String pName, int reviewRating, int reviewCount,  String pNetPrice,  String mainImg, String pDayDelivery
			) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.pDayDelivery = pDayDelivery;
		this.reviewRating = reviewRating;
		this.mainImg = mainImg;
		this.reviewCount = reviewCount;
	}

	private String mainImg; // 메인 이미지
	private int reviewCount; // 조회수
	
	public Product() {}

	public Product(int pId, String pName, String pNetPrice, int pDetail, int pStock, Date enrollDate, String returnYN,
			String pTagYN, int saleCount, String pDayDelivery, String pGift, String selNo, String categoryNO) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.pDetail = pDetail;
		this.pStock = pStock;
		this.enrollDate = enrollDate;
		this.returnYN = returnYN;
		this.pTagYN = pTagYN;
		this.saleCount = saleCount;
		this.pDayDelivery = pDayDelivery;
		this.pGift = pGift;
		this.selNo = selNo;
		this.categoryNO = categoryNO;
	}

	
	public int getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
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

	public int getSaleCount() {
		return saleCount;
	}

	public void setSaleCount(int saleCount) {
		this.saleCount = saleCount;
	}

	public String getpDayDelivery() {
		return pDayDelivery;
	}

	public void setpDayDelivery(String pDayDelivery) {
		this.pDayDelivery = pDayDelivery;
	}

	public String getpGift() {
		return pGift;
	}

	public void setpGift(String pGift) {
		this.pGift = pGift;
	}

	public String getSelNo() {
		return selNo;
	}

	public void setSelNo(String selNo) {
		this.selNo = selNo;
	}

	public String getCategoryNO() {
		return categoryNO;
	}

	public void setCategoryNO(String categoryNO) {
		this.categoryNO = categoryNO;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pNetPrice=" + pNetPrice + ", pDetail=" + pDetail
				+ ", pStock=" + pStock + ", enrollDate=" + enrollDate + ", returnYN=" + returnYN + ", pTagYN=" + pTagYN
				+ ", saleCount=" + saleCount + ", pDayDelivery=" + pDayDelivery + ", pGift=" + pGift + ", selNo="
				+ selNo + ", categoryNO=" + categoryNO + "]";
	}
	
	
}
