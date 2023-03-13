package com.admin.inquiry.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.inquiry.model.service.InquiryService;

/**
 * Servlet implementation class InquirySolveController
 */
@WebServlet("/solve.in")
public class InquirySolveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquirySolveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String inqNumber = request.getParameter("no");

		int result = new InquiryService().solve(Integer.parseInt(inqNumber));
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "해결완료 표시 성공");
			response.sendRedirect(request.getContextPath()+"/list.in");
		}else {
			request.getSession().setAttribute("alertMsg", "해결완료 표시 실패");
			response.sendRedirect(request.getContextPath()+"/list.in");
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
