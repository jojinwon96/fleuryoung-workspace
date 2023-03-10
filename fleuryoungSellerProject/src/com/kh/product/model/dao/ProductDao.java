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
import com.kh.product.model.vo.OptionOne;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.Refund;
import com.kh.product.model.vo.Review;
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
									,rset.getInt("P_ID")
									,rset.getString("P_NAME")
									,rset.getInt("P_NETPRICE")
									,rset.getInt("P_STOCK")
									,rset.getString("P_ENROLL_DATE")
									,rset.getString("P_RETURN_YN")
									,rset.getInt("P_SALES")
									,rset.getString("P_DAY_DELIVERY")
									,rset.getString("P_GIFT")
									,rset.getString("CATEGORY_NAME")
									,rset.getInt("DISCOUNT_RATE")				
						));
										
				
				
				
				
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
			pstmt.setString(6,p.getpDayDelivery());
			pstmt.setString(7,p.getpGift());
			pstmt.setInt(8, p.getSellerNo());
			pstmt.setInt(9, Integer.parseInt(p.getCategoryNo()));
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
	
	public Product selectProduct(Connection conn, int pno) {
		Product p = new Product();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				p = new Product(rset.getInt("P_ID")
									, rset.getString("P_NAME")
									, rset.getInt("P_NETPRICE")
									, rset.getString("P_DETAIL")
									, rset.getInt("P_STOCK")
									, rset.getString("P_ENROLL_DATE")
									, rset.getString("P_RETURN_YN")
									, rset.getString("P_TAG_YN")
									, rset.getInt("P_SALES")
									, rset.getString("P_DAY_DELIVERY")
									, rset.getString("P_GIFT")
									, rset.getInt("SEL_NO")
									, rset.getInt("optionOne")
									, rset.getString("CATEGORY_NO")
									, rset.getString("P_IMG1")
									, rset.getString("P_IMG2")
									, rset.getString("P_IMG3")
									, rset.getString("P_IMG4")
									, rset.getString("P_IMG5")
									, rset.getString("P_IMG6")
									, rset.getString("P_IMG7")
									, rset.getString("P_IMG8")
									, rset.getString("P_IMG9")
									, rset.getString("P_IMG10")
									, rset.getInt("DISCOUNT_RATE"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return p;
	}
	
	public ArrayList<OptionOne> selectOptionOne(Connection conn, int pno) {
		ArrayList<OptionOne> list = new ArrayList<OptionOne>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectOptionOne");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new OptionOne(rset.getInt("OPTION_1ND_NO")
									 , rset.getString("OPTION_TITLE")
									 , rset.getInt("P_ID")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	public ArrayList<OptionTwo> selectOptionTwo(Connection conn, int[] pno) {
		ArrayList<OptionTwo> list = new ArrayList<OptionTwo>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectOptionTwo");
		
		try {
			for(int i = 0; i < pno.length; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pno[i]);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new OptionTwo(rset.getInt("OPTION_1ND_NO")
							, rset.getString("OPTION_TITLE")
							, rset.getInt("P_ID")
							, rset.getInt("OPTION_1ND_NO")
							, rset.getInt("OPTION_1ND_NO")));
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
	public int selectDiscount(Connection conn ,int pno) {
		int result= 0;
		ArrayList<OptionTwo> list = new ArrayList<OptionTwo>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectDiscount");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pno);
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					result = rset.getInt("DISCOUNT_RATE");
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	public int deleteProduct(Connection conn ,int pno) {
		int result= 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteProduct");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pno);
				result = pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	public ArrayList<Review> selectReviewList(Connection conn, int selNo){
		ArrayList<Review> list = new ArrayList<Review>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectReviewList");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, selNo);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Review(rset.getInt("REVIEW_ID")
										, rset.getInt("P_ID")
										, rset.getInt("REVIEW_RATING")
										, rset.getString("REVIEW_DETAIL")
										, rset.getString("REVIEW_IMG")
										, rset.getString("REVIEW_REPLY")
										, rset.getString("REVIEW_ADD_DATE")
										, rset.getInt("MEM_ID")
							));
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public ArrayList<Refund> refundList(Connection conn, int no, int selNo){
		ArrayList<Refund> list = new ArrayList<Refund>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("refundList");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, selNo);
				pstmt.setInt(2, no);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Refund(rset.getInt("OD_ID")
										, rset.getInt("REFUND_TYPE")
										, rset.getString("REFUND_TITLE")
										, rset.getString("REFUND_COMMENT")
										, rset.getString("REFUND_IMG")
										, rset.getInt("REFUND_APPROVAL_STATUS")
										, rset.getInt("REFUND_STATUS")
										, rset.getString("P_NAME")
							));
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int updateRefund(Connection conn ,int odId) {
		int result= 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateRefund");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, odId);
				result = pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	public int suRefund(Connection conn ,int odId) {
		int result= 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("suRefund");
		
		try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, odId);
				result = pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
}
	

