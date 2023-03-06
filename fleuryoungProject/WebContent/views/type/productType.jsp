<%@page import="com.kh.product.model.vo.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.kh.product.model.vo.Product"%>
    <%@page import="java.util.ArrayList"%>
    <%
  
    ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




    <%@ include file = "../common/header.jsp" %>   
    
    
<nav class="sidebar close">
	<div class="togright">
		<i class='bi bi-toggle-off toggle minitoggle'></i>
	</div>
	<div class="menu-bar hero__categories hero__categories__all">
		<div class="menu search-box">
			<ul class="menu-links" style="padding: 5px; ">
			
			
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="1">꽃바구니</span>
					</a>
				</li>
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="2">꽃다발</span>
					</a>
				</li>

				<li class="clickmenu dropdown-trigger">
					<a href="#" class="cateName" >
						<span class="text nav-text cateDetailName">화환 Ｖ</span>

					</a>

					<ul class="hide sub-menu">
						<li class="scateName" value="3"><a href="#" >근조화환</a></li>
						<li class="scateName" value="4"><a href="#" >축하화환</a></li>
					</ul>

				</li>
							<li class="clickmenu">
					<a href="#" class="cateName" >

						<span class="text nav-text scateName" value="5">분재</span>
					</a>
				</li>

				<li class="clickmenu">
					<a href="#" class="cateName" >

						<span class="text nav-text scateName" value="6">공기정화</span>
					</a>
				</li>
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="7">동양란</span>
					</a>
				</li>
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="8">서양란</span>
					</a>
				</li>
				
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="9">수경식물</span>
					</a>
				</li>
				<li class="clickmenu">
					<a href="#" class="cateName" >
						<span class="text nav-text scateName" value="10">생화</span>
					</a>
				</li>
				<li class="clickmenu dropdown-trigger">
					<a href="#" class="cateName" >
						
						<span class="text nav-text cateDetailName">반려식물 Ｖ</span>
					</a>
					<ul class="hide sub-menu">
						<li class="scateName" value="11"><a href="#" >미니다육</a></li>
						<li class="scateName" value="12"><a href="#" >조화</a></li>
					</ul>
				</li>
				<li class="clickmenu dropdown-trigger">
					<a href="#" class="cateName">
						<span class="text nav-text cateDetailName">소품 Ｖ</span>
					</a>
					<ul class="hide sub-menu">
						<li class="scateName" value="13"><a href="#" >원예가위</a></li>
						<li class="scateName" value="14"><a href="#" >화분</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>


<script>



$(function() {
  // scateName 클릭 이벤트
  $('.scateName').click(function() {
	  var categoryNo = $(this).attr('value').trim();// 클릭한 카테고리명 가져오기
	  // 

    console.log(categoryNo);
	  
	  
    $.ajax({
      url: '<%=contextPath%>/typePage.mi',
      type: 'POST',
      data: {
    	  categoryNo: categoryNo
      },
      success: function(html) {
        $('body').html(html); // 받은 HTML 코드로 현재 페이지를 새로 그림
        sidebar();
      },
      error: function() {
        alert('에러 발생!');
      }
    });
  });
  
});

</script>


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
											<img class="mini_like"
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
					

	<script>
						$(function(){
							// 상품 이미지 클릭시 상품 상세 페이지로 이동
							$('.card-img-top').click(function(){
								location.href = '<%=contextPath%>/pdetail.p?pid=' + $(this).prev().html();
							})
						})
					</script>




				</div>
			</div>
		</section>
	</div>


  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  <div id="wrap">
    <a id="back-to-top" style="text-decoration: none;"></a>
  </div>

</body>
</html>