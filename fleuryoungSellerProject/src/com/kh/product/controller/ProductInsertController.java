package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.OptionOne;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;
import com.kh.seller.model.service.SellerService;
import com.kh.seller.model.vo.Seller;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ProductInsertController
 */
@WebServlet("/insert.pr")
public class ProductInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		
		if(ServletFileUpload.isMultipartContent(request)) {
				
				int maxSize = 10 * 1024 * 1024;
				
				ArrayList<OptionOne> ot_1_list = new ArrayList<OptionOne>();
				ArrayList<OptionTwo> ot_2_list = new ArrayList<OptionTwo>();
				
				String savePath = request.getSession().getServletContext().getRealPath("resources/img/seller_img/");
				
				MultipartRequest multipartRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",new MyFileRenamePolicy());
				
				int categoryNo =  Integer.parseInt(multipartRequest.getParameter("categoryNo"));
				String pName = multipartRequest.getParameter("pName");
				int price = Integer.parseInt(multipartRequest.getParameter("price"));
				String preturn = multipartRequest.getParameter("return");
				String delivery = multipartRequest.getParameter("delivery");
				String card = multipartRequest.getParameter("card");
				String gifr = multipartRequest.getParameter("gift");
				//상품 생성
				Product p = new Product();
				//상품 객체에 값 세팅
				p.setCategoryNo(String.valueOf(categoryNo));
				p.setpName(pName);
				p.setNetPrice(price);
				p.setpDayDelivery(delivery);
				p.setpGift(gifr);
				p.setpReturn(preturn);
				p.setpTag(card);
				p.setSellerNo(((Seller) request.getSession().getAttribute("loginSeller")).getSelNo());
				
				// 옵션 가져오깅
				String[] optionTitle = multipartRequest.getParameterValues("optionTitle");
				
				String[] optionStock1 = multipartRequest.getParameterValues("p2_1_stock");
				String[] optionStock2 = multipartRequest.getParameterValues("p2_2_stock");
				String[] optionStock3 = multipartRequest.getParameterValues("p2_3_stock");
				System.out.println(optionStock1);
				
				String[] optionName1 = multipartRequest.getParameterValues("p2_1_name");
				String[] optionName2 = multipartRequest.getParameterValues("p2_2_name");
				String[] optionName3 = multipartRequest.getParameterValues("p2_3_name");
				
				String[] optionPrice1 = multipartRequest.getParameterValues("p2_1_price");
				String[] optionPrice2 = multipartRequest.getParameterValues("p2_2_price");
				String[] optionPrice3 = multipartRequest.getParameterValues("p2_3_price");
				
				
				// 옵션있을 시 옵션 재고량 총합이 총 재고량에 기입
				if(multipartRequest.getParameter("optionTitle") == null) {
					p.setStock(Integer.parseInt(multipartRequest.getParameter("pStock")));
				}else {
					int sum =0;
					if(optionStock1 != null) {
						for(int i = 0; i < optionStock1.length; i++) {
							sum += Integer.parseInt(optionStock1[i]);
						}
					}
					if(optionStock2 != null) {
						for(int i = 0; i < optionStock2.length; i++) {
							sum += Integer.parseInt(optionStock2[i]);
						}
					}
					if(optionStock3 != null) {
						for(int i = 0; i < optionStock3.length; i++) {
							sum += Integer.parseInt(optionStock3[i]);
						}
					}
					p.setStock(sum);
				}
				
				//상품 상세설명 값 세팅
				if(multipartRequest.getOriginalFileName("pDetailFile")!= null) {
					p.setDetail("resources/img/product/detail/"+ multipartRequest.getFilesystemName("pDetailFile"));
					System.out.println(p.getDetail());
				}else {
					request.getSession().setAttribute("alertMsg", "상품에 상세 설명이 없습니다!");
					response.sendRedirect(request.getContextPath() + "/productList.pr");
				}
				
				int prResult = new ProductService().insertProduct(p);
				int opOneResult = 0;
				int opTwoResult = 0;
				for(int i = 0; i < optionTitle.length;i++) {
					if(optionTitle[i] != null) {
						opOneResult *= new ProductService().insertOptionOne(optionTitle[i]);
						for(int j = 0; j< multipartRequest.getParameterValues("p2_"+i+"_name").length;j++) {
							ot_2_list.add(new OptionTwo(
									  multipartRequest.getParameterValues("p2_"+i+"_name")[j]
									, Integer.parseInt(multipartRequest.getParameterValues("p2_"+i+"_price")[j])
									, Integer.parseInt(multipartRequest.getParameterValues("p2_"+i+"_stock")[j])
									));
						}
						opTwoResult *= new ProductService().insertOptionTwo(ot_2_list);
					}
				}
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				if(result > 0) {
					// 성공
					
					request.getSession().setAttribute("alertMsg", "수정 완료");
					request.getSession().removeAttribute("loginSeller");
					
					Seller loginSeller = new SellerService().selectSeller(selNo);
					request.getSession().setAttribute("loginSeller", loginSeller);
					
					
					response.sendRedirect(request.getContextPath() + "/myPageForm.se");
					
				}else {
					// 실패
					request.getSession().setAttribute("alertMsg", "판매자 정보수정에 실패했습니다.!");
					response.sendRedirect(request.getContextPath() + "/myPageForm.se");
					
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
