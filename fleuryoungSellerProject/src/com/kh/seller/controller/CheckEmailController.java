package com.kh.seller.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.kh.common.EncryptionUtils;
import com.kh.common.RanNumUtils;
import com.kh.common.SendService;
import com.kh.seller.model.service.EmailService;
import com.kh.seller.model.service.SellerService;
import com.kh.seller.model.vo.Seller;

/**
 * Servlet implementation class CheckEmailController
 */
@WebServlet("/idSelect.eml")
public class CheckEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PrintWriter = null;
      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클래스 이름은 EmailController지만 SellerController 같은곳에 메서드 안에 넣어서 사용 하세요

		String uri = request.getRequestURI(); 			// requestURL : @Webservlet("매핑 URL") 
		String ctxPath = request.getContextPath();		// 절대경로 : 디버깅 하거나 System.out.println 으로 찍어보세용
		String cmd = request.getParameter("chack");	// subString 으로 경로를 자른 후에 경로 만듬 e.g) localhost:8080/login/login.do --> login.do 로 subString으로 잘라서 만듬
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
		
        String user_email = request.getParameter("email");
        Seller sel = new SellerService().selectByEmail(user_email);
        
        // 이메일 인증 매핑
		if(cmd.equals("idSelect")) {
			// 수신 확인
			System.out.println("user_email : " + user_email);
			try {
				if(sel == null) {
					out.write("false");
				} else {
					//인증 번호 생성기
					String title = "아이디 찾기";
					String email = sel.getSelEmail(); 
					
					StringBuffer temp =new RanNumUtils().ranNum();
			        String AuthenticationKey = temp.toString();
			        System.out.println(AuthenticationKey);
					String ranNum =  new EmailService().sendEmail(request, response, title, user_email, AuthenticationKey); // 이메일을 조회 하는 로직 후에 MemberDTO형 dto 변수에 담는 객체
				    
					JSONObject jObj = new JSONObject();
				    jObj.put("email", email);
				    jObj.put("ranNum", ranNum);
				    jObj.put("userId", sel.getSelId());
				    response.setContentType("application/json; charset=utf-8");
				    response.getWriter().print(jObj);
				    
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		//이메일로 패스워드 찾기
		else if(cmd.equals("pwdSelect")) {
			// 수신 확인
			System.out.println("user_email : " + user_email);
			try {
				
				if(sel == null) {
					out.write("false");
				}else if(!(sel.getSelId().equals(new SellerService().selectById(user_email)))) {
					out.write("false");					
				}else {
					//인증 번호 생성기
					String title = "비밀번호 찾기";
					String email = sel.getSelEmail(); 
					
					StringBuffer temp =new RanNumUtils().ranNum();
			        String AuthenticationKey = temp.toString();
			        System.out.println(AuthenticationKey);
					String ranNum =  new EmailService().sendEmail(request, response, title, user_email, AuthenticationKey); // 이메일을 조회 하는 로직 후에 MemberDTO형 dto 변수에 담는 객체
				    
					JSONObject jObj = new JSONObject();
				    jObj.put("email", email);
				    jObj.put("ranNum", ranNum);
				    jObj.put("userId", sel.getSelId());
				    response.setContentType("application/json; charset=utf-8");
				    response.getWriter().print(jObj);
				    
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		} else if (cmd.equals("sendEmailProc.mem")) {
			System.out.println("test");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
