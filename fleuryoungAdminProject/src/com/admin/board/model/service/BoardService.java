package com.admin.board.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.board.model.dao.BoardDao;
import com.admin.board.model.vo.Board;
import com.admin.user.model.dao.UserDao;
import com.admin.user.model.vo.User;

public class BoardService {
	
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

	public ArrayList<Board> selectAllBoard() {
		Connection conn = getConnection();
		ArrayList<Board> bList = new BoardDao().selectAllBoard(conn);

		close(conn);
		return bList;
	}

	public int add(Board b) {
		Connection conn = getConnection();
		int result = new BoardDao().add(conn, b);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int update(Board b) {
		Connection conn = getConnection();
		int result = new BoardDao().update(conn, b);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int delete(int parseInt) {
		Connection conn = getConnection();
		int result = new BoardDao().delete(conn, parseInt);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
}
