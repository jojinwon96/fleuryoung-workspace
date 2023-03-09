package com.admin.member.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.member.model.dao.MemberDao;
import com.admin.member.model.vo.Member;

public class MemberService {

	public ArrayList<Member> selectAllMember() {
		Connection conn = getConnection();
		ArrayList<Member> mList = new MemberDao().selectAllMember(conn);

		close(conn);
		return mList;
	}

	public int deactivate(String mId) {
		Connection conn = getConnection();
		int result = new MemberDao().deactivate(mId, conn);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int update(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().update(m, conn);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int add(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().add(m, conn);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int updateNoImg(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().updateNoImg(m, conn);
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
}
