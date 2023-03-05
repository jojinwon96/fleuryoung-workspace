<%@page import="com.admin.user.model.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath(); // /jsp
	// 로그인 시도 전 menubar.jsp 로딩시 : null
	// 로그인 성공 후 menubar.jsp 로딩시 : 로그인 성공한 회원의 정보가 담겨있는 Member 객체
	User loginUser = (User)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
	// 서비스 요청 전 menubar.jsp 로딩시 : null
	// 서비스 성공 후 menubar.jsp 로딩시 : alert로 띄워줄 메세지 문구
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Fleuryoung Admin</title>
    <link rel="shortcut icon" href="<%= contextPath %>/assets/img/logo-small.png">
    <link rel="stylesheet" href="<%= contextPath %>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%= contextPath %>/assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="<%= contextPath %>/assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="<%= contextPath %>/assets/css/style.css">
    <link rel="stylesheet" href="<%= contextPath %>/assets/plugins/datatables/datatables.min.css">
	<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <script type="text/javascript">
    	window.addEventListener( "pageshow", function ( event ) {
    	  var historyTraversal = event.persisted || 
    	                         ( typeof window.performance != "undefined" && 
    	                              window.performance.navigation.type === 2 );
    	  if ( historyTraversal ) {
    	    // Handle page restore.
    	    window.location.reload();
    	  }
    	});
    </script>
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">

	<% if(loginUser == null){%>
		<script type="text/javascript">
			alert("로그인 세션이 만료되었습니다. 로그인 페이지로 이동합니다.");
			location.href = "<%= contextPath%>";
		</script>
	<%} %>
	
	<% if(alertMsg != null){%>
		<script type="text/javascript">
			alert("<%=alertMsg%>");
		</script>
	<%} %>
	<% session.setAttribute("alertMsg", null); //removeAttribute("alertMsg") %>
	
    <div class="main-wrapper">
		<div class="header header-one">
		    <div class="header-left header-left-one">
		        <a href="index.jsp" class="logo">
		            <img src="assets/img/logo-small.png" alt="Logo">
		        </a>
		        <a href="index.jsp" class="white-logo">
		            <img src="assets/img/logo-white.png" alt="Logo">
		        </a>
		        <a href="index.jsp" class="logo logo-small">
		            <img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
		        </a>
		    </div>
		    <a href="javascript:void(0);" id="toggle_btn">
		        <i class="fas fa-bars"></i>
		    </a>
		    <div class="top-nav-search">
		        <form>
		            <input type="text" class="form-control" placeholder="Search here">
		            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
		        </form>
		    </div>
		    <a class="mobile_btn" id="mobile_btn">
		        <i class="fas fa-bars"></i>
		    </a>
		    <ul class="nav nav-tabs user-menu">
		        <!-- <li class="nav-item dropdown has-arrow flag-nav">
		            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button">
		                <img src="assets/img/flags/us.png" alt="" height="20"> <span>English</span>
		            </a>
		            <div class="dropdown-menu dropdown-menu-right">
		                <a href="javascript:void(0);" class="dropdown-item">
		                    <img src="assets/img/flags/us.png" alt="" height="16"> English
		                </a>
		                <a href="javascript:void(0);" class="dropdown-item">
		                    <img src="assets/img/flags/fr.png" alt="" height="16"> French
		                </a>
		                <a href="javascript:void(0);" class="dropdown-item">
		                    <img src="assets/img/flags/es.png" alt="" height="16"> Spanish
		                </a>
		                <a href="javascript:void(0);" class="dropdown-item">
		                    <img src="assets/img/flags/de.png" alt="" height="16"> German
		                </a>
		            </div>
		        </li> -->
		
		        <!-- <li class="nav-item dropdown">
		            <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
		                <i data-feather="bell"></i> <span class="badge rounded-pill">5</span>
		            </a>
		            <div class="dropdown-menu notifications">
		                <div class="topnav-dropdown-header">
		                    <span class="notification-title">Notifications</span>
		                    <a href="javascript:void(0)" class="clear-noti"> Clear All</a>
		                </div>
		                <div class="noti-content">
		                    <ul class="notification-list">
		                        <li class="notification-message">
		                            <a href="activities.html">
		                                <div class="media d-flex">
		                                    <span class="avatar avatar-sm">
		                                        <img class="avatar-img rounded-circle" alt=""
		                                            src="assets/img/profiles/usermain.jpg">
		                                    </span>
		                                    <div class="media-body">
		                                        <p class="noti-details"><span class="noti-title">Brian Johnson</span>
		                                            paid the invoice <span class="noti-title">#DF65485</span></p>
		                                        <p class="noti-time"><span class="notification-time">4 mins ago</span>
		                                        </p>
		                                    </div>
		                                </div>
		                            </a>
		                        </li>
		                        <li class="notification-message">
		                            <a href="activities.html">
		                                <div class="media d-flex">
		                                    <span class="avatar avatar-sm">
		                                        <img class="avatar-img rounded-circle" alt=""
		                                            src="assets/img/profiles/avatar-03.jpg">
		                                    </span>
		                                    <div class="media-body">
		                                        <p class="noti-details"><span class="noti-title">Marie Canales</span>
		                                            has accepted your estimate <span
		                                                class="noti-title">#GTR458789</span></p>
		                                        <p class="noti-time"><span class="notification-time">6 mins ago</span>
		                                        </p>
		                                    </div>
		                                </div>
		                            </a>
		                        </li>
		                        <li class="notification-message">
		                            <a href="activities.html">
		                                <div class="media d-flex">
		                                    <div class="avatar avatar-sm">
		                                        <span class="avatar-title rounded-circle bg-primary-light"><i
		                                                class="far fa-user"></i></span>
		                                    </div>
		                                    <div class="media-body">
		                                        <p class="noti-details"><span class="noti-title">New user
		                                                registered</span></p>
		                                        <p class="noti-time"><span class="notification-time">8 mins ago</span>
		                                        </p>
		                                    </div>
		                                </div>
		                            </a>
		                        </li>
		                        <li class="notification-message">
		                            <a href="activities.html">
		                                <div class="media d-flex">
		                                    <span class="avatar avatar-sm">
		                                        <img class="avatar-img rounded-circle" alt=""
		                                            src="assets/img/profiles/avatar-04.jpg">
		                                    </span>
		                                    <div class="media-body">
		                                        <p class="noti-details"><span class="noti-title">Barbara Moore</span>
		                                            declined the invoice <span class="noti-title">#RDW026896</span></p>
		                                        <p class="noti-time"><span class="notification-time">12 mins ago</span>
		                                        </p>
		                                    </div>
		                                </div>
		                            </a>
		                        </li>
		                        <li class="notification-message">
		                            <a href="activities.html">
		                                <div class="media d-flex">
		                                    <div class="avatar avatar-sm">
		                                        <span class="avatar-title rounded-circle bg-info-light"><i
		                                                class="far fa-comment"></i></span>
		                                    </div>
		                                    <div class="media-body">
		                                        <p class="noti-details"><span class="noti-title">You have received a new
		                                                message</span></p>
		                                        <p class="noti-time"><span class="notification-time">2 days ago</span>
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
		        </li> -->
		
		
		        <li class="nav-item dropdown has-arrow main-drop">
		            <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<!-- 
						<span class="user-img">
		                    <img src="assets/img/profiles/usermain.jpg" alt="">
		                    <span class="status online"></span>
		                </span>
						 -->
		                <span>Admin</span>
		            </a>
		            <div class="dropdown-menu">
						<!-- 
		                <a class="dropdown-item" href="views/main/profile.html"><i data-feather="user" class="me-1"></i>
		                    Profile</a>
		                <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i>
		                    Settings</a>
						 -->
		                <a class="dropdown-item" onclick="location.href='<%= contextPath %>/logout.se'"><i data-feather="log-out" class="me-1"></i>
		                    Logout</a>
		            </div>
		        </li>
		    </ul>
		</div>
		
		<div class="sidebar" id="sidebar">
		    <div class="sidebar-inner slimscroll">
		        <div id="sidebar-menu" class="sidebar-menu">
		            <ul>

		                <!-- <li class="menu-title"><span>메인</span></li> -->
		                <li class="active">
		                    <a href="<%= contextPath %>/dashboard.da"><i data-feather="home"></i> <span>대시보드</span></a>
		                </li>
		                
		                <!-- <li class="menu-title"><span>유저</span></li> -->
		                <li class="submenu">
		                    <a href="#"><i data-feather="users"></i> <span> 회원관리 </span> <span
		                            class="menu-arrow"></span></a>
		                    <ul>
		                        <li><a href="<%= contextPath %>/list.me"> 일반계정 </a></li>
		                        <li><a href="<%= contextPath %>/list.se"> 판매자 계정 </a></li>
		                    </ul>
		                </li>
		                
		                <!-- <li class="menu-title"><span>지원</span></li> -->
		                <li class="submenu">
		                    <a href="#"><i data-feather="message-square"></i> <span>고객센터</span> <span
		                            class="menu-arrow"></span></a>
		                    <ul>
		                        <li><a href="alerts.html">1:1 문의</a></li>
		                        <li><a href="accordions.html">Q&A</a></li>
		                        <li><a href="avatar.html">공지사항</a></li>
		                    </ul>
		                </li>
		                <li class="submenu">
		                    <a href="#"><i data-feather="dollar-sign"></i> <span>판매자센터</span> <span
		                            class="menu-arrow"></span></a>
		                    <ul>
		                        <li><a href="ribbon.html">상품관리</a></li>
		                        <li><a href="clipboard.html">판매자요청</a></li>
		                        <li><a href="drag-drop.html">신고관리</a></li>
		                    </ul>
		                </li>
						
						<!-- <li class="menu-title"><span>사이트</span></li> -->
		                <li class="submenu">
		                    <a href="#"><i data-feather="monitor"></i> <span>사이트운영</span> <span
		                            class="menu-arrow"></span></a>
		                    <ul>
		                        <li><a href="invoice-grid.html">배너관리</a></li>
		                        <li><a href="invoice-grid-two.html">쿠폰관리</a></li>
		                    </ul>
		                </li>
		                <li>
		            </ul>
		        </div>
		    </div>
		</div>
		
		
    </body>

</html>
		
		