package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;

import com.kh.common.JDBCTemplate;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

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


public Member findPw(String member_id, String member_email ) {
	
			Connection conn = getConnection();
			
			Member member = new MemberDao().findPw(conn, member_id, member_email);
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
