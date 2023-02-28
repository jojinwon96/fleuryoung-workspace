<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Fleuryoung</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css">
</head>

<body class style="padding-right: 0px;">

    <div class="wrap">
        
    <%@ include file = "../common/header.jsp" %>    

<div class="cart-wrap">
        <div class="order-header-panel">
            <div class="order-header">
                <div>
                    <span style="font-size: 25px;"><strong>01</strong> 장바구니</span>
                    <span style="color: lightgray;"><strong>02</strong> 주문서작성/결제</span>
                    <span style="color: lightgray;"><strong>03</strong> 주문완료</span>
                </div>
            </div>
        </div>

        <form action="#" method="get">
            <div class="cart-content">
                <div class="cart-content-panel">
                    <div class="cart-content-header">
                        <div>
                            <label>
                                <input type="checkbox" id="allCheck" checked>
                                <img id="check-img" src="images/checked-checkbox.png">
                                전체선택
                            </label>
                            <span></span>
                            <button class="selectDel">선택삭제</button>
                        </div>
                    </div>
                    <div class="cart-content-main">
                        <ul style="list-style-type: none;">
							
							<br>
                            <li class="cart-li">
                                <label>
                                    <input type="checkbox" id="subCheck" name="subCheck[1]" checked>
                                    <img src="images/checked-checkbox.png">
                                </label>
                                <a href="#">
                                    <span style="background-image: url('images/test-flower2.jpg')"></span>
                                </a>
                                <div class="cart-content-title">
	                                 <div class="row" style="font-weight: bolder; font-size: 17px;">
                                        가게이름
                                    </div>
                                    <div class="row" style="font-size: 14px;">
                                        상품명
                                    </div>
                                    <div class="row" style="font-size: 12px;">
                                        옵션명
                                    </div>
                                </div>
                                <div class="cart-button-panel">
                                    <button class="cart-minus-button"></button>
                                    <div class="cart-number">1</div>
                                    <button class="cart-plus-button"></button>
                                </div>
                                <div class="cart-price-panel">
                                    <p style="display: none;">20000</p>
                                    <span class="cart-price-span">20,000원</span>
                                </div>
                                <button class="cart-delete-button">
                                    <span>
                                    </span>
                                </button>
                            </li>
							<hr>		
												
                        </ul>
                    </div>
                </div>
                
                <!-- 총금액 패널 -->
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
                                <span class="ptitle">할인금액</span>
                                <span class="pprice">
                                    <span class="won">원</span>
                                </span>
                            </div>

                            <div class="discount-field">
                                <span class="ptitle">배송비</span>+
                                <span class="pprice">4,500
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
                                <b>주문하러가기</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    </div>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>