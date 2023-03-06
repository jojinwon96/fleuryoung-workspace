package com.kh.product.model.vo;

public class Discount {
	private int pNo;
	private int rate;
	
	
	public Discount() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Discount(int pNo, int rate) {
		super();
		this.pNo = pNo;
		this.rate = rate;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "Discount [pNo=" + pNo + ", rate=" + rate + "]";
	}
	
}
