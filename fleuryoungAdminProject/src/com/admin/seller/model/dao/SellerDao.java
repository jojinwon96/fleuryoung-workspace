package com.admin.seller.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.admin.common.JDBCTemplate.*;

import com.admin.seller.model.vo.Seller;

public class SellerDao {
	
	private Properties prop = new Properties();
	
	public SellerDao() {
		
		String filePath = SellerDao.class.getResource("/db/sql/seller-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 *판매자 전체조회
	 * @param sList
	 * @return
	 */
	public ArrayList<Seller> selectAllSeller(Connection conn) {
		ArrayList<Seller> sList = new ArrayList<Seller>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAllSeller");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				sList.add(new Seller(rset.getInt("SEL_NO")
									,rset.getString("SEL_ID")
									,rset.getString("SEL_PW")
									,rset.getString("SEL_BUSINESS_NO")
									,rset.getString("SEL_STORE_NAME")
									,rset.getString("SEL_NAME")
									,rset.getString("SEL_EMAIL")
									,rset.getString("SEL_PHONE")
									,rset.getString("SEL_TEL")
									,rset.getString("SEL_FAX")
									,rset.getInt("SEL_POSTAL")
									,rset.getString("SEL_STREET")
									,rset.getString("SEL_ADDRESS")
									,rset.getString("SEL_IMG")
									,rset.getString("SEL_STATUS")
									,rset.getDate("SEL_ENROLL_DATE")
									)
						 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return sList;
	}

	public int add(Connection conn, Seller s) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("add");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getSelId());
			pstmt.setString(2, s.getSelPw());
			pstmt.setString(3, s.getSelBusinessNo());
			pstmt.setString(4, s.getSelStoreName());
			pstmt.setString(5, s.getSelName());
			pstmt.setString(6, s.getSelEmail());
			pstmt.setString(7, s.getSelPhone());
			pstmt.setString(8, s.getSelTel());
			pstmt.setString(9, s.getSelFax());
			pstmt.setInt(10, s.getSelPostal());
			pstmt.setString(11, s.getSelStreet());
			pstmt.setString(12, s.getSelAddress());
			pstmt.setString(13, s.getSelImg());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int update(Connection conn, Seller s) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("update");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getSelId());
			pstmt.setString(2, s.getSelPw());
			pstmt.setString(3, s.getSelBusinessNo());
			pstmt.setString(4, s.getSelStoreName());
			pstmt.setString(5, s.getSelName());
			pstmt.setString(6, s.getSelEmail());
			pstmt.setString(7, s.getSelPhone());
			pstmt.setString(8, s.getSelTel());
			pstmt.setString(9, s.getSelFax());
			pstmt.setInt(10, s.getSelPostal());
			pstmt.setString(11, s.getSelStreet());
			pstmt.setString(12, s.getSelAddress());
			pstmt.setString(13, s.getSelImg());
			pstmt.setInt(14, s.getSelNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateNoImg(Connection conn, Seller s) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateNoImg");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getSelId());
			pstmt.setString(2, s.getSelPw());
			pstmt.setString(3, s.getSelBusinessNo());
			pstmt.setString(4, s.getSelStoreName());
			pstmt.setString(5, s.getSelName());
			pstmt.setString(6, s.getSelEmail());
			pstmt.setString(7, s.getSelPhone());
			pstmt.setString(8, s.getSelTel());
			pstmt.setString(9, s.getSelFax());
			pstmt.setInt(10, s.getSelPostal());
			pstmt.setString(11, s.getSelStreet());
			pstmt.setString(12, s.getSelAddress());
			pstmt.setInt(13, s.getSelNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deactivate(Connection conn, String selNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deactivate");
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, selNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
}
