package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {

	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		Member member = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return member;
	}

	public String checkMember(String memId) {
		
		Connection conn = getConnection();
		
		String result = new MemberDao().checkMember(conn, memId);
		
		close(conn);
		
		return result;
	}
	
	public Member updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		
		if(result > 0) { 
			commit(conn);
			
			
			updateMem = new MemberDao().selectMember(conn, m.getMemId());
		} else { 
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	} 
	
	public Member updatePwd(String userId, String userPwd, String updatePwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updatePwd(conn, userId, userPwd, updatePwd);
		
		Member updateMem = null;
		
		if(result > 0) {
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, userId);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}
	
	public int deleteMember(String userId, String userPwd) {
		int result = 0;
		
		Connection conn = getConnection();
		
		result = new MemberDao().deleteMember(conn, userId, userPwd);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

}
