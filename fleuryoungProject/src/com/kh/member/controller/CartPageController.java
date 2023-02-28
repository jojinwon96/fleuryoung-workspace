package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.CartService;
import com.kh.product.model.vo.Cart;

/**
 * Servlet implementation class CartPageController
 */
@WebServlet("/cartpage.me")
public class CartPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartPageController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String memId = request.getParameter("memId");

		// 상점이름, 상품명, 대표이미지, 옵션1, 옵션1이름, 옵션2, 옵션2이름, 옵션2가격, 옵션2수량, 옵션x수량
		// ArrayList<Cart> list = new ArrayList<Cart>();

		ArrayList<Cart> list = null;
		String[] optArr = null;
		if (!memId.equals("")) {
			list = new CartService().selectCart(memId); // 2번 옵션 이름은 없음

			String opts = "";
			// 2번 옵션 이름 받아오기
			for (int i = 0; i < list.size(); i++) {
				if (i == list.size() - 1) {
					opts += list.get(i).getOpt2ndNo();
				} else {
					opts += list.get(i).getOpt2ndNo() + ",";
				}
			}
			optArr = opts.split(",");
			
		}

		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("views/main/cartPage.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
