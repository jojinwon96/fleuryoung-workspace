package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;

public class ProductService {

	public ArrayList<Product> selectBestProduct() {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list =  new ProductDao().selectBestProduct(conn);
		
		close(conn);
		
		return list;
		
	}

}
