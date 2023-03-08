package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
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

	public ArrayList<Product> selectSearchList(String keyword) {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectSearchList(conn, keyword);

		close(conn);

		return list;
	}

	public int selectReivewCheck(String memId, int pid) {

		Connection conn = getConnection();

		int result = new ProductDao().selectReivewCheck(conn, memId, pid);

		close(conn);

		return result;
	}

	public int selectOrderCheck(String memId, int pid) {
		Connection conn = getConnection();

		int result = new ProductDao().selectOrderCheck(conn, memId, pid);

		close(conn);

		return result;
	}

	public int selectOrderId(String memId, int pId) {

		Connection conn = getConnection();

		int result = new ProductDao().selectOrderId(conn, memId, pId);

		close(conn);

		return result;
	}

	public int insertReview(int pId, int rating, String textBox, int odId) {
		
		Connection conn = getConnection();

		int result = new ProductDao().insertReview(conn, pId, rating, textBox, odId);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}

	public int selectReviewCount(int pid) {
		
		Connection conn = getConnection();

		int result = new ProductDao().selectReviewCount(conn, pid);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}

	
	// 마이 페이지
	public ArrayList<Product> wishList(String mId) {
		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao(). wishList(conn, mId);

		close(conn);

		return list;
	}

	public ArrayList<Product> orderList(String memId) {
		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao(). orderList(conn, memId);

		close(conn);

		return list;
	}

	public ArrayList<Product> myPageReview(String memId) {
		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao(). myPageReview(conn, memId);

		close(conn);

		return list;
	}


}


















