package com.admin.report.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.report.model.service.ReportService;

/**
 * Servlet implementation class ReportSolveController
 */
@WebServlet("/solve.re")
public class ReportSolveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportSolveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String repNumber = request.getParameter("no");

		int result = new ReportService().solve(Integer.parseInt(repNumber));
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "해결완료 표시 성공");
			response.sendRedirect(request.getContextPath()+"/list.re");
		}else {
			request.getSession().setAttribute("alertMsg", "해결완료 표시 실패");
			response.sendRedirect(request.getContextPath()+"/list.re");
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
