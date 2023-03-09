package com.kh.product.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;

/**
 * Servlet implementation class RefundController
 */
@WebServlet("/refund.re")
public class RefundController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int odId = Integer.parseInt(request.getParameter("odId"));
		int num = Integer.parseInt(request.getParameter("num"));
		PrintWriter out = response.getWriter();
		int result = 0;
		if(num == 1 || num == 3 || num == 5) {
			result = new ProductService().updateRefund(odId);
			if(result > 0) {
				out.write("승인거절");
			}else {		
				out.write("false");
			}

		} else if(num == 2 || num == 4 || num == 6) {
			result = new ProductService().suRefund(odId);
			if(result > 0) {
				out.write("승인완료");
			}else {
				out.write("false");
			}
		}else {
			out.write("false");			
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
