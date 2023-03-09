package com.admin.seller.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.seller.model.service.SellerService;

/**
 * Servlet implementation class SellerDeleteController
 */
@WebServlet("/deactivate.se")
public class SellerDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String selNo = request.getParameter("selNo");
		int result = new SellerService().deactivate(selNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "계정이 비활성화 되었습니다");
			response.sendRedirect(request.getContextPath()+"/list.se");
		}else {
			request.getSession().setAttribute("alertMsg", "비활성화 실패했습니다");
			response.sendRedirect(request.getContextPath()+"/list.se");
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
