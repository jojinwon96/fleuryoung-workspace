package com.kh.seller.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.seller.model.dao.SellerDao;
import com.kh.seller.model.vo.Seller;

public class SellerService {

	public ArrayList<Seller> wishStoreList(String memId) {
		Connection conn = getConnection();

		ArrayList<Seller> list = new SellerDao().wishStoreList(conn, memId);

		close(conn);

		return list;
	}

}
