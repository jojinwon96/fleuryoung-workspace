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
                                    
                                    <span class="dash-title">신규주문
                                        <span class="dash-counts" align="right">
                                        129 건
                                        </span>
                                    </span>
                                    <br><br>
                                    <span class="dash-title">결제대기
                                        <span class="dash-counts" align="right">
                                        129 건
                                        </span>
                                    </span>
                                     <br>
                                </div>
                            </div>
                            <p class="text-muted mt-3 mb-0"><span class="text-danger me-1"></p>
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
                                <br><br>
                                <div class="dash-count">
                                    <span class="dash-title">구독자수
                                        <span class="dash-counts" align="right">
                                            129 명
                                        </span>
                                    </span>
                                    <br>
                                </div>
                            </div>

                            <p class="text-muted mt-3 mb-0"><span class="text-success me-1"></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
                                <span class="dash-widget-icon bg-3">
                                    <i class="fas fa-truck"></i>
                                </span>
                                <div class="dash-count">
                                    <span class="dash-title">취소요청
                                        <span class="dash-counts" align="right">
                                            129 명
                                        </span>
                                    </span>
                                     <br>
                                    <span class="dash-title">교환요청
                                        <span class="dash-counts" align="right">
                                            129 명
                                        </span>
                                    </span>
                                    <br>
                                    <span class="dash-title">반품요청
                                        <span class="dash-counts" align="right">
                                            129 명
                                        </span>
                                    </span>
                                  
                                    
                                </div>
                            </div>
    
                            <p class="text-muted mt-3 mb-0"><span class="text-success me-1"></p>
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
                                <br><br>
                                <div class="dash-count">
                                    <div class="dash-title">오늘매출</div>
                                    <div class="dash-counts">
                                        <p>2,201,000 원</p>
                                    </div>
                                </div>
                                <br><br>
                            </div>
                            <p class="text-muted mt-3 mb-0"><span class="text-danger me-1"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-6">
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
                                        <tr>
                                            <th>구매자이름</th>
                                            <th>가격</th>
                                            <th>구매일자</th>
                                            <th>배송현황</th>
                                            <th class="text-right">비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
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
                                                    <a href="#" class="action-icon dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false"><i
                                                            class="fas fa-ellipsis-h"></i></a>
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
                <div class="col-md-6 col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col">
                                    <h5 class="card-title">문의와 리뷰를 관리하자</h5>
                                </div>
                                <div class="col-auto">
                                    <a href="estimates.html" class="btn-right btn btn-sm btn-outline-primary">
                                        View All
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" >
                            <div class="mb-3">
                                <div class="row">
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-success me-1"></i> 리뷰
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-circle text-warning me-1"></i> 문의
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive" style="height: 500px;">
                                <table class="table table-hover">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Customer</th>
                                            <th>Expiry Date</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th class="text-right">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <h2 class="table-avatar">
                                                    <a href="profile.html"><img
                                                            class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                            src="assets/img/profiles/avatar-05.jpg"
                                                            alt="User Image"> Greg Lynch</a>
                                                </h2>
                                            </td>
                                            <td>5 Nov 2020</td>
                                            <td>$175</td>
                                            <td><span class="badge bg-info-light">Sent</span></td>
                                            <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false"><i
                                                            class="fas fa-ellipsis-h"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="edit-invoice.html"><i
                                                                class="far fa-edit me-2"></i>Edit</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-trash-alt me-2"></i>Delete</a>
                                                        <a class="dropdown-item" href="view-estimate.html"><i
                                                                class="far fa-eye me-2"></i>View</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-file-alt me-2"></i>Convert to
                                                            Invoice</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-check-circle me-2"></i>Mark as
                                                            sent</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-paper-plane me-2"></i>Send
                                                            Estimate</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-check-circle me-2"></i>Mark as
                                                            Accepted</a>
                                                        <a class="dropdown-item" href="javascript:void(0);"><i
                                                                class="far fa-times-circle me-2"></i>Mark as
                                                            Rejected</a>
                                                    </div>
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

</body>
</html>