<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Fleuryoung</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
</head>

<body style="padding-right: 0px;">

	<div class="wrap">

		<%@ include file = "../common/header.jsp" %>

		<!-- content 시작 -->
		<div class="container">
            
        </div>
		<div class="notice">
			<div class="noticeMenu">
				<div class="noticeTitle">고객센터</div>
				<ul class="tabs-nav">
					<li><a href="#tab1" class="noticeCategory">공지사항</a></li>
					<li><a href="#tab2" class="noticeCategory">자주하는 질문</a></li>
				</ul>
			</div>
			<div class="noticeContent">
				<section class="tabs-panel" id="tab1">
					<div class="noticeContentTitle">
						<div id="ncTitle">
							<h2>공지사항</h2>
						</div>
					</div>
					<div class="ncColumn">
						<div class="colNum">번호</div>
						<div class="colTitle">제목</div>
						<div class="colDate">작성일</div>
					</div>
					<ul class="contentNo">
						<!-- db에서 가져옴? -->
						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">1</div>
									<div class="rowTitle">[안내] 개인정보처리방침 개정 내용 사전안내</div>
									<div class="rowDate">2023.01.24</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">안녕하세요 고객님, 개인정보처리방침 변경 예정입니다.</div>
						</li>
						<!-- -->

						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">2</div>
									<div class="rowTitle">[안내] FLEURYOUNG 오픈</div>
									<div class="rowDate">2023.01.24</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">안녕하세요 고객님, FLEURYOUNG 오픈일은 4월
								15일입니다.</div>
						</li>
						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">3</div>
									<div class="rowTitle">[안내] 추석 연휴 배송 지연 안내</div>
									<div class="rowDate">2023.01.24</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">고객님의 양해 부탁드리며, 아래 내용 확인하셔서 이용에 불편
								없으시기를 바랍니다.</div>
						</li>
						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">4</div>
									<div class="rowTitle">[필독] 꽃값 폭등으로 인한 가격 인상 안내</div>
									<div class="rowDate">2023.01.24</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">안녕하세요, 고객님 현재 꽃 수입 지연, 전세계적인 물가인상으로
								인한 꽃값 폭등,전쟁 고유가로 인한 물류배송차질로 인해 일부 상품의 가격인상을 점차적으로 적용하게 되었습니다.
								불가피한 상황으로 가격을 인상하게 된 점 너그러히 양해부탁드립니다. 감사합니다.</div>
						</li>
						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">5</div>
									<div class="rowTitle">[안내] 주소변경과 주문내용 변경</div>
									<div class="rowDate">2023.01.24</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">고객님들이 게시판에 주소변경과 주문내용 변경을 요청하시는 분들이
								계신데 게시판에 글을 쓰시면 빠른 변경을 도와드리기가 어려워 변경 요청하신 사항이 제대로 변경되지 않을 수가
								있습니다 주소변경과 주문내용 변경 시에는 꼭!!! 전화주셔서 변경요청 부탁드립니다 감사합니다 좋은하루되세요~</div>
						</li>
					</ul>
				</section>

				<section class="tabs-panel" id="tab2" style="display: none;">
					<div class="noticeContentTitle">
						<div id="ncTitle">
							<h2>자주하는 질문</h2>
						</div>
					</div>
					<div class="ncColumn">
						<div class="colNum2">번호</div>
						<div class="colCategory">카테고리</div>
						<div class="colTitle2">제목</div>
					</div>
					<ul class="contentNo">
						<!-- DB에서 가져옴? -->
						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">1</div>
									<div class="rowCategory">주문</div>
									<div class="rowTitle2">주문한 내역은 어디에서 확인하나요?</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">■ 마이페이지 -주문배송 - 주문 내역</div>
						</li>

						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">2</div>
									<div class="rowCategory">회원</div>
									<div class="rowTitle2">아이디,비밀번호를 잊어버렸습니다.</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">■ 아이디, 비밀번호 찾기 안내 - 하기 경로를 통해 아이디 및
								비밀번호 찾기가 가능하며, 임시 비밀번호의 경우 회원가입 시 등록한 이메일 주소로 발송 됩니다. ▣ 가입시 기재한
								메일 주소가 기억나지 않으시거나 오류가 발생하는 경우 고객센터로 문의 바랍니다. ▣ 상담시에는 고객님의
								개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.
							</div>
						</li>

						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">3</div>
									<div class="rowCategory">회원 서비스</div>
									<div class="rowTitle2">쿠폰은 어떻게 사용하나요?</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">■ Flueryoung에서 발행한 쿠폰은 "주문 결제" 단계에서
								사용 가능합니다.</div>
						</li>

						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">4</div>
									<div class="rowCategory">주문</div>
									<div class="rowTitle2">주문 결제 수단 변경은 어떻게 하나요?</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">■ 주문 이후 결제 수단은 변경 할 수 없어요!</div>
						</li>

						<li class="row-li"><a href="#">
								<div class="contentRow">
									<div class="rowNo">5</div>
									<div class="rowCategory">회원</div>
									<div class="rowTitle2">비밀번호를 어디서 변경하나요?</div>
								</div>
						</a></li>
						<li class="hidden-li">
							<div class="hidden-div">■ 마이페이지 - 회원정보수정 - 비밀번호변경</div>
						</li>

					</ul>
				</section>

			</div>

			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br>
		</div>

		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>

</html>