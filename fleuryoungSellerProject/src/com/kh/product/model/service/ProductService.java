package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
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
}
