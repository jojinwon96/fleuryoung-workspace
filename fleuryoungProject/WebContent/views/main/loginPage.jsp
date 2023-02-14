<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String alertMsg = (String)request.getAttribute("alertMsg");	
	// 서비스 요청 전 menubar.jsp 로딩시 : null
	// 서비스 성공 후 menubar.jsp 로싱시 : alert로 띄어줄 메세지 문구
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
</head>

<body>

	<%@ include file="../common/header.jsp"%>
	
		<% if (alertMsg != null) { %>
	<script> 
		$(function (){
			$('.inputId').focus();
		});
	</script>
	<% session.removeAttribute("alertMsg"); %>
	<% } %>

	<div class="section pb-5 pt-5 pt-sm-2 text-center">
		<h6 class="mb-0 pb-3">
			<span>회원로그인 </span> <span>비회원 주문조회</span>
		</h6>
		<input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
		<label for="reg-log"></label>
		<div class="card-3d-wrap mx-auto">
			<div class="card-3d-wrapper">
				<div class="card-front">
					<div class="center-wrap">
						<div class="section text-center">
							<form action="/fleuryoungProject/login.me" method="post">
								<h4 class="mb-4 pb-3" id="loginLetter">회원로그인</h4>
								<div class="form-group">
									<input type="text" name="userId" class="form-style inputId"
										placeholder="아이디를 입력하세요" id="logemail" autocomplete="off">
									<i class="input-icon uil uil-at"></i>
								</div>
								<div class="form-group mt-2">
									<input type="password" name="userPwd" class="form-style"
										placeholder="비밀번호를 입력하세요" id="logpass" autocomplete="off">
									<i class="input-icon uil uil-lock-alt"></i>
								</div>
								<!-- <a href="#" class="btn mt-4">로그인</a> <br> -->
								<button type="submit" class="btn mt-4">로그인</button>
								<br>

							</form>
							<p class="mb-0 mt-4 text-center">
								<a href="#0" class="link">아이디찾기</a>
							</p>
							<p>|</p>
							<p class="mb-0 mt-4 text-center">
								<a href="#0" class="link">비밀번호찾기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="card-back">
					<div class="center-wrap">
						<div class="section text-center">
							<h4 class="mb-4 pb-3" id="searchOrder0317">비회원 주문조회</h4>
							<div class="form-group">
								<!-- <input type="text" name="logname" class="form-style" placeholder="Your Full Name" id="logname" autocomplete="off"> -->
								<i class="input-icon uil uil-user"></i>
							</div>
							<div class="form-group mt-2">
								<input type="email" name="logemail" class="form-style"
									placeholder="주문번호를 입력해주세요" id="logemail" autocomplete="off">
								<i class="input-icon uil uil-at"></i>
							</div>
							<div class="form-group mt-2">
								<input type="password" name="logpass" class="form-style"
									placeholder="주문시 입력하신 이메일을 입력해주세요" id="logpass"
									autocomplete="off"> <i
									class="input-icon uil uil-lock-alt"></i>
							</div>
							<a href="#" class="btn mt-4">주문조회</a> <br>
							<p class="mb-0 mt-4 text-center">
								<a href="#0" class="link">주문번호찾기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
</body>

</html>