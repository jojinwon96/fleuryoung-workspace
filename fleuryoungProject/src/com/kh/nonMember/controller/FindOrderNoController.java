package com.kh.nonMember.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.nonMember.model.service.NonMemberService;
import com.kh.nonMember.model.vo.NonMemberOrder;

/**
 * Servlet implementation class FindOrderNoController
 */
@WebServlet("/FindOrderNo.me")
public class FindOrderNoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrderNoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String receiverName = request.getParameter("receiverName");
		String receiverPhone = request.getParameter("receiverPhone");
		System.out.println(receiverName);
		System.out.println(receiverPhone);
		
		NonMemberOrder findOrderNo = new NonMemberService().findOrderNo(receiverName, receiverPhone );
		
		//System.out.println("ORD_ID ;" + findOrderNo.getOrd_id());
		
		if(findOrderNo.getOrd_id() != 0) {
			/*
			if (receiverName != null && receiverPhone != null) {
				  response.setContentType("text/html; charset=UTF-8");

		            PrintWriter out = response.getWriter();

		            out.println("<script>alert('존재하지 않는 주문정보입니다. 다시 입력해 주세요.'); history.go(-1); </script>"); 

		            out.flush(); 
			}
			*/
		
			
		}else {
			System.out.println("컨트롤러 도달");
			HttpSession session = request.getSession();
			session.setAttribute("findOrderNo", findOrderNo);
			response.sendRedirect(request.getContextPath() + "/views/main/FindOrderNoResult.jsp");
			
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
