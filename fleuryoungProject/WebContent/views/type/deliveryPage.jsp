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
    
    
    
  <br><br>

 

  <div align="center" class="butes">

    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      전체
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      꽃다발
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      꽃바구니
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      근조화환
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      축하화환
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      승진/개업
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side delivery" type="button">
      분재
    </button>


  </div>
    
    
    <script >
    
    
    $(function() {
    	  // 카테고리 버튼 클릭 이벤트
    	  $('.delivery').click(function() {
    	    var categoryName = $(this).text().trim(); // 클릭한 버튼의 텍스트를 가져옴

    	    console.log(categoryName);
    	    
    	    $.ajax({
    	      url: '<%=contextPath%>/delivery.de',
    	      type: 'POST',
    	      data: {
    	        categoryName: categoryName
    	      },
    	      success: function(html) {
    	        $('body').html(html); // 받은 HTML 코드로 현재 페이지를 새로 그림
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
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>