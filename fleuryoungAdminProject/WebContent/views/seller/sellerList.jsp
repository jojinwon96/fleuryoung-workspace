<%@page import="com.admin.seller.model.vo.Seller"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Seller> sList = (ArrayList<Seller>)request.getAttribute("sList");
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
                            <h3 class="page-title">판매 계정</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>회원관리
                                </li>
                                <li class="breadcrumb-item active">판매자 계정</li>
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
                                                <th>사업명</th>
                                                <th>이메일</th>
                                                <th>사업자</th>
                                                <th>가입일</th>
                                                <th>활성상태</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Seller s : sList){%>
                                        		<tr>
	                                                <td>
	                                                    <h2 class="table-avatar">
	                                                        <a href="profile.html" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="assets/img/profiles/usermain.jpg"
	                                                                alt="User Image"></a>
	                                                        <a href="profile.html"><%= s.getSelId() %><span><%= s.getSelStoreName() %> </span></a>
	                                                    </h2>
	                                                </td>
	                                                <td><a href="#"><%= s.getSelEmail() %></a>
	                                                </td>
	                                                <td><%= s.getSelName() %></td>
	                                                <td><%= s.getSelEnrollDate() %></td>
	                                                <% if((s.getSelStatus()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-success-light">활성</span></td>     
	                                                <%}else if((s.getSelStatus()).contains("N")){%>
	                                                	<td><span class="badge badge-pill bg-danger-light">비활성</span></td>
	                                                <%} %>
	                                                <td class="text-end">
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
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
	
    
