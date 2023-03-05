package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Category;
import com.kh.product.model.vo.Inquiry;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductOption;
import com.kh.product.model.vo.Review;

public class ProductService {

	public ArrayList<Product> selectLatestProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectLatestProduct(conn);

		close(conn);

		return list;

	}

	public ArrayList<Product> selectSaleOrderProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectSaleOrderProduct(conn);

		close(conn);

		return list;
	}

	public ArrayList<Product> selectReviewOrderProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectReviewOrderProduct(conn);

		close(conn);

		return list;
	}

	public Product selectProductDetail(int pid) {

		Connection conn = getConnection();

		Product p = new ProductDao().selectProductDetail(conn, pid);

		close(conn);

		return p;
	}

	public ArrayList<ProductOption> selectProductOption(int pid) {

		Connection conn = getConnection();

		ArrayList<ProductOption> optList = new ProductDao().selectProductOption(conn, pid);

		close(conn);

		return optList;
	}

	public ArrayList<Review> selectProductReview(int pid) {

		Connection conn = getConnection();

		ArrayList<Review> reviewList = new ProductDao().selectProductReview(conn, pid);

		close(conn);

		return reviewList;
	}

	public ArrayList<Inquiry> selectProductInquiry(int pid) {

		Connection conn = getConnection();

		ArrayList<Inquiry> inquiryList = new ProductDao().selectProductInquiry(conn, pid);

		close(conn);

		return inquiryList;

	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public ArrayList<Category> selectCategory() {
		
		
		Connection conn = getConnection();
		
		ArrayList<Category> categoryList = new ProductDao().selectCategory(conn);
		
		close(conn);
		
		
		return categoryList;
	}

	public ArrayList<Product> selectProductType(String pCategory) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductType(conn,pCategory);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Product> selectProductAll() {
		
Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectProductAll(conn);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Product> selectPriceOver(int amountValue) {
Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectPriceOver(conn, amountValue);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Product> selectPriceLess(int amountValue) {
Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectPriceLess(conn, amountValue);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Product> selectDeliveryAll() {
		
Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectDeliveryAll(conn);
		
		close(conn);
		
		return list;	
		
		
	}

	public ArrayList<Product> selectDeliveryCategory(String categoryName) {
		
Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectDeliveryCategory(conn, categoryName);
		
		close(conn);
		
		return list;
	}



}
