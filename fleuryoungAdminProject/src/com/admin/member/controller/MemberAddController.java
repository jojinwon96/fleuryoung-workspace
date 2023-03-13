package com.admin.member.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.admin.common.MyFileRenamePolicy;
import com.admin.member.model.service.MemberService;
import com.admin.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MemberAddDao
 */
@WebServlet("/add.me")
public class MemberAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10*1024*1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/image/profile/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Member m = new Member();
			m.setMemId(multiRequest.getParameter("memId"));
			m.setMemPw(multiRequest.getParameter("memPw"));
			m.setMemName(multiRequest.getParameter("name"));
			m.setMemEmail(multiRequest.getParameter("email"));
			m.setMemPhone(multiRequest.getParameter("phone"));
			
			String tempDate=multiRequest.getParameter("memBirthDate");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			java.util.Date date;
			try {
				date = sdf.parse(tempDate);
				java.sql.Date bday = new java.sql.Date(date.getTime()); 
				m.setMemBirthDate(bday);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			m.setMemGender(Integer.parseInt(multiRequest.getParameter("gender")));
			m.setMemPostal(Integer.parseInt(multiRequest.getParameter("postal")));
			m.setMemStreet(multiRequest.getParameter("street"));
			m.setMemAddress(multiRequest.getParameter("address"));
			
			if(multiRequest.getOriginalFileName("file") != null) {
				m.setMemImg("/resources/image/profile/" + multiRequest.getFilesystemName("file"));
			}
			
			int result = new MemberService().add(m);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "계정이 추가되었습니다");
				response.sendRedirect(request.getContextPath()+"/list.me");
			}else {
				request.getSession().setAttribute("alertMsg", "계정 추가 실패했습니다");
				response.sendRedirect(request.getContextPath()+"/list.me");
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
