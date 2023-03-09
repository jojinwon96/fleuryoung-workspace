package com.admin.qna.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.qna.model.service.QnAService;
import com.admin.qna.model.vo.QnA;

/**
 * Servlet implementation class UpdateQnAController
 */
@WebServlet("/update.qn")
public class UpdateQnAController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQnAController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String qnaNumber = request.getParameter("no");
		String qnaTitle = request.getParameter("title");
		String qnaType = request.getParameter("category");
		String qnaDetail = request.getParameter("content");
		
		QnA q = new QnA();
		q.setQnaTitle(qnaTitle);
		q.setQnaType(qnaType);
		q.setQnaDetail(qnaDetail);
		q.setQnaNumber(Integer.parseInt(qnaNumber));

		int result = new QnAService().update(q);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "QnA 수정 성공");
			response.sendRedirect(request.getContextPath()+"/list.qa");
		}else {
			request.getSession().setAttribute("alertMsg", "QnA 수정 실패");
			response.sendRedirect(request.getContextPath()+"/list.qa");
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
