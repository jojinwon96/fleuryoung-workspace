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

<style>
	.real-time-list a{
		cursor: pointer;
	}
	
	.keywords,
	.keyword{
		color: black;
		cursor: pointer;
	}
</style>
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
				<a
					class="board">고객센터</a>
				<%
					} else {
				%>
				<a class="join"><%=loginUser.getMemName()%> 님</a>
				<div class="bar"></div>
				<a class="logout" onclick="location.replace('<%=contextPath%>/logout.me')">로그아웃</a>
				<div class="bar"></div>
				<a
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
							<% if (loginUser != null) { %>
					        <span class="cart-count position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
					            
					            <span class="visually-hidden">unread messages</span>
					          </span>
					        <% } %>
					    </button>
					    <% if (loginUser != null && !loginUser.getMemId().equals("")) { %>
						<form action="<%= contextPath %>/myPageMain.my" method="post">
	                  <div class="myPage-panel">
	                     <button type="submit" class="mypage-btn"></button>
	                  </div>
	                  </form>
	                  <% } else { %>
		                  <div class="myPage-panel">
		                     <button type="submit" class="mypage-btn"></button>
		                  </div>
	                  <% } %>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			$(function() {
				$(".cart-panel").click(function() {
					<% if (loginUser != null && !loginUser.equals("")) {%>
						location.href = '<%=contextPath%>/cartpage.me?memId=<%=loginUser.getMemId()%>';
					<% } %>
				})
				
				$(".board").click(function(){
					location.href = '<%=contextPath%>/boardPage.b';
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
						</ul>
					</div>
					<span class="downButton" style="margin-left:10px"> <img
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
				<ul class="real-ul">

				</ul>
			</div>
			<div class="rank-close-panel">
				<img
					src="${pageContext.request.contextPath}/resources/image/close.png"
					class="rank-close-btn">
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			$(document).on('click', '.mini_like', function () {
				let chk = 0;
				let memId = ""
				let pId = $(this).parents(".productbox").find(".pid").html();
				<% if (loginUser != null && !loginUser.getMemId().equals("")) { %>
					memId = '<%= loginUser.getMemId() %>';
				<% } %>
				
				<%if (loginUser == null) {%>
						console.log("null임");
						alert("로그인이 필요한 기능입니다.");
				<%} else {%>
						if ($(this).attr("src") == "<%=contextPath%>/resources/image/icon/like.png") {
						    $(this).attr("src", "<%=contextPath%>/resources/image/icon/love_full.png")
						    chk = 1;
						} else {
							$(this).attr("src", "<%=contextPath%>/resources/image/icon/like.png")
							chk = 0;
						}
						
						 $.ajax({
     		                    // 요청보내기
     		                    url : "updateWishList.m", // 어느 url로 보낼 건지
     		                    type : "post", // 요청방식 지정
     		                    traditional :true,	
     		                    //dataType : "json",
     		                    data : {memId:memId, pId:pId, check:chk}, 
     		                    success : function(result) { // 성공시 응답 데이터가 자동으로 매개변수로 넘어옴
     		                        if (result > 0){
     		                        	alert("찜콩~");
     		                        } else {
     		                        	alert("안찜콩~");
     		                        }
     		                    },

     		                    error : function(){
     		                        console.log("ajax 통신 실패");
     		                    },

     		                    complete : function(){
     		                        console.log("ajax 통신 성공 여부와 상관없이 무조건 호출!")
     		                    }
     		                    
     		               }); 
   			    <%}%>
			})
			
			<% if (loginUser != null) {%>
				$.ajax({
			         url: '<%=contextPath%>/cartCount.p',
			         type: 'POST',
			         data: {
			           memId: '<%=loginUser.getMemId()%>'
			         },
			         success: function(count) {
			        	console.log("성공~~");
			           $(".cart-count").html(count);
			         },
			         error: function() {
			           alert('에러 발생!');
			         }
			     });
			<% } %>
			
			
			let mId = "";
			<% if (loginUser != null && !loginUser.getMemId().equals("")){ %>
				mId = "<%=loginUser.getMemId()%>";
			<% } %>
			
		    
 		    $(".main-input-btn").click(function(){
		    	$.ajax({
	                 // 요청보내기
	                 url : "insertKeyword.p", // 어느 url로 보낼 건지
	                 type : "post", // 요청방식 지정
	                 traditional :true,	
	                 //dataType : "json",
	                 data : {memId:mId, keyword:$(".main-input").val()}, 
	                 success : function(result) { // 성공시 응답 데이터가 자동으로 매개변수로 넘어옴
	                 },

	                 error : function(){
	                     console.log("ajax 통신 실패");
	                 },

	                 complete : function(){
	                     console.log("ajax 통신 성공 여부와 상관없이 무조건 호출!")
	                 }
	             });   
			    location.href = '<%=contextPath%>/searchPage.p?keyword=' + $(".main-input").val();
		    }) 
		    
		    
		    // 실시간 검색어
		    function realTimeSearh(){
 		    	let realUl = $(".real-ul");
 		    	let rankUl = $(".rank-ul");
 		    	$.ajax({
	                 // 요청보내기
	                 url : "selectRealTimeSearch.p", // 어느 url로 보낼 건지
	                 type : "post", // 요청방식 지정
	                 traditional :true,	
	                 data : {}, 
	                 success : function(list) { // 성공시 응답 데이터가 자동으로 매개변수로 넘어옴
	                	 $(".real-ul").children("li").each(function(){
	                		 $(this).remove();
	                	 })
	                	 
	                	 $(".rank-ul").children("li").each(function(){
	                		 $(this).remove();
	                	 })
	                	 
	                	 for (let i in list){
		                	  console.log("과연 : " + list[i].keyWord);
	                		 if (list[i].keyWord != null){
		                		 realUl.append("<li><a class=\"keyword\"><span class=\"number\">" + (Number(i)+1) + "</span><span class=\"search-li\"></span><span class=\"keywords\">"+ list[i].keyWord +"</span></a></li>");
		                		 rankUl.append("<li><a class=\"keywords\"><span>" + (Number(i)+1) + "</span>" + list[i].keyWord + "</a></li>");
	                		 }
	                	 }
	                	 
	                 },

	                 error : function(){
	                     console.log("ajax 통신 실패");
	                 },

	                 complete : function(){
	                     console.log("ajax 통신 성공 여부와 상관없이 무조건 호출!")
	                 }
	             });   
 		    }
 		    
 		   	 realTimeSearh();   
 		    
 		   	 // 실시간
 	   		 //setInterval(realTimeSearh, 30000);
		    
		  });
		
		$(document).ready(function() {
			
			$(document).on("click",".keywords", function(){
				location.href = '<%=contextPath%>/searchPage.p?keyword=' + $(this).html();
			})
		    
			
		})
		
						$(document).ready(function(){
							updateLike();
						})
					
						function updateLike(){
								<% if (loginUser != null && !loginUser.getMemId().equals("")) { %>
									let memberId = "";
									memberId = '<%= loginUser.getMemId()%>';
										$.ajax({
						                    url : "updateLike.p", // 어느 url로 보낼 건지
						                    type : "post", // 요청방식 지정
						                    traditional :true,	
						                    data : {memId:memberId}, 
						                    success : function(list) { // 성공시 응답 데이터가 자동으로 매개변수로 넘어옴
						                    	console.log("성공입니다~");
						                    	$(".hPid").each(function(){
						                    		console.log($(this).val());
							                    	for (let i in list){
							                    		if (list[i].pId == Number($(this).val())){
							                    			console.log("같다~");
							                    			$(this).parents(".productbox").find("#mini-like").attr("src", "${pageContext.request.contextPath}/resources/image/icon/love_full.png");
							                    		}
							                    	}		
						                    	})
						                    },
						
						                    error : function(){
						                        console.log("ajax 통신 실패");
						                    },
						
						                    complete : function(){
						                        console.log("ajax 통신 성공 여부와 상관없이 무조건 호출!")
						                    }
						                    
						               });  
								<% } %> 
						 }
	</script>
	
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>


</body>
</html>