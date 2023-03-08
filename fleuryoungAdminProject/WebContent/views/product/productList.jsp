<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.admin.product.model.vo.Review"%>
<%@page import="com.admin.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Product> pList = (ArrayList<Product>)request.getAttribute("pList");
	ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
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
                            <h3 class="page-title">상품관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>판매자센터
                                </li>
                                <li class="breadcrumb-item active">상품관리</li>
                            </ul>
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
                                                <th>상품번호</th>
                                                <th>상품명</th>
                                                <th>판매자</th>
                                                <th>가격</th>
                                                <th>판매량</th>
                                                <th>추가일</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Product p : pList){%>
                                        		<tr>
	                                                <td><%= p.getpId() %></td>
	                                                <td><%= p.getpName() %></td>
	                                                <td><%= p.getStoreName() %></td>
	                                                <td><%= p.getpNetPrice() %></td>
	                                                <td><%= p.getSaleCount() %></td>
	                                                <td><%= p.getEnrollDate() %></td>
	                                                <td class="text-end">
	                                                    <a
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal"
                                                            data-bs-target="#bs-example-modal-lg<%= p.getpId() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>
                                                <div class="modal fade" id="bs-example-modal-lg<%= p.getpId() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">상품상세</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                
                                                            
                                                                    <ul class="nav nav-tabs nav-tabs-solid nav-justified">
                                                                        <li class="nav-item"><a class="nav-link active" href="#solid-justified-tab1<%= p.getpId() %>"
                                                                                data-bs-toggle="tab">상품</a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="#solid-justified-tab2<%= p.getpId() %>"
                                                                                data-bs-toggle="tab">리뷰</a></li>
                                                                    </ul>
                                                                    <div class="tab-content">
                                                                        <div class="tab-pane show active" id="solid-justified-tab1<%= p.getpId() %>">
                                                                            <form action="<%=contextPath %>/insert.pr" method="post"
                                                                                enctype="multipart/form-data"> <!-- 입력 폼 -->
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">카테고리</label>
                                                                                    <div class="col-md-10">
                                                                                        <select class="form-select" name="categoryNo" disabled>
                                                                                            <option><%= p.getCategoryName() %></option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div><!-- 카테고리 -->
                                                                                
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">상품이름</label>
                                                                                    <div class="col-md-10">
                                                                                        <input type="text" class="form-control"
                                                                                            placeholder="상품이름을 입력하세요." name="pName" value="<%= p.getpName() %>" readonly="readonly">
                                                                                    </div>
                                                                                </div><!-- 상품이름 -->
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">가격</label>
                                                                                    <div class="col-md-10">
                                                                                        <input type="number" class="form-control"
                                                                                            placeholder="가격을 입력하세요." name="price" value="<%= p.getpNetPrice() %>" readonly="readonly">
                                                                                    </div>
                                                                                </div><!-- 가격 -->
                                                                                <div class="">
                                                                                    <label for="file" class="col-form-label col-md-2">상세 설명 
                                                                                        이미지 </label>
                                                                                    <img id="titleImg" width="350" height="150" src="<%= p.getpDetail() %>"
                                                                                        onerror="this.style.display='none'">
                                                                                <br>
                                                                                </div><!-- 상세설명 -->
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">상품 총수량</label>
                                                                                    <div class="col-md-10">
                                                                                        <input id="sumStock" type="number" class="form-control"
                                                                                            name="pStock" placeholder="상품 총수량 입력(옵션 입력시 미입력) " value="<%= p.getpStock() %>"
                                                                                            readonly="readonly">
                                                                                    </div>
                                                                                </div><!-- 상품 총수량 -->
                                                                                <div class="">
                                                                                    <label for="file" class="col-form-label col-md-2">대표
                                                                                        이미지 </label>
                                                                                    <img id="titleImg" width="150" height="150" src="<%= contextPath %>/<%= p.getMainImg() %>"
                                                                                        onerror="this.style.display='none'">
                                                                                </div>
                                                                                <br>
                                                                                <br>
                                            
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">할인율</label>
                                                                                    <div class="col-md-10">
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="discount" value="0" readonly="readonly">
                                                                                                없음 
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="discount" value="10" readonly="readonly">
                                                                                                10% 
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="discount" value="20" readonly="readonly">
                                                                                                20% 
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="discount" value="30" readonly="readonly">
                                                                                                30% 
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="discount" value="40" readonly="readonly">
                                                                                                40% 
                                                                                            </label>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                            
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">배송속성</label>
                                                                                    <div class="col-md-10">
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="delivery" value="Y" <%= (p.getpDayDelivery().equals("Y")) ? "checked" : "" %> >
                                                                                                당일배송
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="delivery" value="N" <%= (p.getpDayDelivery().equals("N")) ? "checked" : "" %>>
                                                                                                일반배송
                                                                                            </label>
                                                                                        </span>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                            
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">카드여부</label>
                                                                                    <div class="col-md-10">
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="card" value="Y" <%= (p.getpTagYN().equals("Y")) ? "checked" : "" %>>
                                                                                                카드쓰기 승인
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="card" value="N" <%= (p.getpTagYN().equals("N")) ? "checked" : "" %>>
                                                                                                카드쓰기 거부
                                                                                            </label>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">상품환불여부</label>
                                                                                    <div class="col-md-10">
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="return" value="Y" <%= (p.getReturnYN().equals("Y")) ? "checked" : "" %>>
                                                                                                상품환불 승인
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="return" value="N" <%= (p.getReturnYN().equals("N")) ? "checked" : "" %>>
                                                                                                상품환불 거부
                                                                                            </label>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group row">
                                                                                    <label class="col-form-label col-md-2">선물 여부</label>
                                                                                    <div class="col-md-10">
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="gift" value="Y" <%= (p.getpGift().equals("Y")) ? "checked" : "" %>>
                                                                                                O
                                                                                            </label>
                                                                                        </span>
                                                                                        <span class="radio">
                                                                                            <label> <input type="radio" name="gift" value="N" <%= (p.getpGift().equals("N")) ? "checked" : "" %>>
                                                                                                X
                                                                                            </label>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                        <div class="tab-pane" id="solid-justified-tab2<%= p.getpId() %>">
																			<div align="center">
																				<% for(Review r : rList) {%>
																					<% if(r.getpId() == p.getpId()){ %>
																					
	                                                                                    <div class="col-12 col-md-6 col-lg-4 d-flex">
	                                                                                        <div class="card flex-fill bg-white">
	                                                                                            <img alt="Card Image" src="assets/img/img-01.jpg" class="card-img-top">
	                                                                                            <div class="card-header">
	                                                                                                <h5 class="card-title mb-0">작성자 : <%= r.getMemId() %> <br>작성일 : <%= r.getDate() %></h5>
	                                                                                            </div>
	                                                                                            <div class="card-body">
	                                                                                                <p class="card-text">
                                                                                                        <%= r.getContent() %> 
                                                                                                        <br>
                                                                                                        <br>
                                                                                                        별점 : <%= r.getReviewRating() %>
                                                                                                    </p>
	                                                                                                <a class="btn btn-primary" href="#">삭제</a>
	                                                                                            </div>
	                                                                                        </div>
	                                                                                    </div>
	                                                                            	<%} %>
                                                                                <%} %>
                                                                        </div>
                                                                    </div>
                                                                 </div>                                                                    
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
	
    
