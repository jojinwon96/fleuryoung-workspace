package com.admin.product.model.vo;

import java.sql.Date;

public class Review {
	private int pId;
	private int reviewId;
	private int reviewRating;
	private String content;
	private String memId;
	private Date date;
	private String reviewImg;
	
	public Review () {}

	public Review(int pId, int reviewId, int reviewRating, String content, String memId, Date date, String reviewImg) {
		super();
		this.pId = pId;
		this.reviewId = reviewId;
		this.reviewRating = reviewRating;
		this.content = content;
		this.memId = memId;
		this.date = date;
		this.reviewImg = reviewImg;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public int getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	@Override
	public String toString() {
		return "Review [pId=" + pId + ", reviewId=" + reviewId + ", reviewRating=" + reviewRating + ", content="
				+ content + ", memId=" + memId + ", date=" + date + "]";
	}
	
	
}
