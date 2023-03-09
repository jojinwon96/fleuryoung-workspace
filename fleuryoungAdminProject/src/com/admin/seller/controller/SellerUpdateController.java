package com.admin.seller.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.admin.common.MyFileRenamePolicy;
import com.admin.seller.model.service.SellerService;
import com.admin.seller.model.vo.Seller;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class SellerUpdateController
 */
@WebServlet("/update.se")
public class SellerUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10*1024*1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/image/profile/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Seller s = new Seller();
			s.setSelNo(Integer.parseInt(multiRequest.getParameter("selNo")));
			s.setSelId(multiRequest.getParameter("selId"));
			s.setSelPw(multiRequest.getParameter("selPw"));
			s.setSelBusinessNo(multiRequest.getParameter("businessNo"));
			s.setSelStoreName(multiRequest.getParameter("storeName"));
			s.setSelName(multiRequest.getParameter("name"));
			s.setSelEmail(multiRequest.getParameter("email"));
			s.setSelPhone(multiRequest.getParameter("phone"));
			s.setSelTel(multiRequest.getParameter("tel"));
			s.setSelFax(multiRequest.getParameter("fax"));
			s.setSelPostal(Integer.parseInt(multiRequest.getParameter("postal")));
			s.setSelStreet(multiRequest.getParameter("street"));
			s.setSelAddress(multiRequest.getParameter("address"));
			
			if(multiRequest.getOriginalFileName("file") != null) {
				s.setSelImg("/resources/image/profile/" + multiRequest.getFilesystemName("file"));
				int result = new SellerService().update(s);
				
				if(result > 0) {
					request.getSession().setAttribute("alertMsg", "계정이 수정 되었습니다");
					response.sendRedirect(request.getContextPath()+"/list.se");
				}else {
					request.getSession().setAttribute("alertMsg", "계정 수정 실패했습니다");
					response.sendRedirect(request.getContextPath()+"/list.se");
				}
			}else {
				int result = new SellerService().updateNoImg(s);
				
				if(result > 0) {
					request.getSession().setAttribute("alertMsg", "계정이 수정 되었습니다");
					response.sendRedirect(request.getContextPath()+"/list.se");
				}else {
					request.getSession().setAttribute("alertMsg", "계정 수정 실패했습니다");
					response.sendRedirect(request.getContextPath()+"/list.se");
				}
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
