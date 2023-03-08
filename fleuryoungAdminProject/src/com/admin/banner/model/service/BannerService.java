package com.admin.banner.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.banner.model.dao.BannerDao;
import com.admin.banner.model.vo.Banner;
import com.admin.coupon.model.vo.Coupon;
import com.admin.user.model.dao.UserDao;
import com.admin.user.model.vo.User;

public class BannerService {
	
	public User loginUser(String uId, String uPw) {
		Connection conn = getConnection();
		User u = new UserDao().loginUser(conn, uId, uPw);
		
		close(conn);
		
		return u;
	}
	
	public int insertUser(User u) {
		Connection conn = getConnection();
		int result = new UserDao().insertUser(conn, u);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int updateUser(User u) {
		Connection conn = getConnection();
		int result = new UserDao().updateUser(conn, u);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	public User selectSeller(int uNo) {
		Connection conn = getConnection();
		User u = new UserDao().selectUser(conn, uNo);

		close(conn);
		
		return u;
	}

	public ArrayList<Banner> selectAllBanner() {
		Connection conn = getConnection();
		ArrayList<Banner> bList = new BannerDao().selectAllBanner(conn);

		close(conn);
		return bList;
	}

	public ArrayList<Coupon> selectAvailCoupon() {
		Connection conn = getConnection();
		ArrayList<Coupon> cList = new BannerDao().selectAvailConn(conn);

		close(conn);
		return cList;
	}
	
}
