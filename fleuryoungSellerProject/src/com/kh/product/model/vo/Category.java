package com.kh.product.model.vo;

public class Category {
	private int CategoryNo;
	private String CategoryDetail;
	private String CategoryName;
	
	public Category() {
		
	}
	
	public Category(int categoryNo, String categoryDetail, String categoryName) {
		super();
		CategoryNo = categoryNo;
		CategoryDetail = categoryDetail;
		CategoryName = categoryName;
	}

	public int getCategoryNo() {
		return CategoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		CategoryNo = categoryNo;
	}

	public String getCategoryDetail() {
		return CategoryDetail;
	}

	public void setCategoryDetail(String categoryDetail) {
		CategoryDetail = categoryDetail;
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Category [CategoryNo=" + CategoryNo + ", CategoryDetail=" + CategoryDetail + ", CategoryName="
				+ CategoryName + "]";
	}
	
	
	

	
}
