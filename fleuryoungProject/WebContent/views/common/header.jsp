<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath(); // /jsp

	Member loginUser = (Member) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
	
	
	<!-- 혜민이 css -->
	
	<link
	href="${pageContext.request.contextPath}/resources/css/mini_plz.css?after"
	rel="stylesheet">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/btn5.css?after">
	
	<!-- 
   <script src="${pageContext.request.contextPath}/resources/js/mini/mini_drop.js"></script>
	
	 -->
  
  <!-- 부트스트랩 아이콘 출력 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  


	<!-- 여기까지 혜민이꺼 -->

	
	
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	
</head>
<body>
	<div>
		<div class="header-top">
			<div class="header-top-top">
				<%
					if (loginUser == null) {
				%>
				<a href="<%=contextPath%>/joinpage.me" class="join">회원가입</a>
				<div class="bar"></div>
				<a href="<%=contextPath%>/loginpage.me" class="login">로그인</a>
				<div class="bar"></div>
				<a href="${pageContext.request.contextPath}/views/board/notice.jsp"
					class="board">고객센터</a>
				<%
					} else {
				%>
				<a class="join"><%=loginUser.getMemName()%> 님</a>
				<div class="bar"></div>
				<a href="<%=contextPath%>/logout.me" class="logout">로그아웃</a>
				<div class="bar"></div>
				<a href="${pageContext.request.contextPath}/views/board/notice.jsp"
					class="board">고객센터</a>
				<%
					}
				%>

			</div>
			<div class="header-top-bottom">
				<div class="header-top-bottom-left">
					<a href="<%=contextPath%>/mainPage.jsp"><img
						src="${pageContext.request.contextPath}/resources/image/Fleuryoung.png"
						class="logo"></a>
				</div>

				<div class="header-top-bottom-mid">
					<div id="input-panel" class="default-input-panel">
						<form id="todo-form" class="form">
							<input type="text" id="main-search" placeholder="검색어를 입력해주세요"
								required class="main-input">
						</form>
						<button type="submit" class="main-input-btn" form="todo-form"></button>
					</div>
					<div class="real-time-panel" style="display: none;">
						<div class="real-time-title">
							<h3 class="rtTitle">최근 검색어</h3>
							<div class="real-time-list">
								<ul>
									<!-- db에서  -->
									<!-- <li><img src="/images/smallSearch.png"><a href="#">꽃다발</a><button class="real-time-delete"></button></li>
                                        <li><img src="/images/smallSearch.png"><a href="#">카네이션</a><button class="real-time-delete"></button></li>
                                        <li><img src="/images/smallSearch.png"><a href="#">튤립</a><button class="real-time-delete"></button></li>
                                        <li><img src="/images/smallSearch.png"><a href="#">안개꽃</a><button class="real-time-delete"></button></li>
                                        <li><img src="/images/smallSearch.png"><a href="#">선물</a><button class="real-time-delete"></button></li> -->
								</ul>
								<div class="real-time-allDelete off">전체삭제</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-top-bottom-right">
					<div class="cartMyPage-panel">
						<div class="cart-panel">
							<!-- <button class="cart-btn"><a href="/main/cartPage.html"></a></button> -->
							<img src="" class="cart-btn"></a>
						</div>
						<div class="myPage-panel">
							<button type="button" class="mypage-btn"></button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			$(function() {
				$(".cart-btn").click(function() {
					<% if (loginUser != null && !loginUser.equals("")) {%>
						location.href = '<%=contextPath%>/cartpage.me?memId=<%=loginUser.getMemId()%>';
					<% } %>
				})
			})
		</script>
		
		<header>
			<!-- <div class="header-nav-panel"> -->
			<div class="header-nav-panel">
				<ul class="header-nav-ul">
					<li class="best-li"><a href="<%=contextPath%>/bestPage.mi"><span class="best-span">베스트</span></a></li>
					<li class="type-li"><a href="#"><span class="type-span">종류별</span></a></li>
					<li class="present-li"><a href="<%=contextPath%>/gift.gi"><span class="present-span">선물</span></a></li>
					<li class="delivery-li"><a href="<%=contextPath%>/delivery.de"><span class="delivery-span">당일배송</span></a>
					</li>
					<li class="props-li"><a href="<%=contextPath%>/props.pr"><span class="props-span">소품</span></a></li>
					<div class="rank-panel">
						<ul class="rank-ul">
							<!-- 자바에서 -->
							<li><a href=""><span>1</span>장미꽃</a></li>
							<li><a href="#"><span>2</span>나팔꽃</a></li>
							<li><a href="#"><span>3</span>무궁화</a></li>
							<li><a href="#"><span>4</span>튤립</a></li>
							<li><a href="#"><span>5</span>안개꽃</a></li>
							<li><a href="#"><span>6</span>꽃다발</a></li>
							<li><a href="#"><span>7</span>카네이션</a></li>
							<li><a href="#"><span>8</span>들꽃</a></li>
							<li><a href="#"><span>9</span>국화꽃</a></li>
							<li><a href="#"><span>10</span>목화</a></li>
						</ul>
					</div>
					<span class="downButton"> <img
						src="${pageContext.request.contextPath}/resources/image/downButton.png"
						style="width: 15px;">
					</span>

				</ul>
			</div>
			
			<div class="header-nav-hidden-panel"  style="display: none;">
			<!-- <div  > -->
			
			<form id="myForm" action="<%=contextPath%>/typePage.mi" method="post" >
			
				<div class="header-type-panel">
					<ul class="mini-header">
					
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower1.jpg" alt="">
    <span>꽃바구니</span>
    <input type="hidden" name="value" value="1">
     <input type="hidden" name="categoryName" value="꽃바구니">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower2.jpg" alt="">
    <span>꽃다발</span>
     <input type="hidden" name="value" value="2">
      <input type="hidden" name="categoryName" value="꽃다발">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower3.jpg" alt="">
    <span>축하화환</span>
     <input type="hidden" name="value" value="3">
       <input type="hidden" name="categoryName" value="축하화환">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower4.jpg" alt="">
    <span>근조화환</span>
     <input type="hidden" name="value" value="4">
       <input type="hidden" name="categoryName" value="근조화환">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower5.jpg" alt="">
    <span>동양란</span>
     <input type="hidden" name="value" value="7">
       <input type="hidden" name="categoryName" value="동양란">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower6.jpg" alt="">
    <span>서양란</span>
     <input type="hidden" name="value" value="8">
       <input type="hidden" name="categoryName" value="서양란">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower7.jpg" alt="">
    <span>수경식물</span>
     <input type="hidden" name="value" value="9">
       <input type="hidden" name="categoryName" value="수경식물">
  </a>
