package com.admin.qna.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.qna.model.service.QnAService;

/**
 * Servlet implementation class DeleteQnAController
 */
@WebServlet("/delete.qn")
public class DeleteQnAController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteQnAController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
				
		String qnaNumber = request.getParameter("no");

		int result = new QnAService().delete(Integer.parseInt(qnaNumber));
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "QnA 삭제 성공");
			response.sendRedirect(request.getContextPath()+"/list.qn");
		}else {
			request.getSession().setAttribute("alertMsg", "QnA 삭제 실패");
			response.sendRedirect(request.getContextPath()+"/list.qn");
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
