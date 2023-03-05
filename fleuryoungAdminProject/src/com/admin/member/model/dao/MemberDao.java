package com.admin.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.admin.common.JDBCTemplate.*;

import com.admin.member.model.vo.Member;
import com.admin.user.model.vo.User;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 회원가입 메소드
	 * @param u
	 * @return
	 */
	public int insertUser(Connection conn, User u) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertUser");
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getSelId());
			pstmt.setString(2, u.getSelPw());
			pstmt.setString(3, u.getSelBusinessNo());
			pstmt.setString(4, u.getSelStoreName());
			pstmt.setString(5, u.getSelName());
			pstmt.setString(6, u.getSelEmail());
			pstmt.setString(7, u.getSelPhone());
			pstmt.setString(8, u.getSelTel());
			pstmt.setString(9, u.getSelFax());
			pstmt.setInt(10, u.getSelPostal());
			pstmt.setString(11, u.getSelStreet());
			pstmt.setString(12, u.getSelAddress());
			pstmt.setString(13, u.getSelImg());
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
	 * @param u
	 * @return
	 */
	public int updateUser(Connection conn, User u) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateUser");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getSelBusinessNo());
			pstmt.setString(2, u.getSelStoreName());
			pstmt.setString(3, u.getSelName());
			pstmt.setString(4, u.getSelEmail());
			pstmt.setString(5, u.getSelPhone());
			pstmt.setString(6, u.getSelTel());
			pstmt.setString(7, u.getSelFax());
			pstmt.setInt(8, u.getSelPostal());
			pstmt.setString(9, u.getSelStreet());
			pstmt.setString(10, u.getSelAddress());
			pstmt.setString(11, u.getSelImg());
			pstmt.setInt(12, u.getSelNo());
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
	 * @param u
	 * @return
	 */
	public User selectUser(Connection conn, int uNo) {
		User u = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectUser");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				u = new User(rset.getInt("SEL_NO")
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
		return u;
	}
	
	/**
	 *회원 전체조
	 * @param mList
	 * @return
	 */
	public ArrayList<Member> selectAllMember(Connection conn) {
		ArrayList<Member> mList = new ArrayList<Member>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAllMember");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				mList.add(new Member(rset.getString("MEM_ID")
									,rset.getString("MEM_PW")
									,rset.getString("MEM_EMAIL")
									,rset.getString("MEM_NAME")
									,rset.getString("MEM_PHONE")
									,rset.getInt("MEM_POSTAL")
									,rset.getString("MEM_STREET")
									,rset.getString("MEM_ADDRESS")
									,rset.getDate("MEM_ENROLL_DATE")
									,rset.getInt("MEM_MILEAGE")
									,rset.getString("MEM_IMG")
									,rset.getString("MEM_GET_PHONE")
									,rset.getDate("MEM_BIRTHDATE")
									,rset.getInt("MEM_GENDER")
									,rset.getString("MEM_STATUS")
									)
						 );
				System.out.println(rset.getString("MEM_STATUS"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return mList;
	}
}
