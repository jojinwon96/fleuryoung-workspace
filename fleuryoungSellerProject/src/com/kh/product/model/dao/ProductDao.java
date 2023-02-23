package com.kh.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.Product;
import com.kh.seller.model.dao.SellerDao;
import com.kh.seller.model.vo.Seller;

public class ProductDao {

private Properties prop = new Properties();
	
	public ProductDao() {
		String filePath = SellerDao.class.getResource("/db/sql/product-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product> selectProductList(Connection conn, int selNo){
		ArrayList<Product> list = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, selNo);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Product(rset.pPic))
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
}
