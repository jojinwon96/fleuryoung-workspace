<%@ page import="com.kh.seller.model.vo.*" %>
<%@ page import="com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String contextPath = request.getContextPath(); 
    Seller loginSeller = (Seller)session.getAttribute("loginSeller");
    
    String alertMsg = (String)session.getAttribute("alertMsg");
    int a = 0;
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
    <% if(alertMsg != null){ %>
        <script>
            alert("<%= alertMsg %>");
        </script>
    <% session.removeAttribute("alertMsg"); %>
    <%} %>
  <% if(loginSeller == null) { %>
  <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo">
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
	<% } else{ %>
	<!-- 대시보드로 가는 코드 -->
    
        <% a = 5 %>
            

    <%}%>    
    
        <%@ include file = "dashboard.jsp"%>
    
    <div class="main-wrapper">
        <div class="header header-one">
            <div class="header-left header-left-one">

                <!-- 로그 -->
                <a href="index.jsp" class="logo">
                    <img src="resources/img/logo.png" alt="Logo">
                </a>
                <a href="index.jsp" class="white-logo">
                    <img src="resources/img/logo.png" alt="Logo">
                </a>
                <a href="index.jsp" class="logo logo-small">
                    <img src="resources/img/logo.png" alt="Logo" width="30" height="30">
                </a>
            </div>
            <a href="javascript:void(0);" id="toggle_btn">
                <i class="fas fa-bars"></i>
            </a>
            
            <a class="mobile_btn" id="mobile_btn">
                <i class="fas fa-bars"></i>
            </a>
            <ul class="nav nav-tabs user-menu">

                <li class="nav-item dropdown">
                    <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                        <i data-feather="bell"></i> <span class="badge rounded-pill">5</span>
                    </a>
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span class="notification-title">알림창</span>
                            <!-- 알림 전체 삭제 -->
                            <a href="javascript:void(0)" class="clear-noti"> Clear All</a>
                        </div>
                        <div class="noti-content">
                            <ul class="notification-list">
                                <li class="notification-message">
                                    <a href="activities.html"> 
                                        <!-- 알림 클릭 -->
                                        <div class="media d-flex">
                                            <span class="avatar avatar-sm">
                                                <img class="avatar-img rounded-circle" alt=""
                                                    src="assets/img/profiles/usermain.jpg">
                                            </span>
                                            <div class="media-body">
                                                <p class="noti-details"><span class="noti-title">판매완료</span>
                                                    paid the invoice <span class="noti-title"></span></p>
                                                <p class="noti-time"><span class="notification-time">알림 시간(4 mins ago</span>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="topnav-dropdown-footer">
                            <a href="activities.html">View all Notifications</a>
                        </div>
                    </div>
                </li>
                <!-- session을 이용해 채워 져야함 -->
                <li class="nav-item dropdown has-arrow main-drop">
                    <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                        <span class="user-img">
                            <img src="https://i.pinimg.com/736x/26/4c/0e/264c0e20687a67006bce6c7225e59ec2.jpg" alt="">
                            <span class="status online"></span>
                        </span>
                        <span><%= loginSeller.getSelName() %></span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i data-feather="user" class="me-1"></i>
                            마이페이지</a>
                        <a class="dropdown-item" href="#"><i data-feather="log-out" class="me-1"></i>
                            Logout</a>
                    </div>
                </li>
            </ul>
        </div>

        <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="active">
                            <a href="index.jsp"><i data-feather="home"></i> <span>대시보드</span></a>
                        </li>
                        <li class="submenu">
                            <a href="#"><i data-feather="clipboard"></i> <span> 상품관리</span> <span
                                    class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="#">상품등록</a></li>
                                <li><a href="#">상품관리</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="#"><i data-feather="airplay"></i> <span> 판매관리</span> <span
                                    class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="#">송장 등록</a></li>
                                <li><a href="#">송장 관리</a></li>
                                <li><a href="#">미결제 확인</a></li>
                                <li><a href="#">구매확정 내역</a></li>
                                <li><a href="#">취소관리 </a></li>
                                <li><a href="#">반품관리 </a></li>
                                <li><a href="#">교환관리 </a></li>
                            </ul>
                        </li>

                        <li class="submenu">
                            <a href="#"><i data-feather="clipboard"></i> <span>정산관리</span></a>
                        </li>
                        <li class="submenu">
                            <a href="#"><i data-feather="clipboard"></i> <span>Q&A관리</span> <span
                                    class="menu-arrow"></span></a>
                            <ul>
                                <li><a href="#">문의 관리</a></li>
                                <li><a href="#">리뷰 관리</a></li>
                                <li><a href="#">관리자 문의</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="#"><i data-feather="clipboard"></i> <span>통계</span></a>
                        </li>
                        <li class="submenu">
                    </ul>
                </div>
            </div>
        </div>
    </div>
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