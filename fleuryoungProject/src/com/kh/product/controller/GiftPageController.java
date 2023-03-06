package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class GiftPageController
 */
@WebServlet("/gift.gi")
public class GiftPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GiftPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
request.setCharacterEncoding("utf-8");
		
		
		ArrayList<Product> list;
		
		ProductService pService = new ProductService();
		
		String giftName = request.getParameter("giftName");
		

		 if (giftName != null) {
		   
		    	list = pService.selectGiftType(giftName);
		    	
		    } else  {
		      // 값이 전달되지 않은 경우 처리할 내용
		    	list = pService.selectGiftAll();
		    }
		

			request.setAttribute("list", list);
			request.getRequestDispatcher("views/type/giftPage.jsp").forward(request, response);
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
