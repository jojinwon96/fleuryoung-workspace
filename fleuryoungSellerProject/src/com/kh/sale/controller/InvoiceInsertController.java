package com.kh.sale.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.sale.model.service.SaleService;

/**
 * Servlet implementation class InvoiceInsertController
 */
@WebServlet("/invoiceInsert.in")
public class InvoiceInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InvoiceInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pay = Integer.parseInt(request.getParameter("payId"));
		int od = Integer.parseInt(request.getParameter("odId"));
		PrintWriter out = response.getWriter();
		
		int result = new SaleService().invoiceInsert(pay, od);
		if(result > 0) {
			out.write("1");
		} else {
			
			out.write("0");
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
