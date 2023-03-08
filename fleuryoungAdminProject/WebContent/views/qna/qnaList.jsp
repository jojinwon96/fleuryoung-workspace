<%@page import="com.admin.qna.model.vo.QnA"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<QnA> qList = (ArrayList<QnA>)request.getAttribute("qList");
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
                                <li class="breadcrumb-item"><a href="#"></a>고객센터
                                </li>
                                <li class="breadcrumb-item active">QnA</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a class="btn btn-primary me-1" data-bs-toggle="modal"
                            data-bs-target="#bs-example-modal-lg">
                                <i class="fas fa-plus"></i>
                            </a>
                        </div>
                        <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myLargeModalLabel">QnA 추가</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="#">
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">제목</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="title" required>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">카테고리</label>
                                                <div class="col-md-10">
                                                    <select class="form-select" name="category">
                                                        <option selected>기타</option>
                                                        <option>회원</option>
                                                        <option>주문</option>
                                                        <option>서비스</option>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">내용</label>
                                                <div class="col-md-10">
                                                    <textarea rows="15" cols="5" class="form-control"
                                                        placeholder="내용을 입력하세요" name="content"></textarea>
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
                                                <th>카테고리</th>
                                                <th>등록일</th>
                                                <th>수정일</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(QnA q : qList){%>
                                        		<tr>
	                                                <td><%= q.getQnaNumber() %></td>
	                                                <td><%= q.getQnaTitle() %></td>
                                                    <td><%= q.getQnaType() %></td>
	                                                <td><%= q.getQnaAddDate() %></td>
	                                                <td><%= q.getQnaEditDate() %></td>	                                               
	                                                <td class="text-end">
	                                                    <a
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal"
                                                            data-bs-target="#bs-example-modal-lg<%= q.getQnaNumber() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>

                                                <div class="modal fade" id="bs-example-modal-lg<%= q.getQnaNumber() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">QnA 추가</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="#">
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">제목</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" class="form-control" name="title" value="<%= q.getQnaTitle() %>" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">카테고리</label>
                                                                        <div class="col-md-10">
                                                                            <select class="form-select" name="category">
                                                                            	<% if(q.getQnaType().equals("기타")) {%>
																					<option selected>기타</option>
	                                                                                <option>회원</option>
	                                                                                <option>주문</option>
	                                                                                <option>서비스</option>
																				<%} else if(q.getQnaType().equals("회원")) {%>
																					<option>기타</option>
	                                                                                <option selected>회원</option>
	                                                                                <option>주문</option>
	                                                                                <option>서비스</option>
																				<%} else if(q.getQnaType().equals("주문")) {%>
																					<option>기타</option>
	                                                                                <option>회원</option>
	                                                                                <option selected>주문</option>
	                                                                                <option>서비스</option>
																				<%} else if(q.getQnaType().equals("회원 서비스")) {%>
																					<option>기타</option>
	                                                                                <option>회원</option>
	                                                                                <option>주문</option>
	                                                                                <option selected>서비스</option>
	                                                                            <%} else if(q.getQnaType().equals("서비스")) {%>
																					<option>기타</option>
	                                                                                <option>회원</option>
	                                                                                <option>주문</option>
	                                                                                <option selected>서비스</option>
																				<%} %>	
                                                                                
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">내용</label>
                                                                        <div class="col-md-10">
                                                                            <textarea rows="15" cols="5" class="form-control"
                                                                                placeholder="내용을 입력하세요" name="content"><%= q.getQnaDetail() %></textarea>
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
	
    
