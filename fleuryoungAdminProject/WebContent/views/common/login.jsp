<%@ page import="com.admin.user.model.vo.*" %>
<%@ page import="com.admin.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    String contextPath = request.getContextPath(); 
    User loginUser = (User)session.getAttribute("loginUser");
    
    String alertMsg = (String)session.getAttribute("alertMsg");
    %>
<!DOCTYPE html>
<html lang="en">
<!-- session 필요 -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Login</title>
    <link rel="shortcut icon" href="assets/img/logo-small.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">

	<% if(alertMsg != null){%>
		<script type="text/javascript">
			alert("<%=alertMsg%>");
		</script>
	<%} %>
	<% session.setAttribute("alertMsg", null); //removeAttribute("alertMsg") %>
   
  
	<% if(loginUser ==null){ %>
	  <div class="main-wrapper login-body">
	        <div class="login-wrapper">
	            <div class="container">
	                <img class="img-fluid logo-dark mb-2" src="resources/image/Fleuryoung.png" alt="Logo">
	                <div class="loginbox" style="width: 450px">
	                    <div class="login-right"style="width: 450px">
	                        <div class="login-right-wrap"style="width: 450px">
	                            <br>
	                            <p class="account-subtitle">Fleuryoung에 오신것을 환영합니다!</p>
	                            <form action="<%= contextPath %>/login.se"method="post">
	                                <div class="form-group">
	                                    <label class="form-control-label">ID</label>
	                                    <input type="text" class="form-control" name="uId" value="admin" readonly="readonly">
	                                </div>
	                                <div class="form-group">
	                                    <label class="form-control-label">PASSWORD</label>
	                                    <div class="pass-group">
	                                        <input type="password" class="form-control pass-input"name="uPw" required>
	                                        <span class="fas fa-eye toggle-password"></span>
	                                    </div>
	                                </div>
	                                <!-- 
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
	                                 -->
	                                <button class="btn btn-lg btn-block btn-primary w-100" type="submit">로그인</button>
	                                
	                                <!-- 
	                                <div class="login-or">
	                                    <span class="or-line"></span>
	                                    <span class="span-or">or</span>
	                                </div>
	                                 -->
									<!--  간편로그인? -->
	                                <!-- <div class="social-login mb-3">
	                                    <span>Login with</span>
	                                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i class="fab fa-google"></i></a>
	                                    </div> -->
									
									<!-- 
	                                <div class="text-center dont-have"> 아직 계정이 없으신가요? <a style="cursor: pointer;" onclick="register();"> 회원가입</a>
										<script>
								            function register(){
								                location.href = "<%= contextPath %>/registerForm.se";
								            }
						            	</script>
	                                </div>
	                                 -->
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
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/feather.min.js"></script>
    <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/plugins/apexchart/apexcharts.min.js"></script>
    <script src="assets/plugins/apexchart/chart-data.js"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>