</li>
<li>
  <a href="<%=contextPath%>/typePage.mi" class="type-link">
    <img src="${pageContext.request.contextPath}/resources/image/flower8.jpg" alt="">
    <span>조화</span>
     <input type="hidden" name="value" value="12">
       <input type="hidden" name="categoryName" value="조화">
  </a>
</li>
					
		
						<!-- 꽃바구니 -->
						<!-- 꽃다발 -->
						<!-- 주문제작 -->
						<!-- 축하화환 -->
						<!-- 근조화환 -->
						<!-- 동/서양란 -->
						<!-- 수경식물 -->
						<!-- 생화 -->
						<!-- 반려식물 -->
						<!-- 조화 -->
					</ul>
				</div>
				<button type="submit" style="display: none"></button>
</form>
				
			</div>
	</div>
	</header>
	
	</div>












	<div class="rank-list-panel default-rank-list-panel"
		style="display: none;">
		<div class="rank-list-title">
			<h3 class="rank-title">실시간 인기 검색어</h3>
			<div class="rank-list">
				<ul>
					<!-- 자바에서 -->
					<li><a href="#"><span class="number">1</span><span>장미꽃</span></a></li>
					<li><a href="#"><span class="number">2</span><span>나팔꽃</span></a></li>
					<li><a href="#"><span class="number">3</span><span>무궁화</span></a></li>
					<li><a href="#"><span class="number">4</span><span>튤립</span></a></li>
					<li><a href="#"><span class="number">5</span><span>안개꽃</span></a></li>
					<li><a href="#"><span class="number">6</span><span>꽃다발</span></a></li>
					<li><a href="#"><span class="number">7</span><span>카네이션</span></a></li>
					<li><a href="#"><span class="number">8</span><span>들꽃</span></a></li>
					<li><a href="#"><span class="number">9</span><span>국화꽃</span></a></li>
					<li><a href="#"><span class="number">10</span><span>목화</span></a></li>
				</ul>
			</div>
			<div class="rank-close-panel">
				<img
					src="${pageContext.request.contextPath}/resources/image/close.png"
					class="rank-close-btn">
			</div>
		</div>
	</div>



	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>


</body>
</html>