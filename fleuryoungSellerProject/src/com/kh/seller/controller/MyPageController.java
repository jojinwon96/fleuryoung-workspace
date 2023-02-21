package com.kh.seller.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.seller.model.service.SellerService;
import com.kh.seller.model.vo.Seller;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MyPageController
 */
@WebServlet("/myPage.se")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageController() {
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
			
			int selNo = Integer.parseInt(multipartRequest.getParameter("selNo"));
			String selName = multipartRequest.getParameter("selName");
			String selBusinessNo = multipartRequest.getParameter("selBusinessNo");
			String storeName = multipartRequest.getParameter("storeName");
			String email = multipartRequest.getParameter("selEmail");
			String phone = multipartRequest.getParameter("selPhone");
			String tel = multipartRequest.getParameter("selTel");
			String fax = multipartRequest.getParameter("selFax");
			int poster = Integer.parseInt(multipartRequest.getParameter("selPoster"));
			String street = multipartRequest.getParameter("selStreet");
			String address = multipartRequest.getParameter("selAddress");
			
			Seller sel = new Seller();
			
			sel.setSelNo(selNo);
			sel.setSelStoreName(storeName);
			sel.setSelBusinessNo(selBusinessNo);
			sel.setSelName(selName);
			sel.setSelEmail(email);
			sel.setSelPhone(phone);
			sel.setSelTel(tel);
			sel.setSelFax(fax);
			sel.setSelPostal(poster);
			sel.setSelStreet(street);
			sel.setSelAddress(address);
			
			if(multipartRequest.getOriginalFileName("upfile")!= null) {
				sel.setSelImg("resources/img/seller_img/"+ multipartRequest.getFilesystemName("upfile"));
			} else {
				sel.setSelImg("resources/img/seller_img/userImg.png");				
			}

			int result = new SellerService().updateSeller(sel);
			
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
