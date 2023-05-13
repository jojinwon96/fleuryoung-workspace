package com.admin.banner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.admin.banner.model.service.BannerService;
import com.admin.banner.model.vo.Banner;
import com.admin.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BannerAddController
 */
@WebServlet("/add.ba")
public class BannerAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BannerAddController() {
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
			String savePath = request.getSession().getServletContext().getRealPath("/resources/image/banner/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Banner b = new Banner();
			b.setBanName(multiRequest.getParameter("title"));
			b.setCouId(Integer.parseInt(multiRequest.getParameter("coupon")));
			b.setBanDetail(multiRequest.getParameter("spec"));
			
			if(multiRequest.getOriginalFileName("file") != null) {
				b.setBanAtt("/resources/image/banner/" + multiRequest.getFilesystemName("file"));
			}
			
			int result = new BannerService().add(b);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "배너 추가되었습니다");
				response.sendRedirect(request.getContextPath()+"/list.ba");
			}else {
				request.getSession().setAttribute("alertMsg", "배너 추가 실패했습니다");
				response.sendRedirect(request.getContextPath()+"/list.ba");
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
