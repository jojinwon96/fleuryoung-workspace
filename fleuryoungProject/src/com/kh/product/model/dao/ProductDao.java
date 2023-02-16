package com.kh.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.product.model.vo.Product;

import static com.kh.common.JDBCTemplate.*;

public class ProductDao {

	private Properties prop = new Properties();

	public ProductDao() {
		try {

			String filePath = ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath();

			prop.loadFromXML(new FileInputStream(filePath));

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Product> selectLatestProduct(Connection conn) {

		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectBestProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectSaleOrderProduct(Connection conn) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectSaleOrderProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1"), rs.getInt("PCOUNT")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectReviewOrderProduct(Connection conn) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectReviewOrderProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	
	public Product selectProductDetail(Connection conn, int pid) {
		
		Product p = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				p = new Product(rs.getString("P_NAME")
						      , rs.getString("SEL_STORE_NAME")
						      , rs.getInt("COUNT")
						      , rs.getInt("REVIEW_RATING")
						      , rs.getInt("P_NETPRICE")
						      , rs.getString("P_IMG1")
						      , rs.getString("P_IMG2")
						      , rs.getString("P_IMG3")
						      , rs.getString("P_IMG4")
						      , rs.getString("P_IMG5")
						      , rs.getString("P_IMG6")
						      , rs.getString("P_IMG7")
						      , rs.getString("P_IMG8")
						      , rs.getString("P_IMG9")
						      , rs.getString("P_IMG10"));
			}
			
			System.out.println(p.getImg1());
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return p;
	}

}














