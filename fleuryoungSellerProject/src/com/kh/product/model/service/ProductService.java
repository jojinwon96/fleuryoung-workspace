package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Category;
import com.kh.product.model.vo.OptionOne;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.Refund;
import com.kh.product.model.vo.Review;

public class ProductService {
	
	/**
	 * 판매자 상품리스트 조회
	 */
	public ArrayList<Product> selectProductList(int selNo){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectProductList(conn, selNo);
		close(conn);
		return list;
	}
	
	/**
	 * 카테고리 조회
	 */
	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		ArrayList<Category> list = new ProductDao().selectCategoryList(conn);
		close(conn);
		return list;
	}
	
	/**
	 * 상품 등록
	 */
	public int insertProduct(Product p) {
		Connection conn = getConnection();
		int result = new ProductDao().insertProduct(conn, p);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/**
	 * 상품 옵션 입력
	 */
	public int insertOptionOne(String title) {
		Connection conn = getConnection();
		int result = new ProductDao().insertOptionOne(conn,title);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertOptionTwo(ArrayList<OptionTwo> list) {
		Connection conn = getConnection();
		int result = new ProductDao().insertOptionTwo(conn,list);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertProductImg(ArrayList<String> list) {
		Connection conn = getConnection();
		int result = new ProductDao().insertProductImg(conn, list);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertDiscount(int dc) {
		Connection conn = getConnection();
		int result = new ProductDao().insertDiscount(conn, dc);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public Product selectProduct(int pno) {
		
		Connection conn = getConnection();
		Product p = new ProductDao().selectProduct(conn, pno);
		close(conn);
		
		return p;
	}
	public ArrayList<OptionOne> selectOptionOne(int pno) {
		
		Connection conn = getConnection();
		ArrayList<OptionOne> list = new ProductDao().selectOptionOne(conn, pno);
		close(conn);
		
		return list;
	}
	public ArrayList<OptionTwo> selectOptionTwo(int[] pno) {
	
	Connection conn = getConnection();
	ArrayList<OptionTwo> list = new ProductDao().selectOptionTwo(conn, pno);
	close(conn);
	
	return list;
	}
	
	public int selectDiscount(int pno) {
		Connection conn = getConnection();
		int result = new ProductDao().selectDiscount(conn, pno);
		close(conn);
		return result;
	}
	
	public int deleteProduct(int pno) {
		Connection conn = getConnection();
		int result = new ProductDao().deleteProduct(conn, pno);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}	
	
	public ArrayList<Review> selectReviewList(int selNo){
		Connection conn = getConnection();
		ArrayList<Review> list = new ProductDao().selectReviewList(conn, selNo);
		close(conn);
		return list;
	}
	
	public ArrayList<Refund> refundList(int no, int selNo){
		Connection conn = getConnection();
		ArrayList<Refund> list = new ProductDao().refundList(conn, no, selNo);
		close(conn);
		return list;
		
		
	}	
	public int updateRefund(int odId) {
		Connection conn = getConnection();
		int result = new ProductDao().updateRefund(conn, odId);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}	
	public int suRefund(int odId) {
		Connection conn = getConnection();
		int result = new ProductDao().updateRefund(conn, odId);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}	
}
