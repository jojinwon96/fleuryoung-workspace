package com.kh.seller.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.seller.model.vo.Seller;

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
	 * 로그인 메소드
	 * @param conn
	 * @param selId
	 * @param selPw
	 * @return
	 */
	public Seller loginSeller(Connection conn, String selId, String selPw) {
		
		Seller sel = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("loginSeller");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, selId);
			pstmt.setString(2, selPw);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				sel = new Seller(rset.getInt("SEL_NO")
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
						);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return sel;
	}
	
	/**
	 * 회원가입 메소드
	 * @param sel
	 * @return
	 */
	public int insertSeller(Connection conn, Seller sel) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertSeller");
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sel.getSelId());
			pstmt.setString(2, sel.getSelPw());
			pstmt.setString(3, sel.getSelBusinessNo());
			pstmt.setString(4, sel.getSelStoreName());
			pstmt.setString(5, sel.getSelName());
			pstmt.setString(6, sel.getSelEmail());
			pstmt.setString(7, sel.getSelPhone());
			pstmt.setString(8, sel.getSelTel());
			pstmt.setString(9, sel.getSelFax());
			pstmt.setInt(10, sel.getSelPostal());
			pstmt.setString(11, sel.getSelStreet());
			pstmt.setString(12, sel.getSelAddress());
			pstmt.setString(13, sel.getSelImg());
			result = pstmt.executeUpdate();

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 마이페이지 수정 메소드
	 * @param sel
	 * @return
	 */
	public int updateSeller(Connection conn, Seller sel) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateSeller");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sel.getSelBusinessNo());
			pstmt.setString(2, sel.getSelStoreName());
			pstmt.setString(3, sel.getSelName());
			pstmt.setString(4, sel.getSelEmail());
			pstmt.setString(5, sel.getSelPhone());
			pstmt.setString(6, sel.getSelTel());
			pstmt.setString(7, sel.getSelFax());
			pstmt.setInt(8, sel.getSelPostal());
			pstmt.setString(9, sel.getSelStreet());
			pstmt.setString(10, sel.getSelAddress());
			pstmt.setString(11, sel.getSelImg());
			pstmt.setInt(12, sel.getSelNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public Seller selectSeller(Connection conn, int selNo) {
		Seller sel = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectSeller");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, selNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				sel = new Seller(rset.getInt("SEL_NO")
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
						);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return sel;
	}
	
	public Seller selectByEmail(Connection conn, String email) {
		
		Seller sel = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectByEmail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				sel = new Seller(rset.getInt("SEL_NO")
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
						);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return sel;
		
	}
	
	public int updatePw(Connection conn, String userId, String tempPw) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePw");
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tempPw);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public String selectById(Connection conn, String email) {
		
		String selId = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectById");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				selId = rset.getString("SEL_ID");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return selId;
	}
	
	public int updateSellerByPwd(Connection conn, String id, String pwd) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePw");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
