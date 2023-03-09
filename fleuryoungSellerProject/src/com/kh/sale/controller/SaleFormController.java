package com.kh.sale.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.sale.model.service.SaleService;
import com.kh.sale.model.vo.Sale;
import com.kh.seller.model.vo.Seller;

/**
 * Servlet implementation class SaleFormController
 */
@WebServlet("/invoice.in")
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
		request.setAttribute("menuNo", "3");
		int sno = Integer.parseInt(request.getParameter("sno"));
		ArrayList<Sale> list = new SaleService().selectPayment(sno);
		System.out.println(list);
		request.setAttribute("list",  list);
		request.getRequestDispatcher("views/sale/invoiceList.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
