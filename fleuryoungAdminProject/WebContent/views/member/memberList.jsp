<%@page import="com.admin.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Member> mList = (ArrayList<Member>)request.getAttribute("mList");
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
                            <h3 class="page-title">일반회원</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>회원관리
                                </li>
                                <li class="breadcrumb-item active">일반회원</li>
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
                                                <th>이메일</th>
                                                <th>생년월일</th>
                                                <th>가입일</th>
                                                <th>활성상태</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Member m : mList){%>
                                        		<tr>
	                                                <td>
	                                                    <h2 class="table-avatar">
	                                                        <a href="profile.html" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="assets/img/profiles/usermain.jpg"
	                                                                alt="User Image"></a>
	                                                        <a href="profile.html"><%= m.getMemName() %> <span><%= m.getMemId() %></span></a>
	                                                    </h2>
	                                                </td>
	                                                <td><a href="#"><%= m.getMemEmail() %></a>
	                                                </td>
	                                                <td><%= m.getMemBirthDate() %></td>
	                                                <td><%= m.getMemEnrollDate() %></td>
	                                                <% if((m.getMemStatus()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-success-light">활성</span></td>     
	                                                <%}else if((m.getMemStatus()).contains("N")){%>
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
	
    
