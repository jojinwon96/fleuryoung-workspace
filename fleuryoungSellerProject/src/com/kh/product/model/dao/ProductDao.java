package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.Category;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;
import com.kh.seller.model.dao.SellerDao;

public class ProductDao {

private Properties prop = new Properties();
	
	public ProductDao() {
		String filePath = SellerDao.class.getResource("/db/sql/product-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 상품리스트 조회
	 * @return
	 */
	public ArrayList<Product> selectProductList(Connection conn, int selNo){
		ArrayList<Product> list = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, selNo);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Product(rset.getString("P_PICTURE")
									,rset.getString("P_NAME")
									,rset.getInt("P_NETPRICE")
									,rset.getInt("P_STOCK")
									,rset.getString("P_ENROLL_DATE")
									,rset.getInt("P_SALES")
									,rset.getString("CATEGORY_NAME")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	
	/**
	 * 카테고리 리스트 조회
	 * @return
	 */
	public ArrayList<Category> selectCategoryList(Connection conn){
		ArrayList<Category> list = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Category((rset.getInt("CATEGORY_NO"))
									, rset.getString("CATEGORY_DETAIL")
									, rset.getString("CATEGORY_NAME")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	public int insertProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProduct");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getpName());
			pstmt.setInt(2, p.getNetPrice());
			pstmt.setString(3, p.getDetail());
			pstmt.setInt(4, p.getStock());
			pstmt.setString(5, p.getpReturn());
			pstmt.setString(6, p.getpTag());
			pstmt.setString(7,p.getpDayDelivery());
			pstmt.setString(8,p.getpGift());
			pstmt.setInt(9, p.getSellerNo());
			pstmt.setInt(10, Integer.parseInt(p.getCategoryNo()));
			result = pstmt.executeUpdate();
			
			System.out.println(result+"!!!");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertOptionOne(Connection conn, String title) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertOptionOne");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertOptionTwo(Connection conn, ArrayList<OptionTwo> list) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOptionTwo");
		
		
		try {
			
			for(OptionTwo option: list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString (1, option.getOptionContent());
				pstmt.setInt (2, option.getOptionPrice());
				pstmt.setInt (3, option.getOptionStock());
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertProductImg(Connection conn, ArrayList<String> list) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProductImg");
		
		try {
			System.out.println(list);
			pstmt = conn.prepareStatement(sql);
			for(int i =0; i < list.size();i++) {
				pstmt.setString(i+1, list.get(i));
			}
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertDiscount(Connection conn, int dc) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertDiscount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dc);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
	}
}
