<%@page import="com.admin.coupon.model.vo.Coupon"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Coupon> cList = (ArrayList<Coupon>)request.getAttribute("cList");
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
                            <h3 class="page-title">쿠폰</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>사이트운영
                                </li>
                                <li class="breadcrumb-item active">쿠폰</li>
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
                                                <th>쿠폰번호</th>
                                                <th>쿠폰 이름</th>
                                                <th>등록일</th>
                                                <th>수정일</th>
                                                <th>만료일</th>
                                                <th>할인액</th>                                                
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Coupon c : cList){%>
                                        		<tr>
	                                                <td><%= c.getCouId() %></td>                                             
	                                                <td><%= c.getCouName() %></td>                                             
	                                                <% if(c.getCouAddDate() != null) {%>
	                                                	<td><%= c.getCouAddDate() %></td>                                             
	                                                <%} else{%>
	                                                	<td>--</td>
	                                                <%} %>                                             
	                                                <% if(c.getCouEditDate() != null) {%>
	                                                	<td><%= c.getCouEditDate() %></td>                                             
	                                                <%} else{%>
	                                                	<td>--</td>
	                                                <%} %> 
	                                                <% if(c.getCouExpDate() != null) {%>
	                                                	<td><%= c.getCouExpDate() %></td>                                             
	                                                <%} else{%>
	                                                	<td>--</td>
	                                                <%} %>                                            
	                                                <td><%= c.getDiscount() %></td>                                             
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
	
    
