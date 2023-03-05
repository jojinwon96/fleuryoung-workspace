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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	
	<!-- 뒤로가기시 무조건 메인페이지 -->
	<script type="text/javascript">
       window.addEventListener( "pageshow", function ( event ) {
         var historyTraversal = event.persisted || 
                                ( typeof window.performance != "undefined" && 
                                     window.performance.navigation.type === 2 );
         if ( historyTraversal ) {
           // Handle page restore.
           window.location.reload();
         }
       });
    </script>
    
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
				<a class="logout" onclick="location.replace('<%=contextPath%>/logout.me')">로그아웃</a>
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
						<button type="button" class="cart-panel btn position-relative">
					        <span class="cart-count position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
					            91+
					            <span class="visually-hidden">unread messages</span>
					          </span>
					    </button>
						<div class="myPage-panel">
							<button class="mypage-btn"></button>
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
			<div class="header-nav-panel">
				<ul class="header-nav-ul">
					<li class="best-li"><span class="best-span">베스트</span></li>
					<li class="type-li"><span class="type-span">종류별</span></li>
					<li class="present-li"><span class="present-span">선물</span></li>
					<li class="delivery-li"><span class="delivery-span">당일배송</span>
					</li>
					<li class="props-li"><span class="props-span">소품</span></li>
					<div class="rank-panel">
						<ul class="rank-ul">
							<!-- 자바에서 -->
							<li><a href="#"><span>1</span>장미꽃</a></li>
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
			<div class="header-nav-hidden-panel" style="display: none;">
				<div class="header-type-panel">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>바구니</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>꽃다발</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>주문제작</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>축하화환</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>근조화환</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>동/서양란</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>수경식물</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>생화</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>반려식물</span></a></li>
						<li><img
							src="${pageContext.request.contextPath}/resources/image/flower-bouquet.png"
							alt=""><a href="#"><span>조화</span></a></li>

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