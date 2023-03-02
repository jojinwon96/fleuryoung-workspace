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
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary cart-save" data-bs-toggle="modal"
                                data-bs-target="#staticBackdrop"
                                style="margin-left: 350px; background-color: rgb(248, 178, 188); border-color: rgb(248, 178, 188);">
                                장바구니 저장
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
                                data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">
                                            </h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body cart-save-message">
                                            변경사항을 저장 하시겠습니까?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">취소</button>
                                            <button type="button" class="btn btn-primary"
                                                style="margin-left: 5px; background-color: rgb(248, 178, 188); border-color: rgb(248, 178, 188);">저장하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cart-content-main">
<<<<<<< Updated upstream
                        <ul style="list-style-type: none;">

                            <!-- 1번 -->
                            <li class="cart-li">
                                <label>
                                    <input type="checkbox" id="subCheck" name="subCheck[0]" checked>
                                    <img src="images/checked-checkbox.png">
                                </label>
                                <a href="#">
                                    <span style="background-image: url('images/test-flower1.jpg')"></span>
                                </a>
                                <div class="cart-content-title">
                                    <span>기가막힌 꽃집1</span>
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
                                    <input type="checkbox" id="subCheck" name="subCheck[1]" checked>
                                    <img src="images/checked-checkbox.png">
                                </label>
                                <a href="#">
                                    <span style="background-image: url('images/test-flower2.jpg')"></span>
                                </a>
                                <div class="cart-content-title">
                                    <span>기가막힌 꽃집2</span>
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

                            <!-- <li class="cart-li">
                            <label>
                                <input type="checkbox" id="subCheck" name="subCheck[2]" checked>
                                <img src="images/checked-checkbox.png">
                            </label>
                            <a href="#">
                                <span style="background-image: url('images/test-flower2.jpg')"></span>
                            </a>
                            <div class="cart-content-title">

                                <a href="#">
                                    <p>선물용 꽃상자2</p>
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
                        </li> -->

=======
                        <ul style="list-style-type: none;">			
							<br>
							<br>
							<% int index = 0; %>
							<% for (Cart c : list) { %>
								
								<!-- 상품시작 -->
								<div class = "p-wrap">
								
								<div class="sName-panel container text-left" style="margin-bottom: -20px">
									<div class="row">
										<div class="col-9" style="margin-left:25px; font-weight: bolder"><%= c.getStoreName() %></div>
										<div class="col">
											<% if (c.getOpt1stNo() != 0) { %>
												<button type="button" class="btn btn-light"style="margin-left:-118px">옵션수정</button>
											<% } %>
										</div>
									</div>
								</div>
	                            <li class="cart-li">
	                                <label>
	                                    <input type="checkbox" class="subCheck" name="subCheck[1]" checked>
	                                    <img src="<%=contextPath%>/resources/image/checked-checkbox.png">
	                                </label>
	                                <a href="#">
	                                    <span style="background-image: url('<%=contextPath%><%=c.getImg()%>')"></span>
	                                </a>
	                                <hr>
	                                <div class="cart-content-title">
	                                    <div class="row store-name" style="font-weight:bolder; font-size: 16px; margin-bottom: 10px; width: 300px">
	                                        <%=c.getpName() %>
	                                    </div>
	                                    <% if (c.getOpt1stNo() != 0) { %>
		                                    <div class="row" style="font-size: 12px;">
		                                        <%=c.getOpt2Title() %>
		                                    </div>
	                                    <% } %>
	                                </div>
	                     
	                                <div class="cart-button-panel">
	                                    <button type="button" class="cart-minus-button"></button>
		                                    <% if (c.getOpt1stNo() != 0) { %>
		                                    	<div class="cart-number"><%= c.getOptCount() %></div>
		                                    <% } else { %>
		                                    	<div class="cart-number"><%= c.getNoneOptCount() %></div>
		                                    <% } %>
	                                    <button type="button" class="cart-plus-button"></button>
	                                    
	                                    <h1 class="opt1No" style="display: none"><%= c.getOpt1stNo() %></h1>
	                                	<h1 class="opt2No" style="display: none"><%= c.getOpt2ndNo() %></h1>
	                                	<h1 class="optPrice" style="display: none"><%= c.getOptPrice() %></h1>
	                                	<h1 class="pId" style="display: none"><%= c.getpId() %></h1>
	                                	<h3 class="selNo" style="display: none"><%= c.getSelNo() %></h3>
	                                	<h1 class="index" style="display: none"><%=index++%></h1>
	                                </div>
	                                
	                                <div class="cart-price-panel">
	                                	<% if (c.getOpt1stNo() != 0) { %>
		                                    <p class="hide-cart-price" style="display: none;"><%= c.getOptCount() * (c.getOptPrice() + c.getpNetPrice())%></p>
		                                    <span class="cart-price-span"><%= c.getOptCount() * (c.getOptPrice() + c.getpNetPrice())%>원</span>
	                                    <% } else { %>
	                                    	<p class="hide-cart-price" style="display: none;"><%= c.getNoneOptCount() * c.getpNetPrice() %></p>
		                                    <span class="cart-price-span"><%= c.getNoneOptCount() * c.getpNetPrice()%>원</span>
	                                    <% }  %>
	                                </div>
	                                <button type="button" class="cart-delete-button">
	                                    <span>
	                                    </span>
	                                </button>
	                            </li>
								<!-- 상품 끝 -->
								<hr>	
								<br>
								</div>									
							 <% } %>				
