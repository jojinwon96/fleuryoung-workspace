package com.kh.seller.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.kh.common.MailAuthUtils;
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
	
	
	
	public Seller selectByEmail(String email) {
		Connection conn = getConnection();
		Seller sel = new SellerDao().selectByEmail(conn, email);
		
		close(conn);
		
		return sel;
	}
	
	public int updatePw(String userId, String tempPw) {
		Connection conn = getConnection();
		int result = new SellerDao().updatePw(conn, userId, tempPw);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
