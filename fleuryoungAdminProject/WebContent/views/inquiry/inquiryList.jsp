<%@page import="com.admin.inquiry.model.vo.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Inquiry> iList = (ArrayList<Inquiry>)request.getAttribute("iList");
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
                            <h3 class="page-title">판매자요청</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>판매자센터
                                </li>
                                <li class="breadcrumb-item active">판매자요청</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a href="add-customer.html" class="btn btn-primary me-1">
                                <i class="fas fa-plus"></i>
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
                                                <th>유저</th>
                                                <th>제목</th>
                                                <th>문의종류</th>
                                                <th>등록일</th>
                                                <th>답변여부</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Inquiry i : iList){%>
                                        		<tr>
	                                                <td>
	                                                    <h2 class="table-avatar">
	                                                        <a href="profile.html" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="assets/img/profiles/usermain.jpg"
	                                                                alt="User Image"></a>
                                                            <a href="profile.html"><%= i.getSelId() %><span><%= i.getSelName() %> </span></a>
	                                                    </h2>
	                                                </td>
	                                                <td><%= i.getInqTitle() %></td>
                                                    <% 
	                                                    String inqType = null;
	                                                    switch(i.getInqType()) { 
		                                                    case 1:
		                                                    	inqType = "리뷰삭제";
		                                                    	break;
		                                                    case 2:
		                                                    	inqType = "상품등록";
		                                                    	break;
		                                                    case 3:
		                                                    	inqType = "기타";
		                                                    	break;
	                                                    }
                                                    %>
                                                    <td><%= inqType %></td>
	                                                <td><%= i.getInqDate() %></td>
	                                                <% if((i.getInqStatus()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-danger-light">미해결</span></td>  
	                                                	<td class="text-end">
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-edit me-1"></i>답변하기</a>
	                                                </td>   
	                                                <%}else if((i.getInqStatus()).contains("N")){%>
	                                                	<td><span class="badge badge-pill bg-success-light">해결</span></td>
	                                                	<td class="text-end">
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2"><i
	                                                            class="far fa-check-circle me-1"></i> 답변완료</a>
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
	
    
