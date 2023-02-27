package com.kh.product.model.vo;

public class Cart {
	
	private String memId;
	private int selNo;
	private int pId;
	private int opt1stNo;
	private int opt2ndNo;
	private int optCount;
	private int noneOptCount;
	
	public Cart() {}

	public Cart(String memId, int selNo, int pId, int opt1stNo, int opt2ndNo, int optCount, int noneOptCount) {
		super();
		this.memId = memId;
		this.selNo = selNo;
		this.pId = pId;
		this.opt1stNo = opt1stNo;
		this.opt2ndNo = opt2ndNo;
		this.optCount = optCount;
		this.noneOptCount = noneOptCount;
	}

	
	public Cart(int opt2ndNo, int optCount, int pId) { // 옵션 있는 생성자
		super();
		this.pId = pId;
		this.opt2ndNo = opt2ndNo;
		this.optCount = optCount;
	}

	
	
	public Cart(int noneOptCount, int pId) { // 옵션 없는 생성자
		super();
		this.pId = pId;
		this.noneOptCount = noneOptCount;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getSelNo() {
		return selNo;
	}

	public void setSelNo(int selNo) {
		this.selNo = selNo;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getOpt1stNo() {
		return opt1stNo;
	}

	public void setOpt1stNo(int opt1stNo) {
		this.opt1stNo = opt1stNo;
	}

	public int getOpt2ndNo() {
		return opt2ndNo;
	}

	public void setOpt2ndNo(int opt2ndNo) {
		this.opt2ndNo = opt2ndNo;
	}

	public int getOptCount() {
		return optCount;
	}

	public void setOptCount(int optCount) {
		this.optCount = optCount;
	}

	public int getNoneOptCount() {
		return noneOptCount;
	}

	public void setNoneOptCount(int noneOptCount) {
		this.noneOptCount = noneOptCount;
	}

	@Override
	public String toString() {
		return "Cart [memId=" + memId + ", selNo=" + selNo + ", pId=" + pId + ", opt1stNo=" + opt1stNo + ", opt2ndNo="
				+ opt2ndNo + ", optCount=" + optCount + ", noneOptCount=" + noneOptCount + "]";
	};
	
	
}
