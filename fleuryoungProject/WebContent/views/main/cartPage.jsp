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

        <div class="cart-content">
            <div class="cart-content-panel">
                <div class="cart-content-header">
                    <div>
                        <label>
                            <input type="checkbox" id="allCheck">
                            <img src="../../resources/image/unchecked-checkbox.png">
                            전체선택 (2/2)
                        </label>
                        <span></span>
                        <button>선택삭제</button>
                    </div>
                </div>
                <div class="cart-content-main">
                    <ul style="list-style-type: none;">

                        <!-- 1번 -->
                        <li class="cart-li">
                            <label>
                                <input type="checkbox" name="subCheck">
                                <img src="../../resources/image/unchecked-checkbox.png">
                            </label>
                            <a href="#">
                                <span style="background-image: url('../../resources/image/test-flower1.jpg')"></span>
                            </a>
                            <div class="cart-content-title">

                                <a href="#">
                                    <p>선물용 꽃다발</p>
                                </a>
                            </div>
                            <div class="cart-button-panel">
                                <button class="cart-minus-button"></button>
                                <div class="cart-number">1</div>
                                <button class="cart-plus-button"></button>
                            </div>
                            <div class="cart-price-panel">
                                <p style="display: none;">10000</p>
                                <span class="cart-price-span">10,000원</span>
                            </div>
                            <button class="cart-delete-button">
                                <span>
                                </span>
                            </button>
                        </li>

                        <!-- 2번 -->
                        <li class="cart-li">
                            <label>
                                <input type="checkbox" name="subCheck">
                                <img src="../../resources/image/unchecked-checkbox.png">
                            </label>
                            <a href="#">
                                <span style="background-image: url('../../resources/image/test-flower2.jpg')"></span>
                            </a>
                            <div class="cart-content-title">

                                <a href="#">
                                    <p>선물용 꽃상자</p>
                                </a>
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

                    </ul>
                </div>
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
                            <span class="ptitle">할인금액</span>
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
                            <b>주문하러가기</b> 
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </div>
		
    </div>

	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>