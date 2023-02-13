<%@ page import="flower.com.kh.seller.model.vo.*" %>
<%@ page import="flower.com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String contextPath = request.getContextPath(); // /jsp
    Seller loginUser = (Seller)session.getAttribute("loginSeller");
    
    String alertMsg = (String)session.getAttribute("alertMsg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="shortcut icon" href="resources/img/favicon.png">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo">
                <div class="loginbox">
                    <div class="login-right">
                        <div class="login-right-wrap">
                            <br>
                            <p class="account-subtitle">Fleuryoung에 오신것을 환영합니다!</p>
                            <form action=""method="post">
                                <div class="form-group">
                                    <label class="form-control-label">ID</label>
                                    <input type="email" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">PASSWORD</label>
                                    <div class="pass-group">
                                        <input type="password" class="form-control pass-input">
                                        <span class="fas fa-eye toggle-password"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="cb1">
                                                <label class="custom-control-label" for="cb1">아이디 저장</label>
                                            </div>
                                        </div>
                                        <div class="col-6 text-end">
                                            <a class="forgot-link" href="#">비밀번호 찾기</a>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-lg btn-block btn-primary w-100" type="submit">로그인</button>
                                <div class="login-or">
                                    <span class="or-line"></span>
                                    <span class="span-or">or</span>
                                </div>
								<!--  간편로그인? -->
                                <!-- <div class="social-login mb-3">
                                    <span>Login with</span>
                                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a>
                                    </div> -->

                                <div class="text-center dont-have"> 아직 계정이 없으신가요? <a href="#"> 회원가입</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	 <!-- js 호출 -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/feather.min.js"></script>
    <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="resources/plugins/apexchart/apexcharts.min.js"></script>
    <script src="resources/plugins/apexchart/chart-data.js"></script>
    <script src="resources/js/script.js"></script>
</body>
</html>