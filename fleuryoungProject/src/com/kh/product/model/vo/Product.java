package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int pId; // �긽�뭹踰덊샇
	private String pName; // �긽�뭹紐�
	private String pNetPrice; // 媛�寃�
	private int pDetail; // �긽�꽭�꽕紐�
	private int pStock; // 珥앹닔�웾
	private Date enrollDate; // �벑濡앹씪 
	private String returnYN; // �솚遺덉뿬遺�
	private String pTagYN; // 移대뱶�뿬遺�
	private int saleCount; // �뙋留ㅻ웾
	private String pDayDelivery; // �떦�씪諛곗넚�뿬遺�
	private String pGift; // �꽑臾쇱뿬遺�
	private int selNo; // �뙋留ㅼ옄 踰덊샇 
	private String categoryNO; // 移댄뀒怨좊━ 踰덊샇
	private int reviewRating; // 蹂꾩젏 1 ~ 5
	private String mainImg; // 硫붿씤 �씠誘몄�
	private int reviewCount; // 議고쉶�닔
	private String images;
	private String storeName;
	
	private int discountRate; // �븷�씤�쑉
	private int total; // �젙媛� - (�젙媛�*�븷�씤�쑉)
	private int ordId; // 二쇰Ц踰덊샇
	private String memOrderDetail; // 由щ럭�궡�슜 
	private String optTitle;

	public Product() {}


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

	public Product(int pId, String pName, String pNetPrice, int pDetail, int pStock, Date enrollDate, String returnYN,
			String pTagYN, int saleCount, String pDayDelivery, String pGift, int selNo, String categoryNO) {
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

	
	
	public Product(int pId, int selNo, String storeName, String pName, int pStock, int reviewRating, int reviewCount, String pNetPrice, String pDayDelivery,
			  String images) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.pStock = pStock;
		this.pDayDelivery = pDayDelivery;
		this.selNo = selNo;
		this.reviewRating = reviewRating;
		this.reviewCount = reviewCount;
		this.images = images;
		this.storeName = storeName;
	}
	
	
	public Product(String pName, String pNetPrice, String mainImg, int discountRate, int total) {
		super();
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.mainImg = mainImg;
		this.discountRate = discountRate;
		this.total = total;
	}
	
	public Product(String pName, String pNetPrice, String mainImg, int discountRate, int total, int pId) {
		super();
		this.pName = pName;
		this.pNetPrice = pNetPrice;
		this.mainImg = mainImg;
		this.discountRate = discountRate;
		this.total = total;
		this.pId= pId;
	}

	public Product(String pName, String mainImg, int total, int ordId, String optTitle) {
		super();
		this.pName = pName;
		this.mainImg = mainImg;
		this.total = total;
		this.ordId = ordId;
		this.optTitle = optTitle;
	}

	

	public Product(String pName, int ordId, String memOrderDetail) {
		super();
		this.pName = pName;
		this.ordId = ordId;
		this.memOrderDetail = memOrderDetail;
	}


	public Product(int pId) {
		super();
		this.pId = pId;
	}


	public Product(String memOrderDetail) {
		super();
		this.memOrderDetail = memOrderDetail;
	}


	public String getOptTitle() {
		return optTitle;
	}


	public void setOptTitle(String optTitle) {
		this.optTitle = optTitle;
	}


	public int getDiscountRate() {
		return discountRate;
	}


	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getOrdId() {
		return ordId;
	}


	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}


	public String getMemOrderDetail() {
		return memOrderDetail;
	}


	public void setMemOrderDetail(String memOrderDetail) {
		this.memOrderDetail = memOrderDetail;
	}


	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	
	public String getImages() {
		return images;
	}


	public void setImages(String images) {
		this.images = images;
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

	public int getSelNo() {
		return selNo;
	}

	public void setSelNo(int selNo) {
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
