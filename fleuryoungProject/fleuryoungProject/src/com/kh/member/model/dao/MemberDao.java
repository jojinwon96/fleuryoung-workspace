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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}