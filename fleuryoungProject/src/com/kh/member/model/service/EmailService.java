package com.kh.member.model.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.kh.common.MailAuthUtils;

public class EmailService {
	public String sendEmail(HttpServletRequest request, HttpServletResponse response,
			String title, String user_email, String AuthenticationKey) {
		String host = "smtp.gmail.com";
		String port = "465";
		String id ="chlalstn0123@gmail.com";
    	String pwd = "kddgaxxvnlnsipkr";
    	String text = "Flower의 인증번호는 ";
		
    	
		try {
			request.setCharacterEncoding("UTF-8");
			
			response.setContentType("text/html;charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			String mail_from = "Flower<" + id + ">";
			String mail_to = "user<"+user_email+">";
			title = user_email+ " 요청사항 :: 이메일인증";
			String contents = "보낸 사람 :: flower &lt;" + user_email + "&gt;<br><br>" 
							 + title + "<br><br>" + text + AuthenticationKey + " 입니다.";
			
			mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8");
			mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");
			
			System.out.println(host);
			Properties props = new Properties();
			props.put("mail.transport.protocol", "smtp");
		    props.put("mail.smtp.host", "smtp.gmail.com");
		    props.put("mail.smtp.port", port);
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.socketFactory.port", port);
		    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		    props.put("mail.smtp.socketFactory.fallback", "false");
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.ssl.protocols", "TLSv1.2");
			
//			props.put("mail.smtp.ssl.protocols", "TLSv1.2");
//			props.put("mail.smtp.ssl.enable", "true");
//			props.put("mail.smtp.ssl.trust", host);
//			Authenticator auth = new MailAuthUtils();
//			
//			Session session = Session.getDefaultInstance(props, auth);
//			props.put("mail.transport.protocol", "smtp");
//			String test2 = System.setProperty("jsse.enableSNIExtension", "false");
//			System.out.println(test2);
//			String test = System.setProperty("https.protocols", "TLSv1,TLSv1.1,TLSv1.2");
//			System.out.println(test);
			Session session = Session.getDefaultInstance(props,
			new Authenticator() {
		        protected PasswordAuthentication  getPasswordAuthentication() {
		        	
		        return new PasswordAuthentication(
		                    id, pwd);
		                }
		    });
			
			MimeMessage msg = new MimeMessage(session);
			
			msg.setFrom(new InternetAddress(mail_from));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
			msg.setSubject(title, "UTF-8");
			msg.setContent(contents, "text/html; charset=UTF-8");
			msg.setHeader("Content-type", "text/html; charset=UTF-8");
			
			Transport.send(msg);	
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return AuthenticationKey;
	}
}
