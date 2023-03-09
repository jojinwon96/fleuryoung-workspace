package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Refund;
import com.kh.seller.model.vo.Seller;

/**
 * Servlet implementation class RefundFormController
 */
@WebServlet("/refundForm.re")
public class RefundFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		Seller sel = (Seller)request.getSession().getAttribute("loginSeller");
		
		ArrayList<Refund> list = new ProductService().refundList(no, sel.getSelNo());
		request.setAttribute("list",  list);
		if(no == 1) {
			request.setAttribute("menuNo", "4");
			request.getRequestDispatcher("views/sale/delete.jsp").forward(request, response);
		}else if(no ==2){
			request.setAttribute("menuNo", "5");
			request.getRequestDispatcher("views/sale/hanbul.jsp").forward(request, response);
			
		}else {
			request.setAttribute("menuNo", "6");
			request.getRequestDispatcher("views/sale/banpum.jsp").forward(request, response);
			
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
