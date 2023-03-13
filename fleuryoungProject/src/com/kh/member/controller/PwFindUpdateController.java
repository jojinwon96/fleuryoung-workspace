package com.kh.member.controller;


import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class PwFindUpdateController
 */
@WebServlet("/PwFindUpdateController")
public class PwFindUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwFindUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession(); //세션을 가져옴
		
		String password1 = request.getParameter("password1");
		String member_id = (String) session.getAttribute("member_id");
		System.out.println(password1);
		System.out.println(member_id);
		
		Member m = new Member(password1, member_id );
		
		Member updatePwd = new MemberService().updatePwd(password1, member_id);
		
		if(updatePwd == null) { 
			
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('비밀번호 수정에 실패했습니다. 다시 입력해 주세요.'); history.go(-1); </script>"); 
            out.flush(); 
			
		}else { 
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('비밀번호 수정에 성공하였습니다. 로그인하고 많은 혜택 누리세요!'); location.href='"+"http://localhost:8087/fleuryoungProject/loginpage.me"+"';</script>"); 
			writer.close();
			
			/*
            HttpSession session1 = request.getSession();
			session1.setAttribute("updatePwd", updatePwd);
			response.sendRedirect(request.getContextPath() + "/views/main/loginPage.jsp");
			*/
			
			
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