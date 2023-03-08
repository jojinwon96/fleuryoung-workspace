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
	                                                        class="btn btn-sm btn-white text-danger me-2" data-bs-toggle="modal"
                                                            data-bs-target="#bs-example-modal-lg<%= i.getInqNumber() %>"><i
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
                                                <div class="modal fade" id="bs-example-modal-lg<%= i.getInqNumber() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">판매자 요청 답변</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="#">
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">제목</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" class="form-control" name="title" value="<%= i.getInqTitle() %>" readonly="readonly">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">카테고리</label>
                                                                        <div class="col-md-10">
                                                                            <select class="form-select" name="category" disabled="disabled">
                                                                            	<% if(i.getInqType() == 1) {%>
	                                                                                <option value="1" selected>리뷰삭제</option>
	                                                                                <option value="2">상품등록</option>
																					<option value="3">기타</option>
																				<%} else if(i.getInqType() == 2) {%>
																					<option value="1">리뷰삭제</option>
	                                                                                <option value="2" selected>상품등록</option>
	                                                                                <option value="3">기타</option>
																				<%} else if(i.getInqType() == 3) {%>
	                                                                                <option value="1">리뷰삭제</option>
	                                                                                <option value="2">상품등록</option>
																					<option value="3" selected>기타</option>
																				<%} %>	
                                                                                
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">내용</label>
                                                                        <div class="col-md-10">
                                                                            <textarea rows="10" cols="5" class="form-control"
                                                                                placeholder="내용을 입력하세요" name="content" readonly="readonly"><%= i.getInqDetail() %></textarea>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">답변</label>
                                                                        <div class="col-md-10">
                                                                            <textarea rows="15" cols="5" class="form-control"
                                                                                placeholder="내용을 입력하세요" name="reply"></textarea>
                                                                        </div>
                                                                    </div>

                                                                    <div class="text-end">
                                                                        <button type="submit" class="btn btn-primary">저장</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
	
    
