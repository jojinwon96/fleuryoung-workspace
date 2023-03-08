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
import com.kh.product.model.vo.Discount;
import com.kh.product.model.vo.OptionOne;
import com.kh.product.model.vo.OptionTwo;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ProductUpdateFormController
 */
@WebServlet("/productUpdateForm.pr")
public class ProductUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("menuNo", "2");
		
		ArrayList<OptionOne> oneList = new ArrayList<OptionOne>();
		ArrayList<OptionTwo> twoList = new ArrayList<OptionTwo>();
		ArrayList<Category> clist = new ProductService().selectCategoryList();
		Product p = new ProductService().selectProduct(Integer.parseInt(request.getParameter("pno")));
		int dlist = new ProductService().selectDiscount(p.getpId());
		if(p.getOptionOne() > 0) {
			oneList  = new ProductService().selectOptionOne(p.getpId());
			
			int[] oneNo = new int[oneList.size()];
			System.out.println(oneList.size());
			
			for(int i = 0; i < oneList.size(); i++) {
				oneNo[i] = oneList.get(i).getOptionOneNo();
			}
			twoList  = new ProductService().selectOptionTwo(oneNo);
		}
		
		
		ArrayList<Object> sList = new ArrayList<>();
		for(int i=0 ; i < 5 ; i++) {
			sList.add(i*10);
		}
		
		request.setAttribute("clist",  clist);
		request.setAttribute("p",  p);
		request.setAttribute("oneList",  oneList);
		request.setAttribute("twoList",  twoList);
		request.setAttribute("sale", sList);
		request.getRequestDispatcher("views/product/productUpdateView.jsp").forward(request, response);		
	 	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
