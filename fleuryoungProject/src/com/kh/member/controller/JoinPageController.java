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
				int gender  = Integer.parseInt(request.getParameter("gender"));
				
				/*
				 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				 Date memBirthDate;
				
				try {
					memBirthDate = (Date) format.parse(request.getParameter("memBirthDate"));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				*/
				
				
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
				
				
				
				
				
				
				//3) 요청처리(db에 sql문 실행) => 서비스 메소드 호출 및 결과받기
				int result = new MemberService().insertMember(m);
				
				//4) 처리결과를 가지고 사용자가 보게 될 응답 뷰 지정 후 포워딩 or url 재요청
				if(result>0) {
					// 세션활용
					HttpSession session = request.getSession();
					session.setAttribute("alertMsg", "성공적으로 회원가입이 되었습니다");
					
					//성공 => index 페이지 => /jsp url 재요청 방식!
					response.sendRedirect(request.getContextPath());
					
				}else {
					//실패 => 에러문구가 보여지는 에러페이지
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