>>>>>>> Stashed changes
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

<<<<<<< Updated upstream
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
=======
	<script>
		let delList = [];
		let indexList = [];
		let active = "";
		//천단위 콤마 펑션
	   	function comma(str) {
	        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	    }
		
		// 숫자만
	   	function onlyNo(str) {
	   		return str.replace(/[^0-9]/g, '');
	   	}	
		
		// 상품 금액
		function resultPrice(){
			let sum = 0;
			
			$(".cart-price-panel").children('p').each(function(index){
				sum += Number($(this).html());				
			})
				
			$(".price-field").children('.pprice').html(comma(sum + "") + " 원");
		}
		
		// 체크박스 제어 함수
		function chkResult(num, calc){
			
			let result = $(".price-field").children('.pprice');
			if (calc == "-"){
				result.html(comma((Number(onlyNo(result.html())) - num) + "") + " 원");
			} else {
				result.html(comma((Number(onlyNo(result.html())) + num) + "") + " 원");
			}
		}
		
		let deliveryArr = [];
		// 배송비 결정
		function deliveryPrice(){
			$(".selNo").each(function(){
				console.log("pid : " + $(this).html());
				
			})
		}
		
		// 상품금액 셋팅
		resultPrice();
		
		// 배송비 셋팅
		deliveryPrice();
		
		$(".cart-price-span").each(function(){
			$(this).html(comma($(this).html()));
		})
	
		$(document).ready(function(){
			
			let index = 0;
			let count = 0;
			
			let chkImg = '<%=contextPath%>/resources/image/checked-checkbox.png';
			let unChkImg = '<%=contextPath%>/resources/image/unchecked-checkbox.png;';
			
			// 체크박스 제어
			$(document).on("click", ".allCheck, .subCheck", function(){

				if ($(this).hasClass("allCheck")){
					
					if ($(this).attr("checked")){
						$('.cart-access-button').css("backgroundColor", "lightgray");
			            $('.cart-access-button').attr("disabled", false);
						
						$(this).next().attr("src", unChkImg);
						$(this).attr("checked", false);
						
						$(".subCheck").each(function(){
							$(this).next().attr("src", unChkImg);
							$(this).attr("checked", false);
						})
						
						$(".price-field").children('.pprice').html("0 원");
					} else {
						$('.cart-access-button').css("backgroundColor", "rgb(248, 178, 188)");
			            $('.cart-access-button').attr("disabled", true);
						
						$(this).next().attr("src", chkImg);
						$(this).attr("checked", true);
						
						$(".subCheck").each(function(){
							$(this).next().attr("src", chkImg);
							$(this).attr("checked", true);
						})
						
						let chkSum = 0;
	            		$(".cart-price-panel").children('p').each(function(index){
							chkSum += Number($(this).html());
						}) 
						
						$(".price-field").children('.pprice').html(comma(chkSum +"") +  " 원");
					}
                	
					
				} else if ($(this).hasClass("subCheck")) {
					if ($('input:checkbox[name^="subCheck"]:checked').length == 0){
						$('.cart-access-button').css("backgroundColor", "lightgray");
			            $('.cart-access-button').attr("disabled", false);
					} else {
						$('.cart-access-button').css("backgroundColor", "rgb(248, 178, 188)");
			            $('.cart-access-button').attr("disabled", true);
					}
					
					if (($('input:checkbox[name^="subCheck"]:checked').length == $('input:checkbox[name^="subCheck"]').length)) {
						$(".allCheck").next().attr("src", chkImg);
						$(".allCheck").attr("checked", true);
					} else {
						$(".allCheck").next().attr("src", unChkImg);
						$(".allCheck").attr("checked", false);
					} 
					
					
					let subPrice = Number($(this).parent().siblings(".cart-price-panel").children('p').html());
					
					if ($(this).attr("checked")){ // 가격빼기
						$(this).next().attr("src", unChkImg);
						$(this).attr("checked", false);
						
						chkResult(subPrice, "-");
						
						$(".allCheck").next().attr("src", unChkImg);
						$(".allCheck").attr("checked", false);
					} else { // 가격 담기
						$(this).next().attr("src", chkImg);
						$(this).attr("checked", true);
						
						chkResult(subPrice, "+");
					}
				} 
				
				
				
				$(".subCheck").each(function(){
					if ($(this).attr("checked")){
						
					}
				})
			})
			

			
			// 수량 제어
			$(document).on("click", ".cart-plus-button, .cart-minus-button, .cart-delete-button, .selectDel", function(){
				
				let index = "0";
				let opt1No = "0";
				let opt2No = "0";
				let optPrice = "0";
				let pId = "0";
				
				if (!$(this).hasClass("selectDel")){
					index = $(this).parent().find('.index').html();
					opt1No = $(this).parent().find('.opt1No').html();
					opt2No = $(this).parent().find('.opt2No').html();
					optPrice = $(this).parent().find('.optPrice').html();
					pId = $(this).parent().find('.pId').html();
					count = $(this).parent().find(".cart-number").html();
				}
				
				let memId = "";
				
				<% if(loginUser != null && !loginUser.getMemId().equals("")) {%>
					memId = '<%=loginUser.getMemId()%>';
				<% }%>
				
				
				
				if ($(this).hasClass("cart-plus-button")) {
					console.log("증가");
					active = "plus";
				} else if($(this).hasClass("cart-minus-button")) {
					console.log("감소");
					active = "minus";
				} else if($(this).hasClass("cart-delete-button")) {
					console.log("삭제");
					active = "delete";
				} else {
					console.log('선택삭제');
					active = "selectDel";
					let delSum = 0;
					$(".subCheck").each(function(idx){
						if ($(this).attr("checked")){
							let opt1No = $(this).parents(".cart-li").find(".opt1No").html();
							let opt2No = $(this).parents(".cart-li").find(".opt2No").html();
							let pId = $(this).parents(".cart-li").find(".pId").html();
							indexList[idx] = $(this).parents(".cart-li").find(".index").html();
							
							delList[idx] = {opt1No:opt1No, opt2No:opt2No, pId:pId};
						}
					})
					console.log(delList);
					console.log(indexList);
					console.log(active);
					
				}
				
					// 수량 증감 / 삭제
					let jsonData = JSON.stringify(delList);
					$.ajax({
	                    // 요청보내기
	                    url : "updateCart.p", // 어느 url로 보낼 건지
	                    type : "post", // 요청방식 지정
	                    traditional :true,	
	                    //dataType : "json",
	                    data : {
	                    	jsonData:jsonData,
	                    	opt1No:opt1No,
	                    	opt2No:opt2No,
	                    	optPrice:optPrice,
	                    	pId:pId,
	                    	memId:memId,
	                    	count:count,
	                    	active:active
	                    }, 
	                    success : function(pram) { // 성공시 응답 데이터가 자동으로 매개변수로 넘어옴
	                        console.log("성공~");
	                    	
	                    	console.log("pram 타입 : " + pram);
	                    
	                    	if (typeof(pram) == "object"){
		                    	let opt = 0;
		                    	let cnt = 0;
		                    	let price = 0;
		                    	let result = 0;
		                    	
		                    	if (opt1No != 0){ // 옵션 있을때
		                    		opt = Number(pram[0]);
		                    		cnt = Number(pram[1]);
		                    		price = Number(pram[2]);
		                    		result = cnt * (opt + price);
		                    		
			                        $(".cart-number").eq(index).html(cnt+"");
			                    	$(".cart-price-span").eq(index).html(comma(result + "") + " 원");
			                    	
			                    	$(".hide-cart-price").eq(index).html(result);
			                    	
		                    	} else {
		                    		cnt = Number(pram[0]);
		                    		price = Number(pram[1]);
		                    		result = cnt * price;
		                    		
				                    $(".cart-number").eq(index).html(cnt+"");
			                    	$(".cart-price-span").eq(index).html(comma(result + "") + "원");
			                    	
			                    	$(".hide-cart-price").eq(index).html(result);
		                    	}
		                    	
		                    	let chkSum = 0;
		                    	$(".cart-price-panel").children('p').each(function(index){
									console.log("갔다온거 : " + Number($(this).html()));
									let isChk = $(this).parents('.cart-li').find('.subCheck');
									if (isChk.attr("checked")){
										chkSum += Number($(this).html());
										$(".price-field").children('.pprice').html(comma(chkSum + "") + " 원");
									} else {
										console.log("체크아니다.");
									}
									
								})
	                    	} else {
	                    		if (pram != 100){
		                    		let delPrice = Number(onlyNo($(".cart-delete-button").eq(index).prev().children('.cart-price-span').html()));
		                    		let totalPrice = $(".price-field").children('.pprice');
		                    		
		                    		totalPrice.html(comma((Number(onlyNo(totalPrice.html())) - delPrice) + "") + " 원");
		                    		
		                    		$(".cart-delete-button").eq(index).parents(".p-wrap").remove();
	                    		} else {
	                    			console.log("선택삭제 성공~");
			                    	let total = Number(onlyNo($(".price-field").children('.pprice').html()));
			                    	let delSum = 0;
			                    	
	                    			$(".subCheck").each(function(index){
	                					if ($(this).attr("checked")){
	                						let delPrice = Number(onlyNo($(this).parents(".p-wrap").find(".cart-price-span").html()));
	                						delSum += delPrice;
	                						console.log("삭제할 가격 : " + delPrice);
	                						$(this).parents('.p-wrap').remove();
	                					}
	                				})
	                				console.log("delSum : " + delSum);
									$(".price-field").children('.pprice').html(comma((total-delSum)+"") + " 원");		
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
				
			})
		 })
	</script>
	 
>>>>>>> Stashed changes

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>