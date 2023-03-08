package com.admin.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.admin.product.model.vo.Product;
import com.admin.product.model.vo.ProductOption;
import com.admin.product.model.vo.Review;

import static com.admin.common.JDBCTemplate.*;

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

		String sql = prop.getProperty("selectLatestProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
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
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
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
						rs.getInt("COUNT"), rs.getInt("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
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

			if (rs.next()) {
				p = new Product(rs.getInt("P_ID")
						      , rs.getInt("SEL_NO")
						      , rs.getString("STORE_NAME")
						      , rs.getString("P_NAME")
						      , rs.getInt("P_STOCK")
						      , rs.getInt("REVIEW_RATING")
						      , rs.getInt("COUNT")
						      , rs.getInt("P_NETPRICE")
						      , rs.getString("P_Day_Delivery")
						      , rs.getString("IMAGES"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return p;
	}

	public ArrayList<ProductOption> selectProductOption(Connection conn, int pid) {
		
		ArrayList<ProductOption> optList = new ArrayList<ProductOption>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductOption");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				optList.add(new ProductOption(rs.getInt("OPTION_1ND_NO")
					      , rs.getInt("OPTION_2ND_NO")
					      , rs.getString("OPTION_TITLE")
					      , rs.getString("OPTION_2ND_CONTENT")
					      , rs.getInt("OPTION_2ND_PRICE")
					      , rs.getInt("OPTION_2ND_STOCK")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return optList;
	}

	

	public ArrayList<Product> selectAllProduct(Connection conn) {
		ArrayList<Product> pList = new ArrayList<Product>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAllProduct");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				pList.add(new Product(rset.getInt("P_ID")
									,rset.getString("P_NAME")
									,rset.getInt("P_NETPRICE")
									,rset.getString("P_DETAIL")
									,rset.getInt("P_STOCK")
									,rset.getDate("P_ENROLL_DATE")
									,rset.getString("P_RETURN_YN")
									,rset.getString("P_TAG_YN")
									,rset.getInt("P_SALES")
									,rset.getString("P_DAY_DELIVERY")
									,rset.getString("P_GIFT")
									,rset.getInt("SEL_NO")
									,rset.getInt("CATEGORY_NO")
									,rset.getString("SEL_STORE_NAME")
									,rset.getString("SEL_IMG")
									,rset.getString("P_IMG1")
									,rset.getString("CATEGORY_NAME")
									)
						 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return pList;
	}

	public ArrayList<Review> selectAllReview(Connection conn) {
		ArrayList<Review> rList = new ArrayList<Review>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAllReview");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				rList.add(new Review(rset.getInt("P_ID")
									,rset.getInt("REVIEW_ID")
									,rset.getInt("REVIEW_RATING")
									,rset.getString("REVIEW_DETAIL")
									,rset.getString("MEM_ID")
									,rset.getDate("REVIEW_ADD_DATE")
									,rset.getString("REVIEW_IMG")
									)
						 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return rList;
	}

}














