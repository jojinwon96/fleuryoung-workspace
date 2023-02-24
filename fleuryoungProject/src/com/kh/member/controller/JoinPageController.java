package com.kh.member.controller;

import java.io.IOException;
import java.sql.Date;
<<<<<<< HEAD
import java.text.DateFormat;
=======
>>>>>>> 025564b9a6e42ab398fd70c4e64518ef931321ab
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
@WebServlet("/join.me")
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
				
				
				String memId = request.getParameter("memId"); 
				String memPw = request.getParameter("memPw"); 
				String memName = request.getParameter("memName"); 
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				int postal = Integer.parseInt(request.getParameter("postal"));
				String street = request.getParameter("street");
				String address = request.getParameter("address");
<<<<<<< HEAD
				int gender  = Integer.parseInt(request.getParameter("gender"));
=======
				int gender =Integer.parseInt(request.getParameter("gender"));
>>>>>>> 025564b9a6e42ab398fd70c4e64518ef931321ab
				
				/*
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;
				
<<<<<<< HEAD
=======
				//Date memBirthdate = request.getParameter("memBirthDate");
				
				String memBirthdate = request.getParameter("memBirthDate");
				
				/*
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;
>>>>>>> 025564b9a6e42ab398fd70c4e64518ef931321ab
				try {
					memBirthDate = (Date) format.parse(request.getParameter("memBirthDate"));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
<<<<<<< HEAD
				*/
=======
				 */
				 
				
>>>>>>> 025564b9a6e42ab398fd70c4e64518ef931321ab
				
				
				String memBirthDate = request.getParameter("memBirthDate");
				
				
				
				//Date memBirthdate = request.getParameter("memBirthDate");
				
				Member m = new 	Member(memId, memPw, email , memName,  phone, postal,
						street, address, memBirthDate, gender  );
				
				
				
				
				
				
				//sql로 import? util로 import?
				/*
				String dateString = request.getParameter("memBirthDate");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM//dd");
				Date memBirthdate = (Date) sdf.parse(dateString);
				*/
				
				
				
				/*		
				int memGender = Integer.parseInt(request.getParameter("memGender"));
				*/
				
				
<<<<<<< HEAD
				
=======
				Member m = new 	Member(memId, memPw, email , memName,  phone, postal,
										street, address, memBirthdate, gender  );
>>>>>>> 025564b9a6e42ab398fd70c4e64518ef931321ab
				
				
				
				int result = new MemberService().insertMember(m);
				
				if(result>0) {
					HttpSession session = request.getSession();
					session.setAttribute("alertMsg", "성공적으로 회원가입이 되었습니다");
					
					response.sendRedirect(request.getContextPath());
					
				}else {
					request.setAttribute("errorMsg", "회원가입에 실패했습니다.");
					RequestDispatcher view = request.getRequestDispatcher("/views/common/errorPage.jsp");
					view.forward(request, response);
				}
				
				
				RequestDispatcher view = request.getRequestDispatcher("views/main/joinPage.jsp");
				view.forward(request, response);
				
				
			}
//		RequestDispatcher view = request.getRequestDispatcher("views/main/joinPage.jsp");
//		view.forward(request, response);
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
