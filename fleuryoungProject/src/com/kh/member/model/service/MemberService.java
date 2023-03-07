package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Coupon;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.Search;
import com.kh.product.model.dao.CartDao;

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

	public ArrayList<Coupon> selectMemberCoupon(String memId) {

		Connection conn = getConnection();
		
		ArrayList<Coupon> couponList = new MemberDao().selectMemberCoupon(conn, memId);
		
		close(conn);
		
		return couponList;
	}

	public int addOrder(String memberId, String memName, String memEmail, String memPhone, int postal, String street,
			String address) {

		Connection conn = getConnection();
		
		int result = new MemberDao().addOrder(conn, memberId, memName, memEmail, memPhone, postal, street, address);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}

	public int addOrderDetail(String memId, int pId, int opt1No, int opt2No, String opt2Title, String opt2Content,
			int opt2Price, int pNetPrice, int pCount, int optCount, int odId) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().addOrderDetail(conn, memId, pId, opt1No, opt2No, opt2Title, opt2Content, opt2Price, pNetPrice, pCount, optCount, odId);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
		
	}

	public int selectOdId(String memberId) {

		Connection conn = getConnection();
		
		int result = new MemberDao().selectOdId(conn, memberId);
		
		close(conn);
		
		return result;
	}

	public int updateMileage(String memberId, int mileage) {

		Connection conn = getConnection();
		
		int result = new MemberDao().updateMileage(conn, memberId, mileage);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int insertWishList(String memId, int pId) {

		Connection conn = getConnection();
		
		int result = 0;
		
		result = new MemberDao().insertWishList(conn, memId, pId);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int deleteWishList(String memId, int pId) {
		
		Connection conn = getConnection();
		
		int result = 0;
		
		result = new MemberDao().deleteWishList(conn, memId, pId);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int insertkeyword(String memId, String keyWord) {

		Connection conn = getConnection();
		
		int result = 0;
		
		result = new MemberDao().insertkeyword(conn, memId, keyWord);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}

	public ArrayList<Search> selectRealTimeSearch() {
		
		Connection conn = getConnection();

		ArrayList<Search> list = new MemberDao().selectRealTimeSearch(conn);

		close(conn);

		return list;
	}
	
}













