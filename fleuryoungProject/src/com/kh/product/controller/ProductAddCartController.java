package com.kh.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.*;

/**
 * Servlet implementation class ProductAddCartController
 */
@WebServlet("/addCart.p")
public class ProductAddCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductAddCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
			
			int pId = Integer.parseInt(request.getParameter("pId"));
			int selNo = Integer.parseInt(request.getParameter("selNo"));
			int opt1No = Integer.parseInt(request.getParameter("optFirstNo"));
			
		    String jsonStr = request.getParameter("jsonData");
		    
		    JSONArray jsonArr = new JSONArray();
		    
		    // 문자열 형식의 데이터를 JSONArray로 가공
		    jsonArr =  JSONArray.fromObject(jsonStr);
		    
		    System.out.println(jsonArr);
		    
			// 데이터의 길이만큼 반복 및 JSONObject로 변환하며 확인
		    for(int i=0;i<jsonArr.size();i++){
		    	JSONObject jsonObj = jsonArr.getJSONObject(i);
		    	System.out.println("옵션번호 : " + jsonObj.get("optSecondNum"));
		    	System.out.println("가격 : " + jsonObj.get("oPrice"));
		    	System.out.println("수량 : " + jsonObj.get("oCount"));
		    }
		    
		    System.out.println("pid : " + pId);
		    System.out.println("selNo : " + selNo);
		    System.out.println("opt1No : " + opt1No);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
