package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;

import com.kh.member.model.dao.CouponDao;
import com.kh.member.model.vo.Coupon;
import com.kh.member.model.vo.Member;

public class CouponService {

	public Coupon countCoupon(String userId) {
		
		Connection conn = getConnection();
		
		Coupon coupon = new CouponDao().countCoupon(conn, userId);
		
		close(conn);
		
		return coupon;
	}

}
