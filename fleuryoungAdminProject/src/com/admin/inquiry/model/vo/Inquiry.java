package com.admin.inquiry.model.vo;

import java.sql.Date;

public class Inquiry {
	
	private int inqNumber;
	private int inqType;
	private String inqTitle;
	private String inqDetail;
	private Date inqDate;
	private String inqStatus;
	private int selNo;
	private String selId;
	private String selName;
	
	public Inquiry() {
	}

	public Inquiry(int inqNumber, int inqType, String inqTitle, String inqDetail, Date inqDate, String inqStatus,
			int selNo, String selId, String selName) {
		super();
		this.inqNumber = inqNumber;
		this.inqType = inqType;
		this.inqTitle = inqTitle;
		this.inqDetail = inqDetail;
		this.inqDate = inqDate;
		this.inqStatus = inqStatus;
		this.selNo = selNo;
		this.selId = selId;
		this.selName = selName;
	}

	public int getInqNumber() {
		return inqNumber;
	}

	public void setInqNumber(int inqNumber) {
		this.inqNumber = inqNumber;
	}

	public int getInqType() {
		return inqType;
	}

	public void setInqType(int inqType) {
		this.inqType = inqType;
	}

	public String getInqTitle() {
		return inqTitle;
	}

	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}

	public String getInqDetail() {
		return inqDetail;
	}

	public void setInqDetail(String inqDetail) {
		this.inqDetail = inqDetail;
	}

	public Date getInqDate() {
		return inqDate;
	}

	public void setInqDate(Date inqDate) {
		this.inqDate = inqDate;
	}

	public String getInqStatus() {
		return inqStatus;
	}

	public void setInqStatus(String inqStatus) {
		this.inqStatus = inqStatus;
	}

	public int getSelNo() {
		return selNo;
	}

	public void setSelNo(int selNo) {
		this.selNo = selNo;
	}

	public String getSelId() {
		return selId;
	}

	public void setSelId(String selId) {
		this.selId = selId;
	}

	public String getSelName() {
		return selName;
	}

	public void setSelName(String selName) {
		this.selName = selName;
	}

	@Override
	public String toString() {
		return "Inquiry [inqNumber=" + inqNumber + ", inqType=" + inqType + ", inqTitle=" + inqTitle + ", inqDetail="
				+ inqDetail + ", inqDate=" + inqDate + ", inqStatus=" + inqStatus + ", selNo=" + selNo + ", selId="
				+ selId + ", selName=" + selName + "]";
	}
	
}
