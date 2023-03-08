package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;

import com.kh.common.JDBCTemplate;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MemberService {

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return member;
	}
	
	
	
	public int insertMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		
		if(result > 0) {
			
			commit(conn);
			
			
		}else {
			
			rollback(conn);
		}
		
		close(conn);
		
		return result;
}
	
	
public Member findId(String userName, String userEmail) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDao().findId(conn, userName, userEmail);
		 System.out.println(userName);
		
		close(conn);
		
		System.out.println(member);
		return member;
	}


public Member findPw(String member_id) {
	
			Connection conn = getConnection();
			
			Member member = new MemberDao().findPw(conn, member_id);
			close(conn);
			return member;
	
}


public int idCheck(String checkId) {
	Connection conn = getConnection();
	
	int count = new MemberDao().idCheck(conn, checkId);
	
	
	if(count > 0) {
		
		
	}else {
		
		
	}
	
	close(conn);

	return count;

}












}
