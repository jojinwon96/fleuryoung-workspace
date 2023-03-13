package com.admin.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.user.model.service.UserService;
import com.admin.user.model.vo.User;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.se")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.setCharacterEncoding("UTF-8");
		String uId = request.getParameter("uId");
		String uPw = request.getParameter("uPw");
		
		User loginUser = new UserService().loginUser(uId, uPw);
		
		HttpSession session = request.getSession();			
		
		if(loginUser == null) {
			session.setAttribute("alertMsg", "비밀번호 또는 아이디가 잘못입력 되었습니다.");
			response.sendRedirect(request.getContextPath());
		} else {
			session.setAttribute("alertMsg", "로그인에 성공하였습니다.");
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
