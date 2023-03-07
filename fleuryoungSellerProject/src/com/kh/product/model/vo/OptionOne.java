package com.kh.product.model.vo;

public class OptionOne {
	
	private int optionOneNo;
	private String optionTitle;
	private int productNo;
	
	public OptionOne() {}
	
	public OptionOne(int optionOneNo, String optionTitle, int productNo) {
		super();
		this.optionOneNo = optionOneNo;
		this.optionTitle = optionTitle;
		this.productNo = productNo;
	}
	
	public int getOptionOneNo() {
		return optionOneNo;
	}
	public void setOptionOneNo(int optionOneNo) {
		this.optionOneNo = optionOneNo;
	}
	public String getOptionTitle() {
		return optionTitle;
	}
	public void setOptionTitle(String optionTitle) {
		this.optionTitle = optionTitle;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	
	
}
