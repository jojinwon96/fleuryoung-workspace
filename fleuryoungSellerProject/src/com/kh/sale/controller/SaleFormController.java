package com.kh.sale.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;
import com.kh.seller.model.vo.Seller;

/**
 * Servlet implementation class SaleFormController
 */
@WebServlet("/SaleFormController")
public class SaleFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("menuNo", "2");
		Seller sel = (Seller)(request.getSession().getAttribute("loginSeller"));
		int selNo = sel.getSelNo();
//		if(request.getSession().getAttribute("list") != null) {
//			request.getSession().removeAttribute("list");
//		}
		ArrayList<Product> list = new ProductService().selectProductList(selNo);
		
		request.setAttribute("list",  list);
		request.getRequestDispatcher("views/product/productList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}