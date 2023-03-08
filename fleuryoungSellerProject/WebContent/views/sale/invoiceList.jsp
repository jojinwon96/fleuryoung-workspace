<%@page import="com.kh.sale.model.vo.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%
    ArrayList<Sale> list = (ArrayList<Sale>)request.getAttribute("list"); 
%>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>

<body>



    <%@ include file="../common/menubar.jsp" %>
    



<div class="main-wrapper">
    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">송장관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active">대시보드</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="#" class="btn btn-primary me-1">
                            송장관리
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card card-table">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-center table-hover datatable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>결제번호</th>
                                            <th>주문상세번호</th>
                                            <th>상품명</th>
                                            <th>주문수량</th>
                                            <th>총결제금액</th>
                                            <th>배송현황</th>
                                            <th>결제등록일</th>
                                            <th>송장등록유무</th>
                                            <th class="text-end" >메뉴</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Sale s : list){ %>
	                                        <tr style="cursor: pointer;">
	                                            <td><%= s.getPayId()%></td>
	                                            <td><%= s.getOdId()%></td>
	                                            <td><%= s.getpId()%></td>
	                                            <td><%= s.getOdCount()%></td>
	                                            <td><%= s.getTotalPay()%></td>

                                                <% if(s.getOdStatus()== 1){%>
                                                    <td><span class="badge badge-soft-warning badge-border">준비중</span></td>  
                                                <%}else if (s.getOdStatus()==2){%>
                                                    <td><span class="badge badge-soft-success badge-border">배송중</span></td>
                                                <%}else if (s.getOdStatus()==3){%>
                                                    <td><span class="badge badge-soft-secondary badge-border">배송완료</span></td>
                                                <%} else{%>
                                                    <td><span class="badge badge-soft-danger badge-border">문제발생</span></td>
                                                    <%}%>

	                                            <td><%= s.getPayDate()%></td>
                                                <% if(s.getOdStatus() > 0) {%>
                                                    <td><span class="badge badge-pill bg-success-light"><%=s.getOdStatus()%></span></td>     
                                                <%}else {%>
                                                    <td><span class="badge badge-pill bg-danger-light">미등록</span></td>
                                                <%} %>
	                                            <td class="text-end">
	                                                <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                            </td>
	                                        </tr>
                                        <% } %>

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
    <script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/plugins/datatables/datatables.min.js"></script>
    <script src="resources/js/script.js"></script>



</body>

</html>