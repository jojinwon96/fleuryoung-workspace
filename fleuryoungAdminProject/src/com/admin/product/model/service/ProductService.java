package com.admin.product.model.service;

import static com.admin.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.admin.product.model.dao.ProductDao;
import com.admin.product.model.vo.Product;
import com.admin.product.model.vo.ProductOption;
import com.admin.product.model.vo.Review;

public class ProductService {

	public ArrayList<Product> selectLatestProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectLatestProduct(conn);

		close(conn);

		return list;

	}

	public ArrayList<Product> selectSaleOrderProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectSaleOrderProduct(conn);

		close(conn);

		return list;
	}

	public ArrayList<Product> selectReviewOrderProduct() {

		Connection conn = getConnection();

		ArrayList<Product> list = new ProductDao().selectReviewOrderProduct(conn);

		close(conn);

		return list;
	}

	public Product selectProductDetail(int pid) {

		Connection conn = getConnection();

		Product p = new ProductDao().selectProductDetail(conn, pid);

		close(conn);

		return p;
	}

	public ArrayList<ProductOption> selectProductOption(int pid) {

		Connection conn = getConnection();

		ArrayList<ProductOption> optList = new ProductDao().selectProductOption(conn, pid);

		close(conn);

		return optList;
	}

	

	public ArrayList<Product> selectAllProduct() {
		Connection conn = getConnection();
		ArrayList<Product> pList = new ProductDao().selectAllProduct(conn);

		close(conn);
		return pList;
	}

	public ArrayList<Review> selectAllReview() {
		Connection conn = getConnection();
		ArrayList<Review> rList = new ProductDao().selectAllReview(conn);

		close(conn);
		return rList;
	}

}
