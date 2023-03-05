package com.kh.product.model.vo;

public class Category {
	
	
	 private int categoryNo;
	 private String categoryDetail;
	 private String categoryName;
	
	 public Category() {
		 
	 }

	public Category(int categoryNo, String categoryDetail, String categoryName) {
		super();
		this.categoryNo = categoryNo;
		this.categoryDetail = categoryDetail;
		this.categoryName = categoryName;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCategoryDetail() {
		return categoryDetail;
	}

	public void setCategoryDetail(String categoryDetail) {
		this.categoryDetail = categoryDetail;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Category [categoryNo=" + categoryNo + ", categoryDetail=" + categoryDetail + ", categoryName="
				+ categoryName + "]";
	}
	 
	 
	
	
	

}
