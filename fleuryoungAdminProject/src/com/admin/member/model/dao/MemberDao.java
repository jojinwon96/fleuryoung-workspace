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
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return mList;
	}

	public int deactivate(String mId, Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deactivate");
		System.out.println("여기 ");
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int update(Member m, Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("update");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPw());
			pstmt.setString(3, m.getMemEmail());
			pstmt.setString(4, m.getMemName());
			pstmt.setString(5, m.getMemPhone());
			pstmt.setInt(6, m.getMemPostal());
			pstmt.setString(7, m.getMemStreet());
			pstmt.setString(8, m.getMemAddress());
			pstmt.setString(9, m.getMemImg());
			pstmt.setDate(10, m.getMemBirthDate());
			pstmt.setInt(11, m.getMemGender());
			pstmt.setString(12, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int add(Member m, Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("add");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPw());
			pstmt.setString(3, m.getMemEmail());
			pstmt.setString(4, m.getMemName());
			pstmt.setString(5, m.getMemPhone());
			pstmt.setInt(6, m.getMemPostal());
			pstmt.setString(7, m.getMemStreet());
			pstmt.setString(8, m.getMemAddress());
			pstmt.setString(9, m.getMemImg());
			pstmt.setDate(10, m.getMemBirthDate());
			pstmt.setInt(11, m.getMemGender());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updateNoImg(Member m, Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateNoImg");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPw());
			pstmt.setString(3, m.getMemEmail());
			pstmt.setString(4, m.getMemName());
			pstmt.setString(5, m.getMemPhone());
			pstmt.setInt(6, m.getMemPostal());
			pstmt.setString(7, m.getMemStreet());
			pstmt.setString(8, m.getMemAddress());
			pstmt.setDate(9, m.getMemBirthDate());
			pstmt.setInt(10, m.getMemGender());
			pstmt.setString(11, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
