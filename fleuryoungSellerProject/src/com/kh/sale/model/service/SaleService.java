package com.kh.sale.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

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
	

	
	
	
}
