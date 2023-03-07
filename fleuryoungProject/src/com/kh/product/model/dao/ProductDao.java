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
import com.kh.product.model.vo.Inquiry;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductOption;
import com.kh.product.model.vo.Review;

public class ProductDao {

	private Properties prop = new Properties();

	public ProductDao() {
		try {

			String filePath = ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath();

			prop.loadFromXML(new FileInputStream(filePath));

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Product> selectLatestProduct(Connection conn) {

		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectLatestProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectSaleOrderProduct(Connection conn) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectSaleOrderProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectReviewOrderProduct(Connection conn) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectReviewOrderProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public Product selectProductDetail(Connection conn, int pid) {
		
		Product p = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				p = new Product(rs.getInt("P_ID")
						      , rs.getInt("SEL_NO")
						      , rs.getString("STORE_NAME")
						      , rs.getString("P_NAME")
						      , rs.getInt("P_STOCK")
						      , rs.getInt("REVIEW_RATING")
						      , rs.getInt("COUNT")
						      , rs.getString("P_NETPRICE")
						      , rs.getString("P_Day_Delivery")
						      , rs.getString("IMAGES"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return p;
	}

	public ArrayList<ProductOption> selectProductOption(Connection conn, int pid) {
		
		ArrayList<ProductOption> optList = new ArrayList<ProductOption>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductOption");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				optList.add(new ProductOption(rs.getInt("OPTION_1ND_NO")
					      , rs.getInt("OPTION_2ND_NO")
					      , rs.getString("OPTION_TITLE")
					      , rs.getString("OPTION_2ND_CONTENT")
					      , rs.getInt("OPTION_2ND_PRICE")
					      , rs.getInt("OPTION_2ND_STOCK")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return optList;
	}

	public ArrayList<Review> selectProductReview(Connection conn, int pid) {

		ArrayList<Review> reviewList = new ArrayList<Review>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				reviewList.add(new Review(rs.getInt("P_ID")
					      , rs.getInt("REVIEW_ID")
					      , rs.getInt("REVIEW_RATING")
					      , rs.getString("CONTENT")
					      , rs.getString("MEM_ID")
					      , rs.getString("DATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return reviewList;
	}

	public ArrayList<Inquiry> selectProductInquiry(Connection conn, int pid) {
		
		ArrayList<Inquiry> inquiryList = new ArrayList<Inquiry>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				inquiryList.add(new Inquiry(rs.getInt("P_ID")
						  , rs.getString("MEM_ID")
						  , rs.getString("MEM_NAME")
						  , rs.getInt("INQUIRY_ID")
					      , rs.getInt("INQUIRY_TYPE")
					      , rs.getString("INQUIRY_TITLE")
					      , rs.getString("INQUIRY_COMMENT")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return inquiryList;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public ArrayList<Category> selectCategory(Connection conn) {
		
		
		ArrayList<Category> categoryList = new ArrayList<Category>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		
		String sql = prop.getProperty("selectCategory");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				categoryList.add(new Category(
						
						
						rset.getInt("CATEGORY_NO")
						, rset.getString("CATEGORY_DETAIL")
						, rset.getString("CATEGORY_NAME")
						
						));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return categoryList;
	}

	public ArrayList<Product> selectProductType(Connection conn, int categoryNo) {
		
		
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductType");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, categoryNo);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
		
		
	
	}

	public ArrayList<Product> selectProductAll(Connection conn) {

		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectProductAll");

		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
		
	}

	public ArrayList<Product> selectPriceOver(Connection conn, int amountValue) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectPriceOver");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, amountValue);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectPriceLess(Connection conn, int amountValue) {
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectPriceLess");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, amountValue);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectDeliveryAll(Connection conn) {
		
		
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectDeliveryAll");

		try {
			pstmt = conn.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectDeliveryCategory(Connection conn, String categoryName) {
	
		
		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectDeliveryCategory");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, categoryName);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Product> selectGiftAll(Connection conn, int orderSelect) {
		
		String SQL = "";

		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		System.out.println("------------------------" + orderSelect + "--------------------------------");
		
		if(orderSelect==2) { // 판매순
			SQL = "selectGiftAllSale";
		}else if(orderSelect==3) { //  리뷰순
			SQL = "selectGiftAllReview";
		}else { // 최신순
			SQL = "selectGiftAllEnroll";
		}

		String sql = prop.getProperty(SQL);

		try {
			pstmt = conn.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
		

	}

	public ArrayList<Product> selectGiftType(Connection conn, String giftName) {


		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = prop.getProperty("selectGiftType");

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, giftName);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
		
	}

	public ArrayList<Product> selectGiftTypeOption(Connection conn, String giftName, int orderSelect) {
		
		String SQL = "";

		ArrayList<Product> list = new ArrayList<Product>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		if(orderSelect==2) { // 판매순
			SQL = "selectGiftSaleOption";
		}else if(orderSelect==3) { //  리뷰순
			SQL = "selectGiftReviewOption";
		}else { // 최신순
			SQL = "selectGiftEnrollOption";
		}

		String sql = prop.getProperty(SQL);

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, giftName);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt("P_ID"), rs.getString("P_NAME"), rs.getInt("REVIEW_RATING"),
						rs.getInt("COUNT"), rs.getString("P_NETPRICE"), rs.getString("P_IMG1"), rs.getString("P_DAY_DELIVERY")));
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}



}// productDao End














