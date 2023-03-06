package com.kh.product.model.vo;

public class Product {

	private String pPicture;
	private int pId; // 상품번호
	private String pName; // 상품이름
	private int netPrice; // 상품가격
	private String detail; // 상품상세정보
	private int stock; // 상품 총수량
	private String pEnrollDate; // 상품등록일
	private String pReturn; // 상품 환불여부
	private String pTag; // 상품 카드여부
	private int pSales; // 판매량
	private String pDayDelivery; // 당일배송여부
	private String pGift; 
	private int sellerNo;








	private String categoryNo; // 카테고리번호
	
	public Product() {}

	

	
	public Product(String pPicture, int pId, String pName, int netPrice, String detail, int stock, String pEnrollDate,
			String pReturn, String pTag, int pSales, String pDayDelivery, String categoryNo) {
		super();
		this.pPicture = pPicture;
		this.pId = pId;
		this.pName = pName;
		this.netPrice = netPrice;
		this.detail = detail;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.pReturn = pReturn;
		this.pTag = pTag;
		this.pSales = pSales;
		this.pDayDelivery = pDayDelivery;
		this.categoryNo = categoryNo;
	}






	public Product(String pPicture, String pName, int netPrice, int stock, String pEnrollDate, int pSales,
			String categoryNo) {
		this.pPicture = pPicture;
		this.pName = pName;
		this.netPrice = netPrice;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.pSales = pSales;
		this.categoryNo = categoryNo;
	}


	public int getSellerNo() {
		return sellerNo;
	}
	
	
	
	
	public void setSellerNo(int sellerNo) {
		this.sellerNo = sellerNo;
	}

	public String getpGift() {
		return pGift;
	}
	
	
	
	
	public void setpGift(String pGift) {
		this.pGift = pGift;
	}

	public String getpPicture() {
		return pPicture;
	}




	public void setpPicture(String pPicture) {
		this.pPicture = pPicture;
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




	public int getNetPrice() {
		return netPrice;
	}




	public void setNetPrice(int netPrice) {
		this.netPrice = netPrice;
	}




	public String getDetail() {
		return detail;
	}




	public void setDetail(String detail) {
		this.detail = detail;
	}




	public int getStock() {
		return stock;
	}




	public void setStock(int stock) {
		this.stock = stock;
	}




	public String getpEnrollDate() {
		return pEnrollDate;
	}




	public void setpEnrollDate(String pEnrollDate) {
		this.pEnrollDate = pEnrollDate;
	}




	public String getpReturn() {
		return pReturn;
	}




	public void setpReturn(String pReturn) {
		this.pReturn = pReturn;
	}




	public String getpTag() {
		return pTag;
	}




	public void setpTag(String pTag) {
		this.pTag = pTag;
	}




	public int getpSales() {
		return pSales;
	}




	public void setpSales(int pSales) {
		this.pSales = pSales;
	}




	public String getpDayDelivery() {
		return pDayDelivery;
	}




	public void setpDayDelivery(String pDayDelivery) {
		this.pDayDelivery = pDayDelivery;
	}




	public String getCategoryNo() {
		return categoryNo;
	}




	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}




	@Override
	public String toString() {
		return "Product [pPicture=" + pPicture + ", pId=" + pId + ", pName=" + pName + ", netPrice=" + netPrice
				+ ", detail=" + detail + ", stock=" + stock + ", pEnrollDate=" + pEnrollDate + ", pReturn=" + pReturn
				+ ", pTag=" + pTag + ", pSales=" + pSales + ", pDayDelivery=" + pDayDelivery + ", categoryNo="
				+ categoryNo + "]";
	}
	
	

	
	
	
	
	
}
