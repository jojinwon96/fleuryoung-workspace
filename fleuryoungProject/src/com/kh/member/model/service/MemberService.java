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

	public Member selectMemberOrderInfo(String memId) {

		Connection conn = getConnection();

		Member member = new MemberDao().selectMemberOrderInfo(conn, memId);

		close(conn);

		return member;

	}

}
