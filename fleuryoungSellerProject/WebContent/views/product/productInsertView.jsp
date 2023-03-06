<%@page import="com.kh.product.model.vo.Category" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<% ArrayList<Category> clist = (ArrayList<Category>)request.getAttribute("clist");
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		li {
			list-style: none;
		}

		.wrap-vertical {
			/* width: 500px;
			padding: 20px; */
			overflow: scroll;
			align: center;
			/* 가로 스크롤 */
			overflow: auto;
			white-space: nowrap;

		}
	</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %>


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
										href="<%=contextPath%>/productList.pr?sno=<%=loginSeller.getSelNo()%>">상품관리</a>
								</li>
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
								<form action="<%=contextPath %>/insert.pr" method="post"
									enctype="multipart/form-data"> <!-- 입력 폼 -->
									<div class="form-group row">
										<label class="col-form-label col-md-2">카테고리</label>
										<div class="col-md-10">
											<select class="form-select">
												<%for(Category c : clist){ %>
													<%if(c.getCategoryDetail()==null){ %>
														<option value="c.getCategoryNo()"
															name="categoryNo">
															<%= c.getCategoryName()%>
														</option>
														<%}else{ %>
															<option value="c.getCategoryNo()"
																name="categoryNo">
																<%= c.getCategoryName()%> -
																	<%=c.getCategoryDetail() %>
															</option>
															<%} }%>
											</select>
										</div>
									</div><!-- 카테고리 -->

									<div class="form-group row">
										<label class="col-form-label col-md-2">상품이름</label>
										<div class="col-md-10">
											<input type="text" class="form-control"
												placeholder="상품이름을 입력하세요." name="pName" required>
										</div>
									</div><!-- 상품이름 -->
									<div class="form-group row">
										<label class="col-form-label col-md-2">가격</label>
										<div class="col-md-10">
											<input type="number" class="form-control"
												placeholder="가격을 입력하세요." name="price" required>
										</div>
									</div><!-- 가격 -->
									<div class="form-group row">
										<label class="col-form-label col-md-2">상세설명</label>
										<div class="col-md-10">
											<input class="form-control" type="file"
												name="pDetailFile">
										</div>
									</div><!-- 상세설명 -->
									<div class="form-group row">
										<label class="col-form-label col-md-2">상품 총수량</label>
										<div class="col-md-10">
											<input id="sumStock" type="number" class="form-control"
												name="pStock" placeholder="상품 총수량 입력(옵션 입력시 미입력) "
												required>
										</div>
									</div><!-- 상품 총수량 -->

									<div class="form-group row">
										<label class="col-form-label col-md-2">옵션
											<button id="add" type="button"
												class="btn btn-primary btn-sm">+</button>
											<button id="remove" type="button"
												class="btn btn-primary btn-sm">-</button>
										</label>
										<div class="col-md-10">
											<table class="table table-bordered mb-0">
												<thead>
													<tr align="center">
														<td>
															1차옵션 제목
														</td>
														<td>
															2차옵션 제목
														</td>
														<td>
															옵션 가격
														</td>
														<td>
															옵션별 재고
														</td>
													</tr>

												</thead>
												<tbody id="table_1">
													<tr id="option_1">
													<!-- <tr style="display: none;"> -->
														<td style="display: none;">
															<input type='text' class='form-control-sm' name='optionTitle' placeholder='1차 옵션을 입력하세요' required>
															<button type='button' class='btn btn-primary btn-sm' onclick="add_1()">+</button>
															<button id='remove' type='button' class='btn btn-primary btn-sm' onclick="remove_2();">-</button>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='text' class='form-control' name='p2_1_name' placeholder='옵션 이름을 입력하세요' required></li>
															<li style="display: none;"><input type='text' class='form-control' name='p2_1_name' placeholder='옵션 이름을 입력하세요' required></li>
															<li style="display: none;"><input type='text' class='form-control' name='p2_1_name' placeholder='옵션 이름을 입력하세요' required></li>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_price' placeholder='추가 비용 입력' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_price' placeholder='추가 비용 입력' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_price' placeholder='추가 비용 입력' required></li>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_stock' placeholder='재고수량을 입력하세요' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_stock' placeholder='재고수량을 입력하세요' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_1_stock' placeholder='재고수량을 입력하세요' required></li>
														</td>
													</tr>

													<tr id="option_2">
														<!-- <tr style="display: none;"> -->
															<td style="display: none;">
																<input type='text' class='form-control-sm' name='optionTitle' placeholder='1차 옵션을 입력하세요' required>
																<button type='button' class='btn btn-primary btn-sm' onclick="add_2()">+</button>
																<button id='remove' type='button' class='btn btn-primary btn-sm' onclick="remove_2();">-</button>
															</td>
															<td style="display: none;">
																<li style="display: none;"><input type='text' class='form-control' name='p2_2_name' placeholder='옵션 이름을 입력하세요' required></li>
																<li style="display: none;"><input type='text' class='form-control' name='p2_2_name' placeholder='옵션 이름을 입력하세요' required></li>
																<li style="display: none;"><input type='text' class='form-control' name='p2_2_name' placeholder='옵션 이름을 입력하세요' required></li>
															</td>
															<td style="display: none;">
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_price' placeholder='추가 비용 입력' required></li>
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_price' placeholder='추가 비용 입력' required></li>
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_price' placeholder='추가 비용 입력' required></li>
															</td>
															<td style="display: none;">
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_stock' placeholder='재고수량을 입력하세요' required></li>
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_stock' placeholder='재고수량을 입력하세요' required></li>
																<li style="display: none;"><input type='number' class='form-control' name='p2_2_stock' placeholder='재고수량을 입력하세요' required></li>
															</td>
														</tr>
														<tr>

													<tr id="option_3">
													<!-- <tr style="display: none;"> -->
														<td style="display: none;">
															<input type='text' class='form-control-sm' name='optionTitle' placeholder='1차 옵션을 입력하세요' required>
															<button type='button' class='btn btn-primary btn-sm' onclick="add_3()">+</button>
															<button id='remove' type='button' class='btn btn-primary btn-sm' onclick="remove_3();">-</button>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='text' class='form-control' name='p2_3_name' placeholder='옵션 이름을 입력하세요' required></li>
															<li style="display: none;"><input type='text' class='form-control' name='p2_3_name' placeholder='옵션 이름을 입력하세요' required></li>
															<li style="display: none;"><input type='text' class='form-control' name='p2_3_name' placeholder='옵션 이름을 입력하세요' required></li>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_price' placeholder='추가 비용 입력' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_price' placeholder='추가 비용 입력' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_price' placeholder='추가 비용 입력' required></li>
														</td>
														<td style="display: none;">
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_stock' placeholder='재고수량을 입력하세요' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_stock' placeholder='재고수량을 입력하세요' required></li>
															<li style="display: none;"><input type='number' class='form-control' name='p2_3_stock' placeholder='재고수량을 입력하세요' required></li>
														</td>
													</tr>
													
													
													

												</tbody>
											</table>
										</div>
									</div> <!-- 옵션 -->

									<div class="">
										<label for="file" class="col-form-label col-md-2">대표
											이미지 </label>
										<img id="titleImg" width="150" height="150"
											onclick="chooseFile(1);"
											onerror="this.style.display='none'">
										<small>500px x 500px 크기의 이미지를 첨부해주세요. *대표 이미지 필수*</small>
									</div>
									<input type="file" name="file1" id="file1"
										style="display: none;" onchange="loadImg(this,1);" required>
									<br>

									<div>
										<label for="file" class="col-form-label col-md-3">서브
											이미지 (최대 9장까지 가능!)</label>
											<hr>
										<div class="wrap-vertical col-md-10">
											<table>
												<tr>
													<td>
														<img id="contentImg1" width="120"
															height="120" onclick="chooseFile(2);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg2" width="120"
															height="120" onclick="chooseFile(3);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg3" width="120"
															height="120" onclick="chooseFile(4);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg4" width="120"
															height="120" onclick="chooseFile(5);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg5" width="120"
															height="120" onclick="chooseFile(6);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg6" width="120"
															height="120" onclick="chooseFile(7);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg7" width="120"
															height="120" onclick="chooseFile(8);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg8" width="120"
															height="120" onclick="chooseFile(9);"
															onerror="this.style.display='none'">
													</td>
													<td>
														<img id="contentImg9" width="120"
															height="120" onclick="chooseFile(10);"
															onerror="this.style.display='none'">
													</td>

												</tr>
											</table>
										</div>
										<hr>
										<small></small>
									</div>
									<input type="file" name="file2" id="file2"
										style="display: none;" onchange="loadImg(this,2);" required>
									<input type="file" name="file3" id="file3"
										style="display: none;" onchange="loadImg(this,3);" required>
									<input type="file" name="file4" id="file4"
										style="display: none;" onchange="loadImg(this,4);" required>
									<input type="file" name="file5" id="file5"
										style="display: none;" onchange="loadImg(this,5);" required>
									<input type="file" name="file6" id="file6"
										style="display: none;" onchange="loadImg(this,6);" required>
									<input type="file" name="file7" id="file7"
										style="display: none;" onchange="loadImg(this,7);" required>
									<input type="file" name="file8" id="file8"
										style="display: none;" onchange="loadImg(this,8);" required>
									<input type="file" name="file9" id="file9"
										style="display: none;" onchange="loadImg(this,9);" required>
									<input type="file" name="file10" id="file10"
										style="display: none;" onchange="loadImg(this,10);"
										required>

									<br>

									<div class="form-group row">
										<label class="col-form-label col-md-2">할인율</label>
										<div class="col-md-10">
											<span class="radio">
												<label> <input type="radio" name="radio">
													없음 
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="radio" value="10">
													10% 
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="radio" value="20">
													20% 
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="radio" value="30">
													30% 
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="radio" value="40">
													40% 
												</label>
											</span>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-md-2">배송속성</label>
										<div class="col-md-10">
											<span class="radio">
												<label> <input type="radio" name="delivery" value="Y">
													당일배송
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="delivery" value="N">
													일반배송
												</label>
											</span>
											
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-md-2">카드여부</label>
										<div class="col-md-10">
											<span class="radio">
												<label> <input type="radio" name="card" value="Y">
													카드쓰기 승인
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="card" value="N">
													카드쓰기 거부
												</label>
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-md-2">상품환불여부</label>
										<div class="col-md-10">
											<span class="radio">
												<label> <input type="radio" name="return" value="Y">
													 상품환불 승인
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="return" value="N">
													상품환불 거부
												</label>
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-form-label col-md-2">선물 여부</label>
										<div class="col-md-10">
											<span class="radio">
												<label> <input type="radio" name="gift" value="Y">
													 O
												</label>
											</span>
											<span class="radio">
												<label> <input type="radio" name="gift" value="N">
													X
												</label>
											</span>
										</div>
									</div>
									
									
									<div align="center">
										<button type="button" class="btn btn-block" onclick="history.back();">목록가기</button>
										<button type="submit" class="btn btn-primary btn-block">등록하기</button>
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
 <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/feather.min.js"></script>
    <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="resources/plugins/apexchart/apexcharts.min.js"></script>
    <script src="resources/plugins/apexchart/chart-data.js"></script>
    <script src="resources/js/script.js"></script>
</body>

</html>