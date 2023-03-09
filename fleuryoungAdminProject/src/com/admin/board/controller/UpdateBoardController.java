package com.admin.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.board.model.service.BoardService;
import com.admin.board.model.vo.Board;

/**
 * Servlet implementation class UpdateBoardController
 */
@WebServlet("/update.bo")
public class UpdateBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String boardNumber = request.getParameter("no");
		String boardTitle = request.getParameter("title");
		String boardDetail = request.getParameter("content");
		
		Board b = new Board();
		b.setBoardTitle(boardTitle);
		b.setBoardDetail(boardDetail);
		b.setBoardNumber(Integer.parseInt(boardNumber));
		
		int result = new BoardService().update(b);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "공지 수정 성공");
			response.sendRedirect(request.getContextPath()+"/list.bo");
		}else {
			request.getSession().setAttribute("alertMsg", "공지 수정 실패");
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
