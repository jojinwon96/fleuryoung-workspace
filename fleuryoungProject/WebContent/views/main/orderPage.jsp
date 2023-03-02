<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nonOrder.css">
</head>
<body>
	<div class="wrap">
        
    <%@ include file = "../common/header.jsp" %> 
    
    <div class="cart-wrap">
        <div class="order-header-panel">
            <div class="order-header">
                <div>
                    <span style="color: lightgray;"><strong>01</strong> 장바구니</span>
                    <span style="font-size: 25px;"><strong>02</strong> 주문서작성/결제</span>
                    <span style="color: lightgray;"><strong>03</strong> 주문완료</span>
                </div>
            </div>
        </div>

        <div class="cart-content">

            <div class="cart-content-panel">
                <% if(loginUser == null || loginUser.getMemId().equals("")){ %>
	                <section class="non-header">
	                    <div class="css-xfz6k8 e19imkju1">
	                        이벤트 및 쿠폰 할인 받으시려면 회원가입을 진행 하셔야 합니다. <br>
	                    </div>
	                    <a href="#">회원가입 하러가기</a>
	                </section>
                <%} %>

                <section class="non-order-panel">
                    <section>
                        <div class="non-order-title">주문자 정보</div>
                        <div></div>
                    </section>

                    <div class="non-order-content-panel">
                        <section>
                            <!-- 이름 입력 시작-->
                            <label class="non-name-label">
                                <div class="non-name-div">이름</div>
                                <div class="non-name-input-panel">
                                    <input class="non-name-input" name="name" maxlength="10" value="">
                                </div>
                            </label>
                            <!-- 이름 입력 끝 -->

                            <!-- 이메일 입력 시작 -->
                            <label class="non-email-label">
                                <div class="non-email-div">이메일</div>
                                <div class="non-email-input-panel1">
                                    <div class="non-email-input-panel2">
                                        <div class="non-email-input-panel3">
                                            <div class="non-email-input-panel4">
                                                <input class="non-email-input" type="email" placeholder="이메일"
                                                    title="이메일 앞부분" maxlength="20" value="">
                                            </div>
                                            <span class="non-email-at">@</span>
                                        </div>
                                        <div class="non-email-detail-panel1">
                                            <div class="non-email-detail-panel2">
                                                <div class="non-email-detail-panel3">
                                                    <select class="non-email-select">
                                                        <option value="" disabled="">선택해주세요</option>
                                                        <option value="0">naver.com</option>
                                                        <option value="1">hanmail.net</option>
                                                        <option value="2">daum.net</option>
                                                        <option value="3">gmail.com</option>
                                                        <option value="4">kakao.com</option>
                                                        <option value="5">nate.com</option>
                                                        <option value="6">hotmail.com</option>
                                                        <option value="7">outlook.com</option>
                                                        <option value="8">icloud.com</option>
                                                        <option value="9">직접 입력</option>
                                                    </select>
                                                    <svg width="1em" height="1em" viewBox="0 0 10 10"
                                                        fill="currentColor" class="IgBXR">
                                                        <path d="M0 3l5 5 5-5z"></path>
                                                    </svg>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                            <!-- 이메일 입력 끝 -->

                            <label class="non-phone-label">
                                <div class="non-phone-div">휴대전화</div>
                                <div class="non-phone-input-panel1">
                                    <div class="non-phone-input-panel2">
                                        <div class="non-phone-input-panel3">
                                            <div class="non-phone-input-panel4">
                                                <select class="non-phone-select" name="phone1">
                                                    <option value="" disabled="">선택</option>
                                                    <option value="0">010</option>
                                                    <option value="1">011</option>
                                                    <option value="2">016</option>
                                                    <option value="3">017</option>
                                                    <option value="4">018</option>
                                                    <option value="5">019</option>
                                                </select>
                                                <svg width="1em" height="1em" viewBox="0 0 10 10" fill="currentColor"
                                                    class="IgBXR yPMDv">
                                                    <path d="M0 3l5 5 5-5z"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="non-phone-input-panel5">
                                            <input class="non-phone-input" type="tel" placeholder="입력해주세요" size="1"
                                                maxlength="9" value="f">
                                        </div>
                                    </div>
                                    <div class="non-phone-button-panel">
                                        <button class="non-phone-button" type="button">인증번호발송</button>
                                    </div>
                                </div>
                            </label>

                            <label class="non-address-label">
                                <div class="non-address-title">주소</div>
                                <div class="non-address-panel">
                                    <div>
                                        <div class="non-address-find-panel">
                                            <button class="non-address-find-button" type="button">주소찾기</button>
                                            <input class="non-address-input" disabled="" value="">
                                        </div>
                                        <div class="non-address-detail-panel">
                                            <textarea class="non-address-detail" disabled="" rows="1"
                                                style="overflow: hidden; overflow-wrap: break-word; height: 39.8182px;">

                                            </textarea>
                                        </div>
                                    </div>
                                    <input class="non-address-detail-input" name="extraAddress" placeholder="상세주소 입력"
                                        maxlength="50" value="">
                                </div>
                            </label>

                        </section>
                    </div>
                </section>


                <section class="non-product-panel">
                    <section>
                        <div class="non-product-header-title">주문 상품</div>
                        <div></div>
                    </section>

                    <!-- 가게 하나 주문 상품 시작 for문 시작 -->
                    <div class="non-product-content-panel">
                        <section>
                            <div class="non-product-title-panel1">
                                <div class="non-product-title-panel2">
                                    <div class="non-product-title-panel3">
                                        <div class="non-product-title">기가막힌 꽃집</div>
                                        <div class="non-product-deli-panel">
                                            <span>배송비 0원</span> &nbsp;

                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <!-- 해당가게에서 산 품목 갯수 for문 -->
                                    <div class="non-product-detail-panel">
                                        <img src="images/test-flower1.jpg" alt="">
                                        <div>
                                            <div class="non-product-name">선물용 꽃다발</div>
                                            <div class="non-product-price-panel">
                                                <span class="non-product-price">10,000원</span>
                                                <div></div>
                                                <span class="non-product-count">1개</span>

                                                <!-- 카드쓰기 버튼 시작 -->
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" data-bs-whatever="@mdo"
                                                    style="background-color: rgb(248, 178, 188); border-color: rgb(248, 178, 188); margin-left:435px; margin-top: -70px;">카드쓰기</button>
                                                <div class="modal fade" id="exampleModal" tabindex="-1"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                                    선물용 꽃다발
                                                                </h1>
                                                                <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <form>
                                                                <div class="modal-body">

                                                                    <div class="mb-3">
                                                                        <label for="message-text"
                                                                            class="col-form-label">메세지:</label>
                                                                        <textarea class="form-control"
                                                                            id="message-text"></textarea>
                                                                    </div>

                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary"
                                                                        data-bs-dismiss="modal">닫기</button>
                                                                    <button type="button" class="btn btn-primary"
                                                                        style="background-color: rgb(248, 178, 188); border-color: rgb(248, 178, 188);">완료
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 카드쓰기 버튼 시작 -->

                                            </div>
                                        </div>
                                    </div>
                                    <!--갯수 for문끝  -->
                                </div>
                            </div>
                        </section>
                    </div>
                    <!-- 주문 상품 끝 for문끝 -->
                </section>


                <section class="non-message-panel">

                </section>


            </div>

            <div class="cart-side-panel">
                <div class="cart-side-content">

                    <div class="cart-contents">
                        <div class="price-field">
                            <span class="ptitle">상품금액</span>
                            <span class="pprice">30,000
                                <span class="won">원</span>
                            </span>
                        </div>

                        <div class="dprice-field">
                            <span class="ptitle">적립금</span>
                            <span class="pprice">
                                <span class="won">원</span>
                            </span>
                        </div>

                        <div class="discount-field">
                            <span class="ptitle">베송비</span>+
                            <span class="pprice">0
                                <span class="won">원</span>
                            </span>
                        </div>

                        <div class="result-field">
                            <span class="result-title">결제 예정금액</span>
                            <span class="result-price">
                                <strong>30,000</strong>
                                <span class="won">원</span>
                            </span>
                        </div>

                    </div>

                    <div class="result-button-panel">
                        <button class="cart-access-button">
                            <b>결제하기</b>
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>