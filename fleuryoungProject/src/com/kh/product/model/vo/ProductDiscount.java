package com.kh.product.model.vo;

public class ProductDiscount {
	private int pId;
	private int discountRate;
	
	public ProductDiscount() {}

	public ProductDiscount(int pId, int discountRate) {
		super();
		this.pId = pId;
		this.discountRate = discountRate;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	@Override
	public String toString() {
		return "ProductDiscount [pId=" + pId + ", discountRate=" + discountRate + "]";
	}
	
	
}
