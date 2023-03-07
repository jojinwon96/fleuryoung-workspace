package com.kh.nonMember.model.dao;
import static com.kh.common.JDBCTemplate.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;



import com.kh.nonMember.model.vo.NonMemberOrder;

public class NonMemberDao {
	Properties prop = new Properties();
	
	public NonMemberDao() {
		
		try {
			
			String filePath = NonMemberDao.class.getResource("/db/sql/NonMember-mapper.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public NonMemberOrder findOrderNo(Connection conn, String receiverName, String receiverPhone) {
		
		NonMemberOrder nonMemberOrder = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("findOrderNo");
	
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, receiverName);
			pstmt.setString(2, receiverPhone);
			
			System.out.println(receiverName);
			System.out.println(receiverPhone);
			
			rs = pstmt.executeQuery();
			
			
			
			System.out.println("다오 IF문 직전");
			
			if(rs.next()) {
				System.out.println("다오 if문 탐");
				
				nonMemberOrder = new NonMemberOrder(rs.getInt("ORD_ID"));
				
				System.out.println("아래는 다오");
				System.out.println(nonMemberOrder);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return nonMemberOrder;
		
		
	}
	
	
	
	

}
