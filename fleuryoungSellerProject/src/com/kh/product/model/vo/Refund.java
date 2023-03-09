package com.kh.product.model.vo;

public class Refund {
	private int odId;
	private int refundType;
	private String title;
	private String comment;
	private String img;
	private int ras;
	private int status;
	private String pName;
	
	
	
	
	public Refund(int odId, int refundType, String title, String comment, String img, int ras, int status,
			String pName) {
		super();
		this.odId = odId;
		this.refundType = refundType;
		this.title = title;
		this.comment = comment;
		this.img = img;
		this.ras = ras;
		this.status = status;
		this.pName = pName;
	}
	public Refund() {
		super();
	}
	public Refund(int odId, int refundType, String title, String comment, String img, int ras, int status) {
		this.odId = odId;
		this.refundType = refundType;
		this.title = title;
		this.comment = comment;
		this.img = img;
		this.ras = ras;
		this.status = status;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getOdId() {
		return odId;
	}
	public void setOdId(int odId) {
		this.odId = odId;
	}
	public int getRefundType() {
		return refundType;
	}
	public void setRefundType(int refundType) {
		this.refundType = refundType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setCoomment(String comment) {
		this.comment = comment;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getRas() {
		return ras;
	}
	public void setRas(int ras) {
		this.ras = ras;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Refund [odId=" + odId + ", refundType=" + refundType + ", title=" + title + ", comment=" + comment
				+ ", img=" + img + ", ras=" + ras + ", status=" + status + "]";
	}
	
	
	
	
	
}
