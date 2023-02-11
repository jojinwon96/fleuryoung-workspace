<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kh.common.JDBCTemplate"%>
<%
	String contextPath = request.getContextPath(); // /jsp
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	// 로그인 시도 전 menubar.jsp 로딩시 : null
	// 로그인 성공 후 menubar.jsp 로딩시 : 로그인 성공한 회원의 정보가 담겨있는 Member 객체
	
%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>Fleuryoung</title>

</head>

<body class style="padding-right: 0px;">

    <div class="wrap">

		<%@ include file = "views/common/header.jsp" %>
        
        <!-- 배너 시작 -->
        <div id="carouselExampleAutoplaying" class="carousel slide b" data-bs-ride="carousel" style="z-index: 1;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
                        class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
                        class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
                        class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- 배너 끝 -->
         <h1><%= loginUser.getMemName() %></h1>

    </div>

	 
	<script src="resources/js/jquery-3.1.1.min.js"></script>
    <script src="resources/js/scripts.js"></script>
	 
    

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>