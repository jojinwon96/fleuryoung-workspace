package com.kh.common;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuthUtils extends Authenticator {

	// 이메일 전송 계정 준비
	
	PasswordAuthentication pa;
	
	public MailAuthUtils() {
        String mail_id = "chlalstn0123@naver.com";
        String mail_pw = "qwer1234";
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }

	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}

}