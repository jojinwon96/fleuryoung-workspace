package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Member;

public class MemberDao {

	Properties prop = new Properties();

	public MemberDao() {
		try {
			
			String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, String userId, String userPwd) {

		Member member = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				member = new Member(rs.getString("MEM_ID")
						          , rs.getString("MEM_PW")
						          , rs.getString("MEM_EMAIL")
						          , rs.getString("MEM_NAME")
						          , rs.getString("MEM_PHONE")
						          , rs.getInt("MEM_POSTAL")
						          , rs.getString("MEM_STREET")
						          , rs.getString("MEM_ADDRESS")
						          , rs.getDate("MEM_ENROLL_DATE")
						          , rs.getInt("MEM_MILEAGE")
						          , rs.getString("MEM_IMG")
						          , rs.getString("MEM_GET_PHONE")
						          , rs.getDate("MEM_BIRTHDATE")
						          , rs.getInt("MEM_GENDER")
						          , rs.getString("MEM_STATUS"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return member;
	}

	public String checkMember(Connection conn, String memId) {

		String result = "";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("checkMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getString("MEM_ID");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateMember(Connection conn, Member m) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getStreet());
			pstmt.setString(5, m.getAddress());
			pstmt.setString(6, m.getMemId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	} 
	
	public Member selectMember(Connection conn, String userId) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getString("MEM_ID")
							 , rset.getString("MEM_PW")
							 , rset.getString("MEM_EMAIL")
							 , rset.getString("MEM_NAME")
							 , rset.getString("MEM_PHONE")
							 , rset.getInt("MEM_POSTAL")
							 , rset.getString("MEM_STREET")
							 , rset.getString("MEM_ADDRESS")
							 , rset.getDate("MEM_ENROLL_DATE")
							 , rset.getInt("MEM_MILEAGE")
							 , rset.getString("MEM_IMG")
							 , rset.getString("MEM_GET_PHONE")
							 , rset.getDate("MEM_BIRTHDATE")
							 , rset.getInt("MEM_GENDER")
							 , rset.getString("MEM_STATUS")
							 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	} 
	
	public int updatePwd(Connection conn, String userId, String userPwd, String updatePwd) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, updatePwd);
			pstmt.setString(2, userId);
			pstmt.setString(3, userPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int deleteMember(Connection conn, String userId, String userPwd) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
