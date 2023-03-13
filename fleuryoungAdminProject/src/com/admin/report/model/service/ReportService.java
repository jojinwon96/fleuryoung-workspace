package com.admin.report.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.report.model.dao.ReportDao;
import com.admin.report.model.vo.Report;
import com.admin.user.model.dao.UserDao;
import com.admin.user.model.vo.User;

public class ReportService {
	
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

	public ArrayList<Report> selectAllReport() {
		Connection conn = getConnection();
		ArrayList<Report> rList = new ReportDao().selectAllReport(conn);

		close(conn);
		return rList;
	}

	public int solve(int parseInt) {
		Connection conn = getConnection();
		int result = new ReportDao().solve(conn, parseInt);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
}
