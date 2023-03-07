package com.kh.nonMember.model.service;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.nonMember.model.dao.NonMemberDao;
import com.kh.nonMember.model.vo.NonMemberOrder;

public class NonMemberService {
	
	public NonMemberOrder findOrderNo(String receiverName, String receiverPhone) {
		
		Connection conn = getConnection();
		
		NonMemberOrder nonMemberOrder = new NonMemberDao().findOrderNo(conn, receiverName, receiverPhone );
		
		close(conn);
		return nonMemberOrder;
		
		
	}

}
