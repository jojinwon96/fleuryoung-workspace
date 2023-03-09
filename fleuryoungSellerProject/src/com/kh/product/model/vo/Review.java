package com.kh.product.model.vo;

public class Review {
	
	
	private int reviewId;
	private int pId;
	private int reviewRating;
	private String reviewDetail;
	private String reviewImg;
	private String reviewReply;
	private String reviewAddDate;
	private int odId;
	private String memId;
	
	
	
	public Review(int reviewId, int pId, int reviewRating, String reviewDetail, String reviewImg, String reviewReply,
			String reviewAddDate, int odId, String memId) {
		super();
		this.reviewId = reviewId;
		this.pId = pId;
		this.reviewRating = reviewRating;
		this.reviewDetail = reviewDetail;
		this.reviewImg = reviewImg;
		this.reviewReply = reviewReply;
		this.reviewAddDate = reviewAddDate;
		this.odId = odId;
		this.memId = memId;
	}









	public String getMemId() {
		return memId;
	}









	public void setMemId(String memId) {
		this.memId = memId;
	}









	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}









	public Review(int reviewId, int pId, int reviewRating, String reviewDetail, String reviewImg, String reviewReply,
			String reviewAddDate, int odId) {
		super();
		this.reviewId = reviewId;
		this.pId = pId;
		this.reviewRating = reviewRating;
		this.reviewDetail = reviewDetail;
		this.reviewImg = reviewImg;
		this.reviewReply = reviewReply;
		this.reviewAddDate = reviewAddDate;
		this.odId = odId;
	}









	public int getReviewId() {
		return reviewId;
	}









	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}









	public int getpId() {
		return pId;
	}









	public void setpId(int pId) {
		this.pId = pId;
	}









	public int getReviewRating() {
		return reviewRating;
	}









	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}









	public String getReviewDetail() {
		return reviewDetail;
	}









	public void setReviewDetail(String reviewDetail) {
		this.reviewDetail = reviewDetail;
	}









	public String getReviewImg() {
		return reviewImg;
	}









	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}









	public String getReviewReply() {
		return reviewReply;
	}









	public void setReviewReply(String reviewReply) {
		this.reviewReply = reviewReply;
	}









	public String getReviewAddDate() {
		return reviewAddDate;
	}









	public void setReviewAddDate(String reviewAddDate) {
		this.reviewAddDate = reviewAddDate;
	}









	public int getOdId() {
		return odId;
	}









	public void setOdId(int odId) {
		this.odId = odId;
	}









	@Override
	public String toString() {
		return "Review [reviewId=" + reviewId + ", pId=" + pId + ", reviewRating=" + reviewRating + ", reviewDetail="
				+ reviewDetail + ", reviewImg=" + reviewImg + ", reviewReply=" + reviewReply + ", reviewAddDate="
				+ reviewAddDate + ", odId=" + odId + "]";
	}
	
	 
}
