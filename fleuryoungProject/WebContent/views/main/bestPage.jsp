<%@page import="com.kh.product.model.vo.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.kh.product.model.vo.Product"%>
    <%@page import="java.util.ArrayList"%>
    <%
   ArrayList<Category> categoryList = (ArrayList<Category>)request.getAttribute("categoryList");
   
    ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fleuryoung</title>



	
	
	
	
</head>
<body>
    <%@ include file = "../common/header.jsp" %>   
    
      <!-- 체크박스 -->
     <br><br><br><br>

 <div class="container_check">
    <table class="ck_table_op">
        <tr>
            <th>금액대별</th>
            <td>
            
                <input type="radio" name="amount" class="total" id="amount_total" value="0" checked>
                <label for="amount_total">전체</label>
          
            </td>
            <td>
                <input type="radio" name="amount" id="amount_3less" value="30000">
                <label for="amount_3less">3만원 이하</label>
            </td>
            <td>
                <input type="radio" name="amount" id="amount_5less" value="50000">
                <label for="amount_5less">5만원 이하 </label>
            </td>
            <td>
                <input type="radio" name="amount" id="amount_8less" value="80000">
                <label for="amount_8less">8만원 이하 </label>
            </td>
            <td>
                <input type="radio" name="amount" id="amount_8over" value="80001">
                <label for="amount_8over">8만원 이상</label>
            </td>
        </tr>
        <tr>
            <th>할인율</th>
            <td>
                <input type="radio" name="discount" class="total" id="discount_total" value="ck_discount_total" checked>
                <label for="discount_total">전체</label>
            </td>
            <td>
                <input type="radio" name="discount" id="discount_10" value="ck_discount_10">
                <label for="discount_10">10%</label>
            </td>
            <td>
                <input type="radio" name="discount" id="discount_20" value="ck_discount_20">
                <label for="discount_20">20%</label>
            </td>
            <td>
                <input type="radio" name="discount" id="discount_30" value="ck_discount_30">
                <label for="discount_30">30%</label>
            </td>
            <td>
                <input type="radio" name="discount" id="discount_50" value="ck_discount_50">
                <label for="discount_50">40% 이상</label>
            </td>
        </tr>
        <tr>
            <th>당일배송</th>
            <td>
                <input type="radio" name="rocket_delivery" class="total" id="rocket_delivery_total"
                    value="ck_rk_deliverty_total" checked>
                <label for="rocket_delivery_total">전체</label>
            </td>
            <td>
                <input type="radio" name="rocket_delivery" id="rocket_delivery_yes" value="ck_rk_delivery_y">
                <label for="rocket_delivery_yes">당일 배송만</label>
            </td>
            <td>
             
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
   </table>
   </div>
 
    
    <script>
    
  
    
    
    
    </script>
    
    
    
 <div class="bestReviewBtn">

    <button class="w-btn w-btn-gra1 w-btn-gra-anim side bestBtn" name="saleBestBtn" value="1" type="button">
      판매 베스트
    </button>
    <button class="w-btn w-btn-gra1 w-btn-gra-anim side bestBtn" name="reviewBestBtn" value="2" type="button">
      리뷰수 베스트
    </button>

  </div>
    
    
<script >

$(function(){
    $(".bestBtn").click(function(){
    	
      let setNum = $(this).val();
      
      //location.href = '<%=contextPath%>/bestPage.mi?value=' + setNum;
      
      $.ajax({
	      url: '<%=contextPath%>/bestPage.mi',
	      type: 'POST',
	      data: {
	        value: setNum
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