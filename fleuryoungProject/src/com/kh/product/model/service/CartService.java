package com.kh.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.CartDao;
import com.kh.product.model.vo.Cart;

import static com.kh.common.JDBCTemplate.*;

public class CartService {

	public int insertMemberCart(Cart c) {
		Connection conn = getConnection();
		
		int result = new CartDao().insertMemberCart(conn, c);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	public Cart selectCheckCart(Cart cart) {
		
		Connection conn = getConnection();
		
		Cart newCart = new CartDao().selectCheckCart(conn, cart);
		
		close(conn);
		
		return newCart;
	}

	
	public int updateCart(Cart origincart, Cart addCart) {
		
		Connection conn = getConnection();
		
		int result = new CartDao().updateCart(conn, origincart, addCart);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	public ArrayList<Cart> selectCart(String memId) {
		
		Connection conn = getConnection();
		
		ArrayList<Cart> list = new CartDao().selectCart(conn, memId);
		
		close(conn);
		
		return list;
	}

	

}
