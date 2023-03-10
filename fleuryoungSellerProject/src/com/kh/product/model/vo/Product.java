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
	private int optionOne;
	private String categoryNo; // 카테고리번호
	private String pImg1;
	private String pImg2;
	private String pImg3;
	private String pImg4;
	private String pImg5;
	private String pImg6;
	private String pImg7;
	private String pImg8;
	private String pImg9;
	private String pImg10;
	private int discountRate;













	public Product(String pPicture, int pId, String pName, int netPrice, int stock, String pEnrollDate, String pReturn,
			int pSales, String pDayDelivery, String pGift, String categoryNo, int discountRate) {
		super();
		this.pPicture = pPicture;
		this.pId = pId;
		this.pName = pName;
		this.netPrice = netPrice;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.pReturn = pReturn;
		this.pSales = pSales;
		this.pDayDelivery = pDayDelivery;
		this.pGift = pGift;
		this.categoryNo = categoryNo;
		this.discountRate = discountRate;
	}





	public Product(int pId, String pName, int netPrice, String detail, int stock, String pEnrollDate, String pReturn,
			String pTag, int pSales, String pDayDelivery, String pGift, int sellerNo, String categoryNo) {
		super();
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
		this.pGift = pGift;
		this.sellerNo = sellerNo;
		this.categoryNo = categoryNo;
	}




	
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
















	public Product(int pId, String pName, int netPrice, String detail, int stock, String pEnrollDate, String pReturn,
			String pTag, int pSales, String pDayDelivery, String pGift, int sellerNo, int optionOne, String categoryNo,
			String pImg1, String pImg2, String pImg3, String pImg4, String pImg5, String pImg6, String pImg7,
			String pImg8, String pImg9, String pImg10, int discountRate) {
		super();
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
		this.pGift = pGift;
		this.sellerNo = sellerNo;
		this.optionOne = optionOne;
		this.categoryNo = categoryNo;
		this.pImg1 = pImg1;
		this.pImg2 = pImg2;
		this.pImg3 = pImg3;
		this.pImg4 = pImg4;
		this.pImg5 = pImg5;
		this.pImg6 = pImg6;
		this.pImg7 = pImg7;
		this.pImg8 = pImg8;
		this.pImg9 = pImg9;
		this.pImg10 = pImg10;
		this.discountRate = discountRate;
	}





	public Product(int pId, String pPicture, String pName, int netPrice, int stock, String pEnrollDate, int pSales,
			String categoryNo) {
		this.pId = pId;
		this.pPicture = pPicture;
		this.pName = pName;
		this.netPrice = netPrice;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.pSales = pSales;
		this.categoryNo = categoryNo;
	}
	
	
	
	


	public int getDiscountRate() {
		return discountRate;
	}





	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}



	
	public int getOptionOne() {
		return optionOne;
	}
	
	
	
	
	public void setOptionOne(int optionOne) {
		this.optionOne = optionOne;
	}
	
	
	
	
	public String getpImg1() {
		return pImg1;
	}
	
	
	
	
	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	
	
	
	
	public String getpImg2() {
		return pImg2;
	}
	
	
	
	
	public void setpImg2(String pImg2) {
		this.pImg2 = pImg2;
	}
	
	
	
	
	public String getpImg3() {
		return pImg3;
	}
	
	
	
	
	public void setpImg3(String pImg3) {
		this.pImg3 = pImg3;
	}
	
	
	
	
	public String getpImg4() {
		return pImg4;
	}
	
	
	
	
	public void setpImg4(String pImg4) {
		this.pImg4 = pImg4;
	}
	
	
	
	
	public String getpImg5() {
		return pImg5;
	}
	
	
	
	
	public void setpImg5(String pImg5) {
		this.pImg5 = pImg5;
	}
	
	
	
	
	public String getpImg6() {
		return pImg6;
	}
	
	
	
	
	public void setpImg6(String pImg6) {
		this.pImg6 = pImg6;
	}
	
	
	
	
	public String getpImg7() {
		return pImg7;
	}
	
	
	
	
	public void setpImg7(String pImg7) {
		this.pImg7 = pImg7;
	}
	
	
	
	
	public String getpImg8() {
		return pImg8;
	}
	
	
	
	
	public void setpImg8(String pImg8) {
		this.pImg8 = pImg8;
	}
	
	
	
	
	public String getpImg9() {
		return pImg9;
	}
	
	
	
	
	public void setpImg9(String pImg9) {
		this.pImg9 = pImg9;
	}
	
	
	
	
	public String getpImg10() {
		return pImg10;
	}
	
	
	
	
	public void setpImg10(String pImg10) {
		this.pImg10 = pImg10;
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
