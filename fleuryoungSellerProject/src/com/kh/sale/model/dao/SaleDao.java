package com.kh.sale.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.sale.model.vo.Sale;
import com.kh.seller.model.dao.SellerDao;

public class SaleDao {

private Properties prop = new Properties();

	public SaleDao() {
		String filePath = SellerDao.class.getResource("/db/sql/sale-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Sale> selectPayment(Connection conn, int selNo){
		
		ArrayList<Sale> list = new ArrayList<Sale>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectPayment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, selNo);			
			rset = pstmt.executeQuery();

			while(rset.next()) {
				list.add(new Sale(rset.getInt("PAY_ID")
								, rset.getInt("OD_ID")
								, rset.getString("P_NAME")
								, rset.getInt("OD_COUNT")
								, rset.getInt("TOTAL_PAY")
								, rset.getInt("OD_STATUS")
								, rset.getString("PAY_DATE")
								, rset.getInt("INVOICE_ID")));
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int invoiceInsert(Connection conn, int pay, int od) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("invoiceInsert");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pay);			
			pstmt.setInt(2, od);			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
public int paymentUpdate(Connection conn,int od) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("paymentUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, od);			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	
}
