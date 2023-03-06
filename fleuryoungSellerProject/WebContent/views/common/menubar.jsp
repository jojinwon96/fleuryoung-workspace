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
                            <li class="active">
                                <a href="<%= contextPath %>"><i data-feather="home"></i> <span>대시보드</span></a>
                            </li>
                            <li class="submenu">
                                <a href="<%=contextPath%>/productList.pr?selNo=<%= loginSeller.getSelNo() %>"><i data-feather="clipboard"></i> <span> 상품관리</span></a>
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
    <%}%>
   
 
</body>

</html>