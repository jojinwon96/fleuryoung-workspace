<%@page import="com.kh.product.model.vo.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	 ArrayList<Category> clist = (ArrayList<Category>)request.getAttribute("clist");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

	<div class="page-wrapper">
		<div class="content container-fluid">
			<div class="page-header">
				<div class="row align-items-center">
					<div class="col">
						<h3 class="page-title">상품등록</h3>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="<%=contextPath%>/dashboard.da">대시보드</a></li>
							<li class="breadcrumb-item"><a
								href="<%=contextPath%>/productList.pr?sno=<%=loginSeller.getSelNo()%>">상품관리</a></li>
							<li class="breadcrumb-item active">상품등록</li>
						</ul>
					</div>
					<div class="col-auto">
						<a href="invoices.html" class="invoices-links active"> <i
							data-feather="list"></i>
						</a> <a href="invoice-grid.html" class="invoices-links"> <i
							data-feather="grid"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">상품등록</h5>
						</div>
						<div class="card-body">
							<form action="<%=contextPath %>/insert.pr" method="post" enctype="multipart/form-data"> <!-- 입력 폼 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">카테고리</label>
									<div class="col-md-10">
										<select class="form-select">
											<%for(Category c : clist){ %>
												<%if(c.getCategoryDetail() == null){ %>
												<option value="c.getCategoryNo()" name="categoryNo"><%= c.getCategoryName()%></option>
												<%}else{ %>
												<option value="c.getCategoryNo()" name="categoryNo"><%= c.getCategoryName()%> - <%=c.getCategoryDetail() %></option>
												<%}
											}%>
										</select>
									</div>
								</div><!-- 카테고리 -->
							
								<div class="form-group row">
									<label class="col-form-label col-md-2">상품이름</label>
									<div class="col-md-10">
										<input type="text" class="form-control" placeholder="상품이름을 입력하세요." name="pName" required>
									</div>
								</div><!-- 상품이름 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">가격</label>
									<div class="col-md-10">
										<input type="number" class="form-control"placeholder="가격을 입력하세요." name="pName" required>
									</div>
								</div><!-- 가격 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">상세설명</label>
									<div class="col-md-10">
										<input class="form-control" type="file" name="pDetailFile">
									</div>
								</div><!-- 상세설명 -->
								<div class="form-group row">
									<label class="col-form-label col-md-2">상품 총수량</label>
									<div class="col-md-10">
										<input type="number" class="form-control" name="pStock"placeholder="상품수량을 입력하세요." required >
									</div>
								</div><!-- 상품 총수량 -->
				
								<div class="form-group row">
									<label class="col-form-label col-md-2">상품 총수량
									</label>
									<div class="col-md-10">
										<table>
											<tbody id="table_1">
												<tr>
													<td>
														옵션 제목
														<button id="add" type="button" class="btn btn-primary btn-sm">+</button>
														<button id="remove" type="button" class="btn btn-primary btn-sm">-</button>
												</td>
											</tr>
										 </tbody>
										</table>
									</div>
								</div> <!-- 옵션 -->		
								<script>
									$(document).ready(function(){
										let count = 1;
										
										$('#add').click(function(){
											let option_1 = "<tr><td><input type='text' class='form-control' name='pStock' placeholder='1차 옵션을 입력하세요' required ></td></tr>"
											if(count <=3){
												$("#table_1").append(option_1);
												count++;
											}else {
												alert("너무 많습니다.");
											}
											
										});

										$('#remove').click()
									})
								</script>
								
								<div class="form-group row">
									<label class="col-form-label col-md-2">Readonly Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control" value="readonly"
											readonly="readonly">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Placeholder</label>
									<div class="col-md-10">
										<input type="text" class="form-control"
											placeholder="Placeholder">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-form-label col-md-2">Radio</label>
									<div class="col-md-10">
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 1
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 2
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio" name="radio">
												Option 3
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Checkbox</label>
									<div class="col-md-10">
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 1
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 2
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox" name="checkbox">
												Option 3
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Textarea</label>
									<div class="col-md-10">
										<textarea rows="5" cols="5" class="form-control"
											placeholder="Enter text here"></textarea>
									</div>
								</div>
								<div class="form-group mb-0 row">
									<label class="col-form-label col-md-2">Input Addons</label>
									<div class="col-md-10">
										<div class="input-group mb-3">
											<span class="input-group-text" id="basic-addon1">@</span> <input
												type="text" class="form-control" placeholder="Username"
												aria-label="Username" aria-describedby="basic-addon1">
											<button class="btn btn-primary" type="button">Button</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Input Sizes</h5>
						</div>
						<div class="card-body">
							<form action="#">
								<div class="form-group row">
									<label class="col-form-label col-md-2">Large Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control form-control-lg"
											placeholder=".form-control-lg">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Default Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control"
											placeholder=".form-control">
									</div>
								</div>
								<div class="form-group mb-0 row">
									<label class="col-form-label col-md-2">Small Input</label>
									<div class="col-md-10">
										<input type="text" class="form-control form-control-sm"
											placeholder=".form-control-sm">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>


	</div>
</body>
</html>