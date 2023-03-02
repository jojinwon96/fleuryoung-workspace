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
	
	public void sendEmail(String email, String ranNum) {
		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

		Authenticator auth = new MailAuthUtils();
		Session session = Session.getDefaultInstance(prop, auth);
		MimeMessage msg = new MimeMessage(session);

		try {
			msg.setFrom(new InternetAddress("cxxxxxxnxxx3@gmail.com", "admin"));
			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(javax.mail.Message.RecipientType.TO, to);
			if(ranNum.length() == 4) {
				msg.setSubject("인증번호", "UTF-8");
				msg.setText("인증번호: " + ranNum, "UTF-8");
			} else {
				msg.setSubject("임시 비밀번호", "UTF-8");
				msg.setText("임시 비밀번호: " + ranNum, "UTF-8");
			}
			Transport.send(msg);

		} catch (AddressException ae) {
				System.out.println("AddressException : " + ae.getMessage());
			} catch (MessagingException me) {
			System.out.println("MessagingException : " + me.getMessage());
		} catch (UnsupportedEncodingException e) {
			System.out.println("UnsupportedEncodingException : " + e.getMessage());
		}
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
