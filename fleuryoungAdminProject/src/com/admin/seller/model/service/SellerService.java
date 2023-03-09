package com.admin.seller.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.seller.model.dao.SellerDao;
import com.admin.seller.model.vo.Seller;

public class SellerService {
	
	public ArrayList<Seller> selectAllSeller() {
		Connection conn = getConnection();
		ArrayList<Seller> sList = new SellerDao().selectAllSeller(conn);

		close(conn);
		return sList;
	}

	public int add(Seller s) {
		Connection conn = getConnection();
		int result = new SellerDao().add(conn, s);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int update(Seller s) {
		Connection conn = getConnection();
		int result = new SellerDao().update(conn, s);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int updateNoImg(Seller s) {
		Connection conn = getConnection();
		int result = new SellerDao().updateNoImg(conn, s);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int deactivate(String selNo) {
		Connection conn = getConnection();
		int result = new SellerDao().deactivate(conn, selNo);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
}
