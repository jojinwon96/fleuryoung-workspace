<%@page import="com.admin.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Board> bList = (ArrayList<Board>)request.getAttribute("bList");
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
                            <h3 class="page-title">QnA</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>고센터
                                </li>
                                <li class="breadcrumb-item active">QnA</li>
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
                                                <th>번호</th>
                                                <th>제목</th>
                                                <th>등록일</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Board b : bList){%>
                                        		<tr>
	                                                <td><%= b.getBoardNumber() %></td>
	                                                <td><%= b.getBoardTitle() %></td>
                                                    <td><%= b.getBoardAddDate() %></td>	                                               
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
	
    
