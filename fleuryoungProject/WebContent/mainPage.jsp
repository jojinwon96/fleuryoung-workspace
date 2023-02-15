<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Fleuryoung</title>

<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/resources/css/main_product_mini.css" rel="stylesheet" />

<!-- 이게 있어야지 별이 나온다 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<!-- 업버튼 -->
<script src="${pageContext.request.contextPath}/resources/js/mini_drop.js"></script>

<style>
.mini_like {
	cursor: pointer;
}
</style>
</head>

<body style="padding-right: 0px;">

	<div class="wrap">

		<%@ include file="views/common/header.jsp"%>

		<!-- 배너 시작 -->
		<div id="carouselExampleAutoplaying" class="carousel slide b"
			data-bs-ride="carousel" style="z-index: 1;">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="https://product-image.kurly.com/cdn-cgi/image/quality=85/banner/main/pc/img/dcb8ce26-b7a6-4d2c-a67f-81cc7cc2e938.jpg"
						class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- 배너 끝 -->

		    <script>
		    	$(function(){
					    location.href = '<%=contextPath%>/Best.p';
		    	})
    		</script>
	
		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-start">



					<!-- 상품시작 -->
					<!-- 일반 배송 + 할인 없는 제품 -->
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Product image-->
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/resources/image/flower-imgaes/bouquet/bouquet_01/01.PNG" alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">꽃다발</h5>
									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<div class="bi-star-fill"></div>
										<span>&nbsp;(87)</span>
									</div>
									<!-- Product price-->
									<span>58,000원</span>
								</div>
							</div>
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<!-- 찜하기, 장바구니 아이콘 -->
								<div class="container text-center">
									<div class="row">
										<div class="col">

											<!-- 클릭될때 찜하기 목록 추가(db에 담겨야함) + 아이콘 변화 -->
											<img class="mini_like"
												src="${pageContext.request.contextPath}/resources/image/icon/like.png" alt="">

										</div>
										<div class="col">
											<button type="button" data-bs-toggle="modal"
												data-bs-target="#exampleModal">
												<!-- a가 클릭되면 장바구니에 추가됐습니다 알람창 + 장바구니 보러가기 알람창 안내 -->
												<img class="mini_shopping"
													src="${pageContext.request.contextPath}/resources/image/icon/add-to-basket.png"
													alt="">
											</button>


											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog ">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="exampleModalLabel"
																align="center">장바구니 추가</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">해당 상품을 장바구니에 추가했습니다</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-outline-primary"
																data-bs-dismiss="modal">닫기</button>
															<button type="button" class="btn btn-outline-success">장바구니
																바로가기</button>
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
					<!-- 상품끝 -->






				</div>
			</div>
		</section>
	</div>


	<!-- <script src="resources/js/jquery-3.1.1.min.js"></script>
    <script src="resources/js/scripts.js"></script> -->



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>

</html>