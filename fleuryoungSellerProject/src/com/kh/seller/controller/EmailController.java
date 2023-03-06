package com.kh.seller.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.EncryptionUtils;
import com.kh.common.RanNumUtils;
import com.kh.common.SendService;
import com.kh.seller.model.service.SellerService;
import com.kh.seller.model.vo.Seller;

/**
 * Servlet implementation class EmailController
 */

@WebServlet("/email.se")
public class EmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PrintWriter = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클래스 이름은 EmailController지만 SellerController 같은곳에 메서드 안에 넣어서 사용 하세요

		String uri = request.getRequestURI(); 			// requestURL : @Webservlet("매핑 URL") 
		String ctxPath = request.getContextPath();		// 절대경로 : 디버깅 하거나 System.out.println 으로 찍어보세용
		String cmd = request.getParameter("selname");	// 아이디찾기, 비밀번호찾기 식별자
		PrintWriter out = response.getWriter();			// 싱글톤 디자인 패터에 많이 쓰이는 함수 response(응답함수 자세한건 구글링 ㄱㄱ)

		System.out.println("전체uri : " + uri);			// uri 출력
		System.out.println("절대경로 : " + ctxPath);		// ctxPath 출력
		System.out.println("요청uri : " + cmd); 			// cmd 출력
		
		// 이메일로 패스워드 찾기
		if(cmd.equals("idSelect")) {
					// 수신 확인
					String user_email = request.getParameter("email");
					System.out.println("user_email : " + user_email);
					try { 									// DB확인 후 콜백(어떠한 함수 호출후에 다시 돌아 오는 것을 콜백 ex:Ajax)
						Seller sel = new SellerService().selectByEmail(user_email); // 이메일을 조회 하는 로직 후에 MemberDTO형 dto 변수에 담는 객체
						if(sel == null) { 		// email에 해당하는 회원 정보가 없음
							out.write("false");
						} else { 							// id반환 후, 추가 인증을 더 필요함
							out.write(sel.getSelEmail());
						}
					} catch(Exception e) {
						response.sendRedirect("/error.jsp"); // 에러 페이지 호출
						e.printStackTrace();
					}
				}
		//이메일로 패스워드 찾기
		else if(cmd.equals("pwdSelect")) {
			// 수신 확인
			String userId = request.getParameter("id");		// user_id 가져오기
			String userEmail = request.getParameter("email");	// user_email 가져오기
			System.out.println(userId + " : " + userEmail);	// 출력 (디버깅 가능 하시면 로그 출력 하지 말고 디버깅으로 찍어보세요)
			// 무작위 임시 패스워드 생성
			String tempPw = RanNumUtils.getTempPassword();  // RanNumUtils 클래스에 있는 무작위 번호 생성 e.g) 암호화 클래스, 랜덤 번호 클래스, 메일 보내는 클래스는 패키지를 하나 만들어서 import 해서 쓰세요. ex) kh.minsoo.com.util 패키지 생성후 클래스 생성해서 넣어서 사용
			// 이메일 발송 서비스 호출
			new SendService().sendEmail(userEmail, tempPw);	// MemberService 에 있는 메서드 호출
			// 패스워드 암호화
			tempPw = EncryptionUtils.getSHA512(tempPw);		// Password 암호화 EncryptionUtils 클래스에 getSHA512 메서드 호출
			try { 											// DB에 저장 & 홈이동 try/catch문으로 Exception(예외 설정 안해주면 에러 남)
				int rs = new SellerService().updatePw(userId, tempPw);		// 본인의 DAO에 맞게 dao.메서드이름(인자값 수정)
				if(rs > 0) { 								// int형이기 때문에 db 조회시 값이 있으면 1을 반환 없으면 0을 반환
					System.out.println("임시 패스워드 발송 완료");
					out.write("true");
				} else { 									// 등록 실패
					System.out.println("임시 패스워드 발송 실패");
					out.write("false");
				}
			} catch(Exception e) {
				response.sendRedirect("/error.jsp");		// 에러 페이지를 따로 만들어 놓으면 에러페이 호출 에러 페이지 없을시에 삭제
				e.printStackTrace();
				System.out.println(e);				// Exception 발생시 에러 로그 출력
			}
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
