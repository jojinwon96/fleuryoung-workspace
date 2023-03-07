package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Coupon;
import com.kh.member.model.vo.Member;

public class CouponDao {
	
	Properties prop = new Properties();

	public CouponDao() {
		try {
			
			String filePath = MemberDao.class.getResource("/db/sql/coupon-mapper.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Coupon countCoupon(Connection conn, String userId) {
		Coupon coupon = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("countCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				coupon = new Coupon (rs.getInt("COU_ID")
						           , rs.getString("COU_NAME")
						           , rs.getString("COU_DETAIL")
						           , rs.getString("COU_IMG")
						           , rs.getDate("COU_EXPIRE")
						           , rs.getString("COU_CONDITION_1")
						           , rs.getString("COU_CONDITION_2")
						           , rs.getString("COU_CONDITION_3")
						           , rs.getDate("COU_REGDATE")
						           , rs.getDate("COU_EDIT_DATE")
						           , rs.getInt("COU_DISCOUNT")
						             );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return coupon;
	}

}
