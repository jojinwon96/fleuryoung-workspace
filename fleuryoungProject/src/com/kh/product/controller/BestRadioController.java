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
 * Servlet implementation class BestRadioController
 */
@WebServlet("/bestRadio.mi")
public class BestRadioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BestRadioController() {
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
		
		
		 
		 String amountName = request.getParameter("amountName");
		 int amountValue = Integer.parseInt(request.getParameter("amountValue"));
		 
		 System.out.println(amountName + "@@@@@@@@");
		 System.out.println(amountValue + "@@@@");
		 
		 if(amountName.equals("amount")) {
			 
			 
			 
			if(amountValue==0 || amountValue == 80001) {
				list = pService.selectPriceOver(amountValue);
			}else {
				list = pService.selectPriceLess(amountValue);
			}
			 
			
			System.out.println(amountValue);
			
			
		 }else {
			 list = pService.selectProductAll(); 
		 }
		 
		
		 request.setAttribute("list", list);
			
		 request.getRequestDispatcher("views/main/bestPage.jsp").forward(request, response);
			
		//response.sendRedirect(request.getContextPath() +"/bestRadio.mi");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
