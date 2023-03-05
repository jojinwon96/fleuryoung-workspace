package com.admin.seller.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.seller.model.dao.SellerDao;
import com.admin.seller.model.vo.Seller;
import com.admin.user.model.dao.UserDao;
import com.admin.user.model.vo.User;

public class SellerService {
	
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

	public ArrayList<Seller> selectAllSeller() {
		Connection conn = getConnection();
		ArrayList<Seller> sList = new SellerDao().selectAllSeller(conn);

		close(conn);
		return sList;
	}
	
}
