<%@page import="com.admin.report.model.vo.Report"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Report> rList = (ArrayList<Report>)request.getAttribute("rList");
%>
<!DOCTYPE html>

	<!-- side and nav bar start -->
    <%@ include file = "../common/menu-bar.jsp" %>
	<!-- side and nav bar end -->

    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">신고관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>판매자센터
                                </li>
                                <li class="breadcrumb-item active">신고관리</li>
                            </ul>
                        </div>
                        <!-- <div class="col-auto">
                            <a href="add-customer.html" class="btn btn-primary me-1">
                                <i class="fas fa-plus"></i>
                            </a>
                        </div> -->
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
                                                <th>신고 아이디</th>
                                                <th>신고자</th>
                                                <th>내용</th>
                                                <th>문의종류</th>
                                              	<th>상품번호</th>
                                                <th>답변여부</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Report r : rList){%>
                                        		<tr>
	                                                <td><%= r.getRepId() %></td>
                                                    <td><%= r.getmId() %></td>                                                    
	                                                <% if(r.getRepContent() == null) {%>
	                                                	<td>내용 없음</td>
	                                                <%} else{%>
	                                                	<div class="modal fade" id="scrollable-modal<%= r.getRepId() %>" tabindex="-1" role="dialog"
						                                    aria-labelledby="scrollableModalTitle" aria-hidden="true">
						                                    <div class="modal-dialog modal-dialog-scrollable" role="document">
						                                        <div class="modal-content">
						                                            <div class="modal-header">
						                                                <h5 class="modal-title" id="scrollableModalTitle">신고내용 : </h5>
						                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
						                                                    aria-label="Close"></button>
						                                            </div>
						                                            <div class="modal-body">
						                                                <%= r.getRepContent() %>
						                                            </div>
						                                            <div class="modal-footer">
						                                                <button type="button" class="btn btn-secondary"
						                                                    data-bs-dismiss="modal">닫기</button>
						                                            </div>
						                                        </div>
						                                    </div>
						                                </div>
	                                                	<td><a href="" data-bs-toggle="modal" data-bs-target="#scrollable-modal<%= r.getRepId() %>">
	                                                		<%= r.getRepContent().substring(0, 20) %>...</a>
	                                                	</td>
	                                                <%} %>
                                                    <% 
	                                                    String repType = null;
	                                                    switch(r.getRepTypeNo()) { 
		                                                    case 1:
		                                                    	repType = "기타";
		                                                    	break;
		                                                    case 2:
		                                                    	repType = "사진";
		                                                    	break;
		                                                    case 3:
		                                                    	repType = "수입처";
		                                                    	break;
	                                                    }
                                                    %>
                                                    <td><%= repType %></td>
	                                                <td><%= r.getpId() %></td>
	                                                <% if((r.getResolved()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-danger-light">미해결</span></td>  
	                                                	<td class="text-end">
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-edit me-1"></i>해결하기</a>
	                                                </td>   
	                                                <%}else if((r.getResolved()).contains("N")){%>
	                                                	<td><span class="badge badge-pill bg-success-light">해결</span></td>
	                                                	<td class="text-end">
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2"><i
	                                                            class="far fa-check-circle me-1"></i>해결완료</a>
	                                                </td>
	                                                <%} %>
	                                            </tr>
                                        	<%} %>
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
    
    <!-- js script bar start -->
    <%@ include file = "../common/js-script.jsp" %>
	<!-- js script bar end -->
	
    
