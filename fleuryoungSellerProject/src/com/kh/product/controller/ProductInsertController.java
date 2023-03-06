package com.kh.product.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;
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
				String savePath = request.getSession().getServletContext().getRealPath("resources/img/seller_img/");
				MultipartRequest multipartRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",new MyFileRenamePolicy());
				
				ArrayList<OptionTwo> ot_2_list = new ArrayList<OptionTwo>();
						
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
				optionTitle = Arrays.stream(optionTitle).filter(item -> !item.equals("")).toArray(String[]::new);
				
				String[] optionStock1 = multipartRequest.getParameterValues("p2_1_stock");
				optionStock1 = Arrays.stream(optionStock1).filter(item -> !item.equals("")).toArray(String[]::new);
				
				String[] optionStock2 = multipartRequest.getParameterValues("p2_2_stock");
				optionStock2 = Arrays.stream(optionStock2).filter(item -> !item.equals("")).toArray(String[]::new);
				
				String[] optionStock3 = multipartRequest.getParameterValues("p2_3_stock");
				optionStock3 = Arrays.stream(optionStock3).filter(item -> !item.equals("")).toArray(String[]::new);
				
				String[] optionName1 = multipartRequest.getParameterValues("p2_1_name");
				optionName1 = Arrays.stream(optionName1).filter(item -> !item.equals("")).toArray(String[]::new);
				String[] optionName2 = multipartRequest.getParameterValues("p2_2_name");
				optionName2 = Arrays.stream(optionName2).filter(item -> !item.equals("")).toArray(String[]::new);
				String[] optionName3 = multipartRequest.getParameterValues("p2_3_name");
				optionName3= Arrays.stream(optionName3).filter(item -> !item.equals("")).toArray(String[]::new);
				
				String[] optionPrice1 = multipartRequest.getParameterValues("p2_1_price");
				optionPrice1= Arrays.stream(optionPrice1).filter(item -> !item.equals("")).toArray(String[]::new);
				String[] optionPrice2 = multipartRequest.getParameterValues("p2_2_price");
				optionPrice2= Arrays.stream(optionPrice2).filter(item -> !item.equals("")).toArray(String[]::new);
				String[] optionPrice3 = multipartRequest.getParameterValues("p2_3_price");
				optionPrice3= Arrays.stream(optionPrice3).filter(item -> !item.equals("")).toArray(String[]::new);
				
				
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
				//상품 추가 구문
				int prResult = new ProductService().insertProduct(p);
				int opOneResult = 1;
				int opTwoResult = 1;
				//option 추가 구문
				if(optionTitle != null) {
					for(int i = 0; i < optionTitle.length;i++) {
						if(optionTitle[i] != null) {
							opOneResult *= new ProductService().insertOptionOne(optionTitle[i]);
							for(int j = 0; j < Arrays.stream(multipartRequest.getParameterValues("p2_"+(i+1)+"_name")).filter(item -> !item.equals("")).toArray(String[]::new).length;j++) {
									ot_2_list.add(new OptionTwo(
											  multipartRequest.getParameterValues("p2_"+(i+1)+"_name")[j]
											, Integer.parseInt(multipartRequest.getParameterValues("p2_"+(i+1)+"_price")[j])
											, Integer.parseInt(multipartRequest.getParameterValues("p2_"+(i+1)+"_stock")[j])
										));
							}
							opTwoResult *= new ProductService().insertOptionTwo(ot_2_list);
						}
					}
				}
				ArrayList<String> piList = new ArrayList<>();
				for (int i = 1; i <= 10; i++) {
					String key = "file" + i; 
					
					if (multipartRequest.getOriginalFileName(key) != null) {
						piList.add("resources/img/product/view/" + multipartRequest.getFilesystemName(key));
						
					}else{
						piList.add("");
					}// if end
				} // for end
				
				int piResult = new ProductService().insertProductImg(piList);
				
				
				int dResult = 1;
				if(multipartRequest.getParameter("discount").equals("")) {
					dResult = new ProductService().insertDiscount(
							Integer.parseInt((multipartRequest.getParameter("discount"))));
				}
				
				
		
				
				
				
				if(dResult*prResult*opTwoResult*opOneResult*piResult > 0) {
					// 성공
					new ProductService().transaction();
					request.getSession().setAttribute("alertMsg", "상품등록이 완료되었습니다.");					
					response.sendRedirect(request.getContextPath() + "/productList.pr");
				}else {
					// 실패
					request.getSession().setAttribute("alertMsg", "상품등록에 실패했습니다.!");
					response.sendRedirect(request.getContextPath() + "/productList.pr");
					
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
