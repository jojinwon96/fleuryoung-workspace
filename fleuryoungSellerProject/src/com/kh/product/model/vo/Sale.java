package com.kh.product.model.vo;

public class Sale {
	private int sale1 = 0;
	private int sale2 = 10;
	private int sale3 = 20;
	private int sale4 = 30;
	private int sale5 = 40;
	
	
	
	public Sale() {}
	
	public Sale(int sale1, int sale2, int sale3, int sale4, int sale5) {
		super();
		this.sale1 = sale1;
		this.sale2 = sale2;
		this.sale3 = sale3;
		this.sale4 = sale4;
		this.sale5 = sale5;
	}
	public int getSale1() {
		return sale1;
	}
	public void setSale1(int sale1) {
		this.sale1 = sale1;
	}
	public int getSale2() {
		return sale2;
	}
	public void setSale2(int sale2) {
		this.sale2 = sale2;
	}
	public int getSale3() {
		return sale3;
	}
	public void setSale3(int sale3) {
		this.sale3 = sale3;
	}
	public int getSale4() {
		return sale4;
	}
	public void setSale4(int sale4) {
		this.sale4 = sale4;
	}
	public int getSale5() {
		return sale5;
	}
	public void setSale5(int sale5) {
		this.sale5 = sale5;
	}
	
	
}
