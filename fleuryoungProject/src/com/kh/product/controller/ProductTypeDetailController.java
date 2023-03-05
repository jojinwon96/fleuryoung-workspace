package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Category;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ProductTypeDetailController
 */
@WebServlet("/typeDetailPage.mi")
public class ProductTypeDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductTypeDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
String pCategory = request.getParameter("category");
	
		
		ArrayList<Category> categoryList;
		
		
		ProductService pService = new ProductService();
		
		categoryList = pService.selectCategory();
		
		ArrayList<Product> list = pService.selectProductType(pCategory);
		
		

		
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/type/productType.jsp").forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
