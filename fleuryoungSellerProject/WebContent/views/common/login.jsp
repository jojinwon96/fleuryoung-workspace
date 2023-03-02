
<%@page import="com.kh.seller.model.vo.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String contextPath = request.getContextPath(); 
    Seller loginSeller = (Seller)session.getAttribute("loginSeller");
    
    
    String alertMsg = (String)session.getAttribute("alertMsg");
    %>
<!DOCTYPE html>
<html lang="en">
<!-- session 필요 -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="shortcut icon" href="resources/img/logo.png">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
   
  
<% if(loginSeller ==null){ %>
  <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <a href="<%= contextPath%>/loginView.se"><img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo"></a>
                
                    <div class="loginbox" style="width: 450px">
                    <div class="login-right"style="width: 450px">
                        <div class="login-right-wrap"style="width: 450px">
                            <br>
                            <p class="account-subtitle">Fleuryoung에 오신것을 환영합니다!</p>
                            <form action="<%= contextPath %>/login.se"method="post">
                                <div class="form-group">
                                    <label class="form-control-label">ID</label>
                                    <input type="text" class="form-control" name="selId"required>
                                </div>  
                                <div class="form-group">
                                    <label class="form-control-label">PASSWORD</label>
                                    <div class="pass-group">
                                        <input type="password" class="form-control pass-input"name="selPw" required>
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
                                            <a class="forgot-link"href="<%= contextPath %>/idSelect.se">아이디 찾기</a>/
                                            <a class="forgot-link"href="pwdSelect.jsp">비밀번호 찾기</a>
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

                                <div class="text-center dont-have"> 아직 계정이 없으신가요? <a style="cursor: pointer;" onclick="register();"> 회원가입</a>
									<script>
							            function register(){
							                location.href = "<%= contextPath %>/registerForm.se";
							            }
					            	</script>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%}else{ %>
        <script>
              window.onload = function(){
                 location.href = "<%= contextPath%>/dashboard.da";
            }
        </script>
	<%} %>
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