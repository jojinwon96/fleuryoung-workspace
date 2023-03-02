package com.kh.common;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuthUtils extends Authenticator {

	// 이메일 전송 계정 준비
	
	PasswordAuthentication pa;
	
	public MailAuthUtils() {
        String mail_id = "flower36123@gmail.com";
        String mail_pw = "flower123@";
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }

	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}

}
