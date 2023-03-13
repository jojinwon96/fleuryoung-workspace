package com.admin.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.admin.common.JDBCTemplate.*;

import com.admin.board.model.vo.Board;
import com.admin.user.model.vo.User;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String filePath = BoardDao.class.getResource("/db/sql/board-mapper.xml").getPath();
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
	 * 요청사항 전체조회
	 * @param sList
	 * @return
	 */
	public ArrayList<Board> selectAllBoard(Connection conn) {
		ArrayList<Board> bList = new ArrayList<Board>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAllBoard");

		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				bList.add(new Board(rset.getInt("NOTICE_ID")
									,rset.getString("NOTICE_TITLE")
									,rset.getString("NOTICE_COMMENT")
									,rset.getDate("NOTICE_REGDATE")
									)
						 );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return bList;
	}

	public int add(Connection conn, Board b) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("add");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getBoardTitle());
			pstmt.setString(2, b.getBoardDetail());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int update(Connection conn, Board b) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("update");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getBoardTitle());
			pstmt.setString(2, b.getBoardDetail());
			pstmt.setInt(3, b.getBoardNumber());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int delete(Connection conn, int parseInt) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("delete");
		
		try {	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, parseInt);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
