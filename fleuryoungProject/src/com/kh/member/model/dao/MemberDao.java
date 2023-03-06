package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.vo.Coupon;
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
				member = new Member(rs.getString("MEM_ID"), rs.getString("MEM_PW"), rs.getString("MEM_EMAIL"),
						rs.getString("MEM_NAME"), rs.getString("MEM_PHONE"), rs.getInt("MEM_POSTAL"),
						rs.getString("MEM_STREET"), rs.getString("MEM_ADDRESS"), rs.getDate("MEM_ENROLL_DATE"),
						rs.getInt("MEM_MILEAGE"), rs.getString("MEM_IMG"), rs.getString("MEM_GET_PHONE"),
						rs.getDate("MEM_BIRTHDATE"), rs.getInt("MEM_GENDER"), rs.getString("MEM_STATUS"));
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

	public Member selectMemberOrderInfo(Connection conn, String memId) {

		Member m = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectMemberOrderInfo");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memId);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				m = new Member(rs.getString("MEM_ID"), rs.getString("MEM_NAME"), rs.getString("MEM_EMAIL"),
						rs.getString("MEM_PHONE"), rs.getInt("MEM_POSTAL"), rs.getString("MEM_STREET"),
						rs.getString("MEM_ADDRESS"), rs.getInt("MEM_MILEAGE"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return m;
	}

	public ArrayList<Coupon> selectMemberCoupon(Connection conn, String memId) {

		ArrayList<Coupon> couponList = new ArrayList<Coupon>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectMemberCoupon");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memId);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				couponList.add(new Coupon(rs.getInt("COU_ID")
						                , rs.getString("COU_NAME")
						                , rs.getString("COU_DETAIL")
						                , rs.getDate("COU_REGDATE")
						                , rs.getDate("COU_EXPIRE")
						                , rs.getFloat("COU_DISCOUNT")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return couponList;

	}

	public int addOrder(Connection conn, String memberId, String memName, String memEmail, String memPhone, int postal,
			String street, String address) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("addOrder");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			pstmt.setInt(2, postal);
			pstmt.setString(3, street);
			pstmt.setString(4, address);
			pstmt.setString(5, memName);
			pstmt.setString(6, memPhone);
			pstmt.setString(7, "");
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int addOrderDetail(Connection conn, String memId, int pId, int opt1No, int opt2No, String opt2Title,
			String opt2Content, int opt2Price, int pNetPrice, int pCount, int optCount, int odId) {
		
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("addOrderDetail");

		try {
			pstmt = conn.prepareStatement(sql);

			if (opt1No != 0 ){
				pstmt.setInt(1, optCount);
				pstmt.setInt(2, 1);
				pstmt.setInt(3, odId);
				pstmt.setString(4, memId);
				pstmt.setInt(5, opt1No);
				pstmt.setInt(6, opt2No);
				pstmt.setInt(7, pNetPrice);
				pstmt.setString(8, opt2Title);
				pstmt.setInt(9, opt2Price);
				pstmt.setInt(10, pId);
				pstmt.setString(11, opt2Content);
			} else {
				pstmt.setInt(1, optCount);
				pstmt.setInt(2, 1);
				pstmt.setInt(3, odId);
				pstmt.setString(4, memId);
				pstmt.setInt(5, 0);
				pstmt.setInt(6, 0);
				pstmt.setInt(7, pNetPrice);
				pstmt.setString(8, "none");
				pstmt.setInt(9, 0);
				pstmt.setInt(10, pId);
				pstmt.setString(11, "none");
			}

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
		
	}

	public int selectOdId(Connection conn, String memberId) {

		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectOdId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				result = rs.getInt("ORD_ID");
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

















