package com.kh.product.model.vo;

public class OptionTwo {
	private int optionTwoNo;
	private String optionContent;
	private int optionPrice;
	private int optionStock;
	private int optionOneNo;
	
	
	public OptionTwo(){}
	
	
	public OptionTwo(int optionTwoNo, String optionContent, int optionPrice, int optionStock, int optionOneNo) {
		super();
		this.optionTwoNo = optionTwoNo;
		this.optionContent = optionContent;
		this.optionPrice = optionPrice;
		this.optionStock = optionStock;
		this.optionOneNo = optionOneNo;
	}
	public OptionTwo(String optionContent, int optionPrice, int optionStock) {
		super();
		this.optionContent = optionContent;
		this.optionPrice = optionPrice;
		this.optionStock = optionStock;
	}


	public int getOptionTwoNo() {
		return optionTwoNo;
	}
	public void setOptionTwoNo(int optionTwoNo) {
		this.optionTwoNo = optionTwoNo;
	}
	public String getOptionContent() {
		return optionContent;
	}
	public void setOptionContent(String optionContent) {
		this.optionContent = optionContent;
	}
	public int getOptionPrice() {
		return optionPrice;
	}
	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}
	public int getOptionStock() {
		return optionStock;
	}
	public void setOptionStock(int optionStock) {
		this.optionStock = optionStock;
	}
	public int getOptionOneNo() {
		return optionOneNo;
	}
	public void setOptionOneNo(int optionOneNo) {
		this.optionOneNo = optionOneNo;
	}
	
	
	
	
}
