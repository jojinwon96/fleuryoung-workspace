package flower.com.kh.seller.model.service;

import static flower.com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import flower.com.kh.seller.model.dao.SellerDao;
import flower.com.kh.seller.model.vo.Seller;

public class SellerService {
	public Seller loginSeller(String selId, String selPw) {
		Connection conn = getConnection();
		Seller sel = new SellerDao().loginSeller(conn, selId, selPw);
		
		close(conn);
		
		return sel;
	}
}
