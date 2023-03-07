package com.kh.seller.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;
import com.kh.seller.model.vo.Seller;

public class SellerDao {
	
	private Properties prop = new Properties();

	public SellerDao() {
		try {

			String filePath = ProductDao.class.getResource("/db/sql/seller-mapper.xml").getPath();

			prop.loadFromXML(new FileInputStream(filePath));

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Seller> wishStoreList(Connection conn, String memId) {
		ArrayList<Seller> list = new ArrayList<Seller>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("wishStoreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(new Seller(rs.getString("SEL_STORE_NAME")
							      , rs.getString("SEL_TEL") 
							      , rs.getString("P_IMG1")
						 	      , rs.getString("ADDRESS")
						          ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}
	

}
