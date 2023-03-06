package com.admin.qna.model.vo;

import java.sql.Date;

public class QnA {
	
	private int qnaNumber;
	private String qnaType;
	private String qnaTitle;
	private String qnaDetail;
	private Date qnaAddDate;
	private Date qnaEditDate;
	
	public QnA() {
	}

	public QnA(int qnaNumber, String qnaType, String qnaTitle, String qnaDetail, Date qnaAddDate, Date qnaEditDate) {
		super();
		this.qnaNumber = qnaNumber;
		this.qnaType = qnaType;
		this.qnaTitle = qnaTitle;
		this.qnaDetail = qnaDetail;
		this.qnaAddDate = qnaAddDate;
		this.qnaEditDate = qnaEditDate;
	}

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	public String getQnaType() {
		return qnaType;
	}

	public void setQnaType(String qnaType) {
		this.qnaType = qnaType;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaDetail() {
		return qnaDetail;
	}

	public void setQnaDetail(String qnaDetail) {
		this.qnaDetail = qnaDetail;
	}

	public Date getQnaAddDate() {
		return qnaAddDate;
	}

	public void setQnaAddDate(Date qnaAddDate) {
		this.qnaAddDate = qnaAddDate;
	}

	public Date getQnaEditDate() {
		return qnaEditDate;
	}

	public void setQnaEditDate(Date qnaEditDate) {
		this.qnaEditDate = qnaEditDate;
	}

	@Override
	public String toString() {
		return "QnA [qnaNumber=" + qnaNumber + ", qnaType=" + qnaType + ", qnaTitle=" + qnaTitle + ", qnaDetail="
				+ qnaDetail + ", qnaAddDate=" + qnaAddDate + ", qnaEditDate=" + qnaEditDate + "]";
	} 
}
