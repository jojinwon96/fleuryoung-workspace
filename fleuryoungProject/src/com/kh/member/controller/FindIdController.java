package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class FindIdController
 */
@WebServlet("/findId.me")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
			String userName = request.getParameter("member_name");
			String userEmail = request.getParameter("member_email");
			System.out.println(userName);
			Member idFind = new MemberService().findId(userName, userEmail);
			
			if (idFind == null) {
				System.out.println("결과도 안나옴");
				request.setAttribute("alertMsg", "이름과 이메일을 다시 확인해주세요.");
				
				RequestDispatcher view = request.getRequestDispatcher("/findIdPage.me");
				view.forward(request, response);
				
			} else {
				System.out.println("일단 결과는 나옴");
				HttpSession session = request.getSession();
				session.setAttribute("idFind", idFind);
				response.sendRedirect(request.getContextPath() + "/views/main/FindIdResult.jsp");
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
