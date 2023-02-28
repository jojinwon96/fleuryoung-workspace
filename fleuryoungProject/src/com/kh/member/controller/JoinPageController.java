package com.kh.member.controller;

import java.io.IOException;
import java.sql.Date;

import java.text.DateFormat;

import java.text.ParseException;
import java.text.SimpleDateFormat;

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
 * Servlet implementation class JoinPageController
 */
@WebServlet("/insert.me")
public class JoinPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
				

			
				
				
				//RequestDispatcher view = request.getRequestDispatcher("views/main/joinPage.jsp");
				//view.forward(request, response);

				
				String memId = request.getParameter("memId"); 
				String memPw = request.getParameter("memPw"); 
				String memName = request.getParameter("memName"); 
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				int postal = Integer.parseInt(request.getParameter("postal"));
				String street = request.getParameter("street");
				String address = request.getParameter("address");
				int gender = Integer.parseInt(request.getParameter("gender"));
				System.out.println(gender);
				String memBirthDate = request.getParameter("memBirthDate");
				System.out.println(memBirthDate);

				Member m = new 	Member(memId, memPw, email , memName,  phone, postal, 
										street, address, memBirthDate, gender  );

				
				
				
				int result = new MemberService().insertMember(m);
				
				if(result>0) {
					HttpSession session = request.getSession();
					
					response.sendRedirect(request.getContextPath());
					
				}else {
					RequestDispatcher view = request.getRequestDispatcher("/views/main/joinPage.jsp");
					view.forward(request, response);
				}
				
				
				//RequestDispatcher view = request.getRequestDispatcher("views/main/joinPage.jsp");
				//view.forward(request, response);
				
				

			}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

/*
<<<<<<< HEAD
				//Date memBirthdate = request.getParameter("memBirthDate");
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;
=======
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;
				

				//Date memBirthdate = request.getParameter("memBirthDate");
				
				String memBirthdate = request.getParameter("memBirthDate");
				
				/*
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;

>>>>>>> 88f7c9c3eef32207cbe395f67c009176ae85be7a
				try {
					memBirthDate = (Date) format.parse(request.getParameter("memBirthDate"));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
<<<<<<< HEAD
 */

//sql로 import? util로 import?
/*
				String dateString = request.getParameter("memBirthDate");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM//dd");
				Date memBirthdate = (Date) sdf.parse(dateString);
 */

/*		
				int memGender = Integer.parseInt(request.getParameter("memGender"));
=======

>>>>>>> 88f7c9c3eef32207cbe395f67c009176ae85be7a
 */