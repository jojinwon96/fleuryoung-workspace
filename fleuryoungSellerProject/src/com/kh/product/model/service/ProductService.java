package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Category;
import com.kh.product.model.vo.Product;

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
	
	public int insertOptionTwo(OptionTwo list) {
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
}
