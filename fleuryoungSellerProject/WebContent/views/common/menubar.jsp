<%@ page import="com.kh.seller.model.vo.*" %>
<%@ page import="com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String contextPath = request.getContextPath(); 
    Seller  loginSeller = (Seller)session.getAttribute("loginSeller");
    
    String alertMsg = (String)session.getAttribute("alertMsg");
    int a = 0;
    %>

    <%
	int menuNo = Integer.parseInt((String)request.getAttribute("menuNo"));
	String active1 = "";
	String active2 = "";
	String active3 = "";
	String active3_1 = "";
	String active3_2 = "";
	String active3_3 = "";
	String active3_4 = "";
	String active3_5 = "";
	String active3_6 = "";
	String active3_7 = "";
	String active4 = "";
	String active4_1 = "";
	String active4_2 = "";
	String active4_3 = "";
	String active5 = "";
	
	switch(menuNo){
	case 1:
		active1 = "active ";
		break;
	case 2:
		active2 = "active ";
		break;
	case 3:
        active3 = "active ";
        active3_1 = "active ";
        break;
	case 4:
    active3 = "active ";
    active3_2 = "active ";
    break;
	case 5:
    active3 = "active ";
    active3_3 = "active ";
    break;
	case 6:
    active3 = "active ";
    active3_4 = "active ";
    break;
	case 7:
    active3 = "active ";
    active3_5 = "active ";
    break;
	case 8:
    active3 = "active ";
    active3_6 = "active ";
    break;
	case 9:
    active3 = "active ";
    active3_7 = "active ";
    break;
	case 10:
    active4 = "active ";
    active4_1 = "active ";
    break;
    case 11:
    active4 = "active ";
    active4_2 = "active ";
    break;
    case 12:
    active4 = "active ";
    active4_3 = "active ";
    break;
    case 13:
    active5 = "active ";
    break;
    
		
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="shortcut icon" href="resources/img/logo.png">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="resources/plugins/datatables/datatables.min.css">
    <link rel="stylesheet" href="resources/css/style.css">

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

 <%if(loginSeller == null){%>	
    <script> location.href = "<%=contextPath%>"</script>
<%}else{%>
        <div class="main-wrapper">
            <div class="header header-one">
                <div class="header-left header-left-one">
    
                    <!-- 로그 -->
                    <a href="<%= contextPath %>" class="logo">
                        <img src="resources/img/logo.png" alt="Logo">
                    </a>
                    <a href="<%= contextPath %>" class="white-logo">
                        <img src="resources/img/logo.png" alt="Logo">
                    </a>
                    <a href="<%= contextPath %>" class="logo logo-small">
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
                                                    <p class="noti-time"><span class="notification-time">알림 시간(4 mins ago)</span>
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
                        		<label class="avatar-sm avatar" for="file">
                                <img src="<%=loginSeller.getSelImg()%>">
                                
                           		 </lable>
                            </span>
                            <span><%= loginSeller.getSelName() %></span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<%=contextPath%>/myPageForm.se"><i data-feather="user" class="me-1"></i>
                                마이페이지</a>
                            <a class="dropdown-item" href="<%= contextPath%>/logout.se"><i data-feather="log-out" class="me-1"></i>
                                Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
    
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="<%=active1%>">
                                <a href="<%= contextPath %>"><i data-feather="home"></i> <span>대시보드</span></a>
                            </li>
                            <li class="<%=active2%>">
                                <a href="<%=contextPath%>/productList.pr?selNo=<%= loginSeller.getSelNo() %>"><i data-feather="clipboard"></i> <span> 상품관리</span></a>
                            </li>
                            <li class="<%=active3%>submenu">
                                <a href="#"><i data-feather="airplay"></i> <span> 판매관리</span> <span
                                        class="menu-arrow"></span></a>
                                <ul>
                                    <li><a href="#"class="<%=active3_1%>">송장 등록</a></li>
                                    <li><a href="#"class="<%=active3_2%>">송장 관리</a></li>
                                    <li><a href="#"class="<%=active3_3%>">미결제 확인</a></li>
                                    <li><a href="#"class="<%=active3_4%>">구매확정 내역</a></li>
                                    <li><a href="#"class="<%=active3_5%>">취소관리 </a></li>
                                    <li><a href="#"class="<%=active3_6%>">반품관리 </a></li>
                                    <li><a href="#"class="<%=active3_7%>">교환관리 </a></li>
                                </ul>
                            </li>
    
                            
                            <li class="<%=active4%>submenu">
                                <a href="#"><i data-feather="clipboard"></i> <span>Q&A관리</span> <span
                                        class="menu-arrow"></span></a>
                                <ul>
                                    <li><a href="#" class="<%=active4_1%>">문의 관리</a></li>
                                    <li><a href="#" class="<%=active4_2%>">리뷰 관리</a></li>
                                    <li><a href="#" class="<%=active4_3%>">관리자 문의</a></li>
                                </ul>
                            </li>
                            <li class="<%=active5%>">
                                <a href="#"><i data-feather="clipboard"></i> <span>통계</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
    <%}%>
   
 
</body>

</html>