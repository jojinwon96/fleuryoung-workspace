package com.admin.banner.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.banner.model.service.BannerService;
import com.admin.member.model.service.MemberService;

/**
 * Servlet implementation class BannerDeleteController
 */
@WebServlet("/delete.ba")
public class BannerDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BannerDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String banId = request.getParameter("id");
		int result = new BannerService().delete(banId);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "베너삭제 되었습니다");
			response.sendRedirect(request.getContextPath()+"/list.ba");
		}else {
			request.getSession().setAttribute("alertMsg", "배너삭제 실패했습니다");
			response.sendRedirect(request.getContextPath()+"/list.ba");
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
