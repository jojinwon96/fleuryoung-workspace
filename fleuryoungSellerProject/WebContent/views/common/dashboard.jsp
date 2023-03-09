<%@ page import="com.kh.seller.model.vo.*" %>
<%@ page import="com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="resources/img/logo.png">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

	<%@ include file = "menubar.jsp"%>
   
    <div class="page-wrapper">

        <div class="content container-fluid">

            <div class="row">
                <div class="col-xl-3 col-sm-6 col-12">

                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-1">
                                    <i class="fas fa-dollar-sign"></i>
                                </span>
                                <div class="dash-count">
                                    <div class="dash-title">오늘매출</div>
                                    <div class="dash-counts">
                                        <p>1,647원</p>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-2">
                                    <i class="fas fa-users"></i>
                                </span>
                                <div class="dash-count">
                                    <div class="dash-title">오늘구독자증가</div>
                                    <div class="dash-counts">
                                        <p>3,642명</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-3">
                                    <i class="fas fa-file-alt"></i>
                                </span>
                                <div class="dash-count">
                                    <div class="dash-title">오늘배송완료</div>
                                    <div class="dash-counts">
                                        <p>1건</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-4">
                                    <i class="far fa-file"></i>
                                </span>
                                <div class="dash-count">
                                    <div class="dash-title">오늘결제완료</div>
                                    <div class="dash-counts">
                                        <p>30건</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-15 col-sm-15">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title">판매현황</h5>
                                </div>
                                <div class="col-auto">
                                    <a href="invoices.html" class="btn-right btn btn-sm btn-outline-primary">
                                        전체보기
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                               
                                <div class="row">
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-success me-1"></i> 출고완료
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-warning me-1"></i> 배송준비
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-primary me-1"></i> 배송중
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-danger me-1"></i> 배송지연
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-info me-1"></i> 배송완료
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive" style="height: 500px;">
                                <table class="table table-stripped table-hover">
                                    <thead class="thead-light">
                                        <tr align="center">
                                            <th>구매자이름</th>
                                            <th>가격</th>
                                            <th>구매일자</th>
                                            <th>배송현황</th>
                                            <th class="text-right">비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr align="center">
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a href="profile.html"><img
                                                            class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                            src="resources/img/profiles/avatar-04.jpg"
                                                            alt="User Image">최민수</a>
                                                </h2>
                                            </td>
                                            <td>$118</td>
                                            <td>23 Nov 2020</td>
                                            <td><span class="badge bg-success-light">출고완료</span></td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                        <a class="dropdown-item" href="view-invoice.html"><i
                                                                class="far fa-eye me-2"></i>상세보기</a>
                                                </div>
                                            </td>   
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/feather.min.js"></script>
    <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="resources/plugins/apexchart/apexcharts.min.js"></script>
    <script src="resources/plugins/apexchart/chart-data.js"></script>
    <script src="resources/js/script.js"></script>
</body>
</html>