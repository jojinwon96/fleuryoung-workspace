package com.kh.sale.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.sale.model.dao.SaleDao;
import com.kh.sale.model.vo.Sale;

public class SaleService {
	
	public ArrayList<Sale> selectPayment(int selNo){
		Connection conn = getConnection();
		ArrayList<Sale> list = new SaleDao().selectPayment(conn, selNo);
		close(conn);	
		return list;
	}
	
	public int invoiceInsert(int pay, int od) {
		Connection conn = getConnection();
		int result1 =0;
		int result = new SaleDao().invoiceInsert(conn, pay, od);

		if(result > 0) {
			result1 = new SaleDao().paymentUpdate(conn, od);
		}
		
		if(result1 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);	
		return result1 * result;
	}

	
	
	
}
