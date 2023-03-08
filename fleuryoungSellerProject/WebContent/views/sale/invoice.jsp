<%@page import="com.kh.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%
	
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
                        <h3 class="page-title">상품관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active">상품리스트</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="<%=contextPath%>/productInsertForm.pr" class="btn btn-primary me-1">
                            상품등록
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
                                            <th>송장번호</th>
                                            <th>결제번호</th>
                                            <th>주문상세번호</th>
                                            <th>총결제금액</th>
                                            <th>배송비</th>
                                            <th>송장등록일</th>
                                            <th>결제일</th>
                                            <th class="text-end" >메뉴</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Product p : list){ %>
	                                        <tr style="cursor: pointer;">
	                                            <td>
	                                                <h2 class="table-avatar">
	                                                    <img class="avatar avatar-xl me-2 avatar-img rounded-circle"
	                                                            src="<%= p.getpPicture()%>">
	                                                </h2>
	                                                
	                                            </td>
	                                            <td><%= p.getCategoryNo()%></td>
	                                            <td><%= p.getpName()%></td>
	                                            <td><%= p.getNetPrice()%></td>
	                                            <td><%= p.getStock()%></td>
	                                            <td><%= p.getpSales()%></td>
	                                            <td><%= p.getpEnrollDate()%></td>
	                                            <td class="text-end">
	                                                <div class="dropdown dropdown-action" align="center">
	                                                    <a href="#" class="action-icon dropdown-toggle"
	                                                        data-bs-toggle="dropdown" aria-expanded="false"><i
	                                                            class="fas fa-ellipsis-v"></i></a>
	                                                    <div class="dropdown-menu dropdown-menu-end">
	                                                        <a class="dropdown-item" href="<%=contextPath%>/productUpdateForm.pr?pno=<%=p.getpId()%>"><i
	                                                                class="far fa-edit me-2"></i>상세조회 및 수정</a>
	                                                        <a class="dropdown-item" href="javascript:void(0);"><i
	                                                                class="far fa-trash-alt me-2"></i>상품삭제</a>
	                                                    </div>
	                                                </div>
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