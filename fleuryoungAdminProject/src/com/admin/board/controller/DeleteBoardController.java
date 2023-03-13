package com.admin.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.board.model.service.BoardService;

/**
 * Servlet implementation class DeleteBoardController
 */
@WebServlet("/delete.bo")
public class DeleteBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String boardNumber = request.getParameter("no");

		int result = new BoardService().delete(Integer.parseInt(boardNumber));
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "공지 삭제 성공");
			response.sendRedirect(request.getContextPath()+"/list.bo");
		}else {
			request.getSession().setAttribute("alertMsg", "공지 삭제 실패");
			response.sendRedirect(request.getContextPath()+"/list.bo");
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
