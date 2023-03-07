<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="com.kh.product.model.vo.Product"%>
    <%@page import="java.util.ArrayList"%>
    <%
    String title = (String)request.getAttribute("title");
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
 
 <br> <br> <br>

 <div align="center" class="butes">

    <button class="w-btn w-btn-gra1 w-btn-gra-anim side gift" type="button" value="전체">
      전체
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side gift" type="button" value="꽃">
      꽃다발
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side gift" type="button" value="화환">
      화환
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side gift" type="button" value="란">
      승진/개업
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side gift" type="button" value="식물">
	식물
    </button>


  </div>
<script>
  // 버튼 클릭 시 hidden input의 값을 해당 버튼의 value로 변경하고 form을 submit합니다.
  $(".gift").click(function () {
	  
	  console.log(giftName);

  
     var giftName =  $(this).val();
      
       $("#giftNameInput").val(giftName);

      var orderSelect = $("#orderSelect option[value='1']").val();
      
      console.log(orderSelect);
      
      var url = '<%=contextPath%>/gift.gi?giftName=' + giftName;
      
      if (orderSelect) {
        url += '&orderSelect=' + orderSelect;
      }
      
      console.log('@@@@@@@@@@@@@@@@@@@@');
      
      
      
      location.href = url;

    
  });
</script>

    
    
    
<div class="container text-center">
  <div class="row">
    <div class="col">
      <div align="right" class="container px-4 px-lg-5 mt-5">
        <form action="<%=contextPath%>/gift.gi" method="get">
          <input type="hidden" id="giftNameInput" name="giftName" value="전체">
          <select style="width: 200px" class="form-select" id="orderSelect" name="orderSelect" aria-label="Default select example">
            <option selected disabled><%=title%></option>
            <option value="1">최신순</option>
            <option value="2">판매순</option>
            <option value="3">리뷰순</option>
          </select>
          <button type="submit" style="display:none"></button>
        </form>
      </div>
    </div>
  </div>
</div>
    
    
    
    <script>

    
    $("#orderSelect").change(function() {


		// var url = '<%=contextPath%>/gift.gi?giftName=' + giftName;


		// orderSelect = $("#orderSelect").val();

		// if (orderSelect) {
		// 	url += '&orderSelect=' + orderSelect;
		// 	console.log('루룰라라랄라라');
		// }

    	
		//   location.href = url;
    	
       
       console.log('이거 타냐고오~~~~ 판매순,최신순 등등');
       
    	
    	  $("form").submit();
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