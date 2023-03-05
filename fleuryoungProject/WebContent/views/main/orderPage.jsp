<%@page import="com.kh.product.model.vo.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m = (Member)request.getAttribute("member");
	
	int deliveryPrice = (int)request.getAttribute("delivery");

	ArrayList<Cart> cartList = (ArrayList<Cart>)request.getAttribute("cartList");
%>
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
                    <br>
                    <div class="row">
                    	<div class="col-md-auto">
                    		<button type="button" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#deliveryModal">
							  배송지 목록
							</button>
                    	</div>
						<!-- 배송지목록 -->
						<div class="modal fade" id="deliveryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="exampleModalLabel">배송지 목록</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						      	
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						        <button type="button" class="btn btn-primary">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>
                    	<div class="col-md-auto py-2" style="">
                    		<div class="form-check">
							  <input class="form-check-input" type="radio" name="addressRadio" id="exampleRadios1" value="default" checked>
							  <label class="form-check-label" for="exampleRadios1">
							   기본배송지
							  </label>
							</div>
                    	</div>
                    	<div class="col-md-auto py-2">
                    		<div class="form-check">
							  <input class="form-check-input" type="radio" name="addressRadio" id="exampleRadios2" value="userInput">
							  <label class="form-check-label" for="exampleRadios2">
							    직접입력
							  </label>
							</div>
                    	</div>
                    </div>
					
                    <div class="non-order-content-panel">
                        <section>
                            <!-- 이름 입력 시작-->
                            <label class="non-name-label">
                                <div class="non-name-div">이름</div>
                                <div class="non-name-input-panel">
                                    <input class="non-name-input" name="name" maxlength="10" value="<%= m.getMemName() %>">
                                    <input class="userName" type="hidden" value="<%= m.getMemName() %>">
                                </div>
                            </label>
                            <!-- 이름 입력 끝 -->

                            <!-- 이메일 입력 시작 -->
                            <% String getEmail = m.getEmail(); %>
                            <% String[] email = getEmail.split("@"); %>
                            <label class="non-email-label">
                                <div class="non-email-div">이메일</div>
                                <div class="non-email-input-panel1">
                                    <div class="non-email-input-panel2">
                                        <div class="non-email-input-panel3">
                                            <div class="non-email-input-panel4">
                                                <input class="non-email-input" type="email" placeholder="이메일"
                                                    title="이메일 앞부분" maxlength="20" value="<%= email[0] %>">
                                                 <input class="userEamil1" type="hidden" value="<%= email[0] %>">
                                            </div>
                                            <span class="non-email-at">@</span>
                                        </div>
                                        <div class="non-email-detail-panel1">
                                            <div class="non-email-detail-panel2">
                                                <div class="non-email-detail-panel3">
                                                	<input class="userEamil2" type="hidden" value="<%= email[1] %>">
                                                    <select class="non-email-select">
                                                        <option value="1">선택하세요</option>
                                                        <option value="2">naver.com</option>
                                                        <option value="3">hanmail.net</option>
                                                        <option value="4">daum.net</option>
                                                        <option value="5">gmail.com</option>
                                                        <option value="6">kakao.com</option>
                                                        <option value="7">nate.com</option>
                                                        <option value="8">hotmail.com</option>
                                                        <option value="9">outlook.com</option>
                                                        <option value="10">icloud.com</option>
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
                                            	<% String getPhone = m.getPhone(); %>
                                                <select class="non-phone-select" name="phone1">
                                                    <option value="0" selected>선택</option>
                                                    <option value="1">010</option>
                                                    <option value="2">011</option>
                                                    <option value="3">016</option>
                                                    <option value="4">017</option>
                                                    <option value="5">018</option>
                                                    <option value="6">019</option>
                                                </select>
                                                
                                                <svg width="1em" height="1em" viewBox="0 0 10 10" fill="currentColor"
                                                    class="IgBXR yPMDv">
                                                    <path d="M0 3l5 5 5-5z"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <input class="userPhone1" type="hidden" value="<%= getPhone.substring(0, 3) %>">
                                        <div class="non-phone-input-panel5">
                                            <input class="non-phone-input" type="tel" placeholder="입력해주세요" size="1"
                                                maxlength="9" value="<%=getPhone.substring(3, 11)%>">
                                            <input class="userPhone2" type="hidden" value="<%= getPhone.substring(3, 11) %>">
                                        </div>
                                    </div>
                                    
                                </div>
                            </label>

                            <label class="non-address-label">
                                <div class="non-address-title">주소</div>
                                <div class="non-address-panel">
                                    <div>
                                        <div class="non-address-find-panel">
                                            <button class="non-address-find-button" type="button">주소찾기</button>
                                            <input class="non-address-input" disabled="" value="<%= m.getPostal()%>">
                                            <input class="postal" type="hidden" value="<%= m.getPostal() %>">
                                        </div>
                                        <div class="non-address-detail-panel">
                                            <textarea class="non-address-detail" disabled="" rows="1"
                                                style="overflow: hidden; overflow-wrap: break-word; height: 39.8182px;"><%= m.getStreet() %>
												
                                            </textarea>
                                            <input class="street" type="hidden" value="<%= m.getStreet() %>">
                                        </div>
                                    </div>
                                    <input class="non-address-detail-input" name="extraAddress" placeholder="상세주소 입력"
                                        maxlength="50" value="<%= m.getAddress()%>">
                                    <input class="addressDetail" type="hidden" value="<%= m.getAddress() %>">
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
                    <% for (Cart c : cartList) { %>
                    <div class="non-product-content-panel">
                        <section>
                            <div class="non-product-title-panel1">
                                <div class="non-product-title-panel2">
                                    <div class="non-product-title-panel3">
                                        <div class="non-product-title"><%= c.getStoreName() %></div>
                                    </div>
                                </div>
                                <div>
                                    <!-- 해당가게에서 산 품목 갯수 for문 -->
                                    <div class="non-product-detail-panel">
                                        <img src="<%=contextPath %><%= c.getImg() %>" alt="">
                                        <div>
                                            <div class="non-product-name"><%= c.getpName() %></div>
                                            <% if (c.getOpt1stNo() != 0) { %>
                                            <div class="non-product-option" style="font-size: 12px;"><%= c.getOpt1Title()%> : <%= c.getOpt2Title() %></div>
                                            <div class="non-product-price-panel">
                                                <span class="non-product-price"><%= c.getOptCount() * (c.getOptPrice() + c.getpNetPrice()) %></span>
                                                <div></div>
                                                <span class="non-product-count"><%= c.getOptCount() %>개</span>
										    <% } else { %>
                                            <div class="non-product-price-panel">
                                                <span class="non-product-price"><%= c.getpNetPrice() * c.getNoneOptCount() %></span>
                                                <div></div>
                                                <span class="non-product-count"><%= c.getNoneOptCount() %>개</span>
										    <% } %>
                                                <!-- 카드쓰기 버튼 시작 -->
                                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" data-bs-whatever="@mdo"
                                                    style="background-color: rgb(248, 178, 188); border-color: rgb(248, 178, 188); margin-left:350px;  margin-top: -70px;">카드쓰기</button>
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
                    <% } %>
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

						<div class="discount-field">
                            <span class="ptitle">베송비</span>
                            <span class="pprice"><%= deliveryPrice %>
                                <span class="won">원</span>
                            </span>
                        </div>

                        <div class="dprice-field">
                            <span class="ptitle">할인금액</span>
                            <span class="pprice" style="color: red;">-&nbsp;0
                                <span class="won">원</span>
                            </span>
                        </div>

                        <div class="result-field">
                            <span class="result-title">결제 예정금액</span>
                            <span class="result-price">
                                <strong></strong>
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
    
    <script>
    	$(function(){
    		
    		function emailCheck(value){
    			
    			let emailChk = value;
    			
    			if (emailChk == 'naver.com'){
        			$(".non-email-select").val("2").trigger("change");
        		} else if (emailChk == 'hanmail.net'){
        			$(".non-email-select").val("3").trigger("change");
        		} else if (emailChk == 'daum.net'){
        			$(".non-email-select").val("4").trigger("change");
        		} else if (emailChk == 'gmail.com'){
        			$(".non-email-select").val("5").trigger("change");
        		} else if (emailChk == 'kakao.com') {
        			$(".non-email-select").val("6").trigger("change");
        		} else if (emailChk == 'nate.com') {
        			$(".non-email-select").val("7").trigger("change");
        		} else if (emailChk == 'hotmail.com') {
        			$(".non-email-select").val("8").trigger("change");
        		} else if (emailChk == 'outlook.com') {
        			$(".non-email-select").val("9").trigger("change");
        		} else {
        			$(".non-email-select").val("10").trigger("change");
        		}
    		}
    		
    		
    		function phoneCheck(value) {
    			let phoneChk = value;
    			
    			if (phoneChk == '010'){
        			$(".non-phone-select").val("1").trigger("change");
        		} else if (phoneChk == '011'){
        			$(".non-phone-select").val("2").trigger("change");
        		} else if (phoneChk == '016'){
        			$(".non-phone-select").val("3").trigger("change");
        		} else if (phoneChk == '017'){
        			$(".non-phone-select").val("4").trigger("change");
        		} else if (phoneChk == '018'){
        			$(".non-phone-select").val("5").trigger("change");
        		} else {
        			$(".non-phone-select").val("6").trigger("change");
        		}
    		}
    		
    		// 천단위 콤마 
    	   	function comma(str) {
    	        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    	    }
    		
    		// 숫자만
    	   	function onlyNo(str) {
    	   		return str.replace(/[^0-9]/g, '');
    	   	}	
    		
    		emailCheck('<%= email[1] %>');
    		phoneCheck('<%= getPhone.substring(0, 3)%>');
    		
    		let name = $(".non-name-input");
			let email1 = $(".non-email-input");
			let email2 = $(".non-email-select");
			let phone1 = $(".non-phone-select");
			let phone2 = $(".non-phone-input");
			let address1 = $(".non-address-input");
			let address2 = $(".non-address-detail");
			let address3 = $(".non-address-detail-input");
    		
			let hName = $(".userName");
			let hEmail1 = $(".userEamil1");
			let hEmail2 = $(".userEamil2");
			let hPhone1 = $(".userPhone1");
			let hPhone2 = $(".userPhone2");
			let hAddress1 = $(".postal");
			let hAddress2 = $(".street");
			let hAddress3 = $(".addressDetail");
			
    		$("input[name='addressRadio']").change(function(){
    			let isChk = $("input[name='addressRadio']:checked").val();
    			if (isChk == 'userInput'){
    				name.val("");
    				email1.val("");
    				email2.val("1").trigger("change");
    				phone1.val("0").trigger("change");
    				phone2.val("");
    				address1.val("");
    				address2.val("");
    				address3.val("");
    			} else {
    				name.val(hName.val());
    				email1.val(hEmail1.val());
    				
    				emailCheck(hEmail2.val());
    				phoneCheck(hPhone1.val());
    				phone2.val(hPhone2.val());
    				address1.val(hAddress1.val());
    				address2.val(hAddress2.val());
    				address3.val(hAddress3.val());
    			}		
    		});
    		
    		
    		let sum = 0;
    		// 주문상품
    		$(".non-product-price").each(function(){
    			sum += Number($(this).html());
    			$(this).html(comma(Number($(this).html()) + "") +"원");
    		})
    		
    		// 결제 패널
    		let price = $(".price-field").children(".pprice");
    		price.html(comma(sum + "") +" 원")
    		
    		let dPrice = $(".discount-field").children(".pprice");
    		dPrice.html(comma(dPrice.html()));
    		
    		let total = $(".result-price").children("strong");
			total.html(comma(Number(onlyNo(price.html())) + Number(onlyNo(dPrice.html())) + ""));    		
    	})
    </script>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>

















