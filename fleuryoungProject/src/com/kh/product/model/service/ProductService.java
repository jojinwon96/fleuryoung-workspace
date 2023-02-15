package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.product.model.dao.ProductDao;

public class ProductService {

	public void selectBestProduct() {
		
		Connection conn = getConnection();
		
		new ProductDao().selectBestProduct(conn);
		
	}

}
