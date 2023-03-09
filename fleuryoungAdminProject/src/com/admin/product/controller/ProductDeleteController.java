package com.admin.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.product.model.service.ProductService;

/**
 * Servlet implementation class ProductDeleteController
 */
@WebServlet("/delete.pr")
public class ProductDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pNumber = request.getParameter("no");

		int result = new ProductService().deleteProduct(Integer.parseInt(pNumber));
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "상품 삭제 성공");
			response.sendRedirect(request.getContextPath()+"/list.pr");
		}else {
			request.getSession().setAttribute("alertMsg", "상품 삭제 실패");
			response.sendRedirect(request.getContextPath()+"/list.pr");
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
