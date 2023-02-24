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
 * Servlet implementation class joinController
 */
@WebServlet("/insert.me")
public class joinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId"); 
		String memPw = request.getParameter("memPw"); 
		String memName = request.getParameter("memName"); 
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int postal = Integer.parseInt(request.getParameter("postal"));
		String street = request.getParameter("street");
		String address = request.getParameter("address");
		int gender =Integer.parseInt(request.getParameter("gender"));
		
		
		
		String memBirthdate = request.getParameter("memBirthDate");
		
		
		
		Member m = new 	Member(memId, memPw, email , memName,  phone, postal,
								street, address, memBirthdate, gender  );
		
		
		
		int result = new MemberService().insertMember(m);
		
		if(result>0) {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 회원가입이 되었습니다");
			
			response.sendRedirect(request.getContextPath());
			
			
			RequestDispatcher view = request.getRequestDispatcher("/views/common/mainPage.jsp");
			
		}else {
			request.setAttribute("alertMsg", "회원가입에 실패했습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/views/common/joinPage.jsp");
			view.forward(request, response);
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
