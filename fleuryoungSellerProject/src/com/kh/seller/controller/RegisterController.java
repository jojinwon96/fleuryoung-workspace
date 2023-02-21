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
 * Servlet implementation class RegisterController
 */
@WebServlet("/register.se")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	

		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("resources/img/seller_img/");
			
			MultipartRequest multipartRequest = new MultipartRequest(request, savePath, maxSize, "utf-8",new MyFileRenamePolicy());
			
			String selId = multipartRequest.getParameter("selId");
			String selPw = multipartRequest.getParameter("selPw");
			String selBusinessNo = multipartRequest.getParameter("selBusinessNo");
			String storeName = multipartRequest.getParameter("storeName");
			String selName = multipartRequest.getParameter("selName");
			String email = multipartRequest.getParameter("email");
			String phone = multipartRequest.getParameter("phone");
			String tel = multipartRequest.getParameter("tel");
			String fax = multipartRequest.getParameter("fax");
			int poster = Integer.parseInt(multipartRequest.getParameter("poster"));
			String street = multipartRequest.getParameter("street");
			String address = multipartRequest.getParameter("address");
			
			Seller sel = new Seller();
			
			sel.setSelId(selId);
			sel.setSelPw(selPw);
			sel.setSelBusinessNo(selBusinessNo);
			sel.setSelStoreName(storeName);
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
			
			
			
			int result = new SellerService().insertSeller(sel);
			
			if(result > 0) {
				// 성공 /jps/list.bo?cpage=1
				request.getSession().setAttribute("alertMsg", "회원가입에 성공하였습니다.");
				response.sendRedirect(request.getContextPath() + "/login.se");
				
			}else {
				// 실패
				request.setAttribute("errorMsg", "일반시판 등록 실패!");
				response.sendRedirect(request.getContextPath() + "//registerForm.se");
				
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
