package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

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
				list.add(new Product(rset.getString("P_PICTURE")
									,rset.getString("P_NAME")
									,rset.getInt("P_NETPRICE")
									,rset.getInt("P_STOCK")
									,rset.getString("P_ENROLL_DATE")
									,rset.getInt("P_SALES")
									,rset.getString("CATEGORY_NAME")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
}
