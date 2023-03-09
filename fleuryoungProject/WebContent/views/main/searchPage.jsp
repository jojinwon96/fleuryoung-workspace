<%@page import="com.kh.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="${pageContext.request.contextPath}/resources/css/main_product_mini.css"
	rel="stylesheet" />

<!-- 이게 있어야지 별이 나온다 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<!-- 업버튼 -->


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<style>
.mini_like {
	cursor: pointer;
	
}

h5 {
	text-overflow: ellipsis;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
}

.productbox{
	cursor: pointer;
}
</style>
</head>
<body>

	<div class="wrap">

		<%@ include file="../../views/common/header.jsp"%>

		<script>
			$(function () {

			})
		</script>

		<!-- 드롭다운 -->

		<!--  업버튼 -->

		<div id="wrap">
			<a id="back-to-top" style="text-decoration: none;"></a>
		</div>
		
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-start">

					<%
						for (Product p : list) {
					%>
					<!-- 상품시작 -->
					<!-- 일반 배송 + 할인 없는 제품 -->
					<div class="productbox col mb-5">
						<div class="card h-100">
							<% if (p.getpDayDelivery().charAt(0) == 'Y') { %>
								<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; left: 0.5rem">당일배송
            					</div>
							<%} %>
							<!-- Product image-->
							<input class="hPid" type="hidden" name="pid" value="<%=p.getpId()%>">
							<h1 class="pid" hidden><%= p.getpId() %></h1>
							<img class="card-img-top"
								src="${pageContext.request.contextPath}<%=p.getMainImg() %>"
								alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 style="font-size: 15px" class="fw-bolder">
										<%=p.getpName()%>
									</h5>
									<div
										class="d-flex justify-content-center small text-warning mb-2">

										<%
											for (int i = 0; i < p.getReviewRating(); i++) {
										%>
										<div class="bi-star-fill"></div>
										<%
											}
										%>
										<span>&nbsp;(<%=p.getReviewCount()%>)
										</span>
									</div>
									<!-- Product price-->
									<!-- <span>58,000원</span> -->
									<span> <%=p.getpNetPrice()%>원
									</span>
								</div>
							</div>
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<!-- 찜하기, 장바구니 아이콘 -->
								<div class="container text-center">
									<div class="row">
										<div class="col">

											<!-- 클릭될때 찜하기 목록 추가(db에 담겨야함) + 아이콘 변화 -->
											<img class="mini_like" id="mini-like"
												src="${pageContext.request.contextPath}/resources/image/icon/like.png"
												alt="">

										</div>
										<!--
										 -->
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- 상품끝 -->
					<%
						}
					%>
					
					
	
		<h1>임시로 하드코딩</h1>				
 		<!-- 당일 배송 + 할인 있는 상품 -->
	
        <div class="col mb-5">
          <div class="card h-100">
            <!-- 당일 배송여부 -->
            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; left: 0.5rem">당일배송
            </div>
            <!-- 이미지 경로 -->
            <img class="card-img-top" src="../../resources/Image-mini/주황다발.JPG" alt="..." />
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center">
                <!-- 상품 이름 -->
                <h5 class="fw-bolder">히아신스 꽃다발</h5>
                <!-- 별점 -->
                <div class="d-flex justify-content-center small text-warning mb-2">
                  <div class="bi-star-fill"></div>
                  <div class="bi-star-fill"></div>
                  <div class="bi-star-fill"></div>
                  <div class="bi-star-fill"></div>
                  <div class="bi-star-fill"></div>
                  <!-- 리뷰수 노출 -->
                  <span>&nbsp;(25)</span>
                </div>
                <!-- 상품 가격 -->
                <span class="text-muted text-decoration-line-through">65,000원</span>
                <span> 48,000원</span>
              </div>
            </div>
            <!-- Product actions-->
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <!-- 찜하기, 장바구니 아이콘 -->
              <div class="container text-center">
                <div class="row">
                  <div class="col">

                    <!-- 클릭될때 찜하기 목록 추가(db에 담겨야함) + 아이콘 변화 -->
                    <img class="mini_like" src="../../resources/Image-mini/icon/like.png" alt="">

                  </div>
                  <div class="col">
                    <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                      <!-- a가 클릭되면 장바구니에 추가됐습니다 알람창 + 장바구니 보러가기 알람창 안내 -->
                      <img class="mini_shopping" src="../../resources/Image-mini/icon/add-to-basket.png" alt="">
                    </button>


                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                      aria-hidden="true">
                      <div class="modal-dialog ">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel" align="center">장바구니 추가</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                            해당 상품을 장바구니에 추가했습니다
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-outline-primary" data-bs-dismiss="modal">닫기</button>
                            <button type="button" class="btn btn-outline-success">장바구니 바로가기</button>
                          </div>
                        </div>
                      </div>
                    </div>


                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

					
					
					
					<script>
					
						$(function(){
							// 상품 이미지 클릭시 상품 상세 페이지로 이동
							$('.card-img-top').click(function(){
								let memId = "";
								
								<% if (loginUser != null && !loginUser.getMemId().equals("")) {%>
									memId = '<%= loginUser.getMemId()%>';
								<% }%>
								
								location.href = '<%=contextPath%>/pdetail.p?pid=' + $(this).prev().html() + "&memId=" + memId;
							})
							
						})
					</script>




				</div>
			</div>
		</section>
	</div>
	
	

</body>
</html>