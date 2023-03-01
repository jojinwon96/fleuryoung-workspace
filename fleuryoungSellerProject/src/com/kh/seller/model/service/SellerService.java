package com.kh.seller.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.seller.model.dao.SellerDao;
import com.kh.seller.model.vo.Seller;

public class SellerService {
	
	public Seller loginSeller(String selId, String selPw) {
		Connection conn = getConnection();
		Seller sel = new SellerDao().loginSeller(conn, selId, selPw);
		
		close(conn);
		
		return sel;
	}
	
	public int insertSeller(Seller sel) {
		Connection conn = getConnection();
		int result = new SellerDao().insertSeller(conn, sel);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int updateSeller(Seller sel) {
		Connection conn = getConnection();
		int result = new SellerDao().updateSeller(conn, sel);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	public Seller selectSeller(int selNo) {
		Connection conn = getConnection();
		Seller sel = new SellerDao().selectSeller(conn, selNo);

		close(conn);
		
		return sel;
	}
	
}
