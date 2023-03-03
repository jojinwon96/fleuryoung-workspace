package com.kh.nonMember.model.dao;
import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;

public class NonMemberDao {
	Properties prop = new Properties();
	
	public NonMemberDao() {
		
		try {
			
			String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public void findOrderNo() {
		
	}
	
	
	
	

}
