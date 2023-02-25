<%@page import="com.kh.product.model.vo.ProductOption"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.product.model.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Product p = (Product)request.getAttribute("product");

	ArrayList<ProductOption> optList = (ArrayList<ProductOption>)request.getAttribute("optList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
 
 <!-- 스피너 -->
 <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" rel="stylesheet">

  
 <style>
        .yellow-color {
            color: rgb(238, 238, 6);
        }
        
        .add-option{
        	margin-top: 5px;
        }
        
        .minus,
        .plus {
        	margin-bottom: 4px;
        	line-height: 20px;
        }
        
        .inp{
        	width: 50px;
        	height: 35px;
        }
        
</style>
    
</head>
<body>
	<div class="wrap">
		<%@ include file = "../common/header.jsp" %>
		
		<div class="pd-wrap mx-auto" style="width: 1050px;">
        <div class="mt-5 container text-center">
            <div class="d-flex flex-row mb-3">
                <div class="row" style="margin-left: -30px;">
                    <!-- <div class="px-2 col" style="width: 150px;">카테고리1</div>
                    <div class="col-md-auto" style="padding: 0;">></div>
                    <div class="px-2 col" style="width: 100px;">카테고리2</div>
                    <div class="col-md-auto" style="padding: 0;">></div>
                    <div class="px-2 col" style="width: 100px;">꽃다발</div> -->
                </div>
            </div>
            <div class="row">

				<% String[] mimgs = p.getImages().split(","); %>
                <!-- 사진 -->
                <div class="col-6">
                    <div class=" row">
                        <img class="pd-main rounded shadow p-1 mb-3 bg-body-tertiary"
                            src="${pageContext.request.contextPath}<%=mimgs[0] %>" style="height: 500px;">
                    </div>
                    <div class="d-flex justify-content-start">
                        <div class="text-center" style="margin-left: -12px; margin-top: 5px;">
                            <img class="col pd-btn shadow-sm p-1 rounded"
                                src="${pageContext.request.contextPath}<%= mimgs[0] %>"
                                style="width: 70px; height: 70px;">
                            <img class="col pd-btn shadow-sm p-1 rounded"
                                src="${pageContext.request.contextPath}<%= mimgs[1] %>"
                                style="width: 70px; height: 70px;">
                            <img class="col pd-btn shadow-sm p-1 rounded" src="${pageContext.request.contextPath}<%= mimgs[2] %>"
                                style="width: 70px; height: 70px;">
                            <img class="col pd-btn shadow-sm p-1 rounded" src="${pageContext.request.contextPath}<%= mimgs[3] %>"
                                style="width: 70px; height: 70px;">
                            <img class="col pd-btn shadow-sm p-1 rounded" src="${pageContext.request.contextPath}<%= mimgs[4] %>"
                            	style="width: 70px; height: 70px;">
                        </div>
                    </div>
                </div>
                <div style="width: 10px; margin-left: 20px;"></div>
                <!-- 상품 정보 -->
                <div class="col-5 pd-info">
                    <p class="row" style="font-size: 13px; margin-bottom: -1px;"><%=p.getStoreName() %></p>
                    <div class="row" style="font-size: 17px; font-weight: bolder;"><%=p.getpName()%></div>
                    <div class="row">
                    	<% int count = 5;%>
                    	<% for(int i = 0; i < p.getReviewRating(); i++) { %>
                        	<img src="${pageContext.request.contextPath}/resources/image/icon/star.png" style="margin-top: 5px; padding: 0; width: 15px; height: 15px;">
                        	<% count--; %>
                        <% } %>
                        <% for (int j = 0; j < count; j++) { %>
                        	<img src="${pageContext.request.contextPath}/resources/image/icon/empty-star.png"
                            	style="margin-top: 5px; padding: 0; width: 15px; height: 15px;">
                        <% } %>
                        (<%=p.getReviewCount()%>)
                    </div>
                    <div class="d-flex flex-column">
                        <div class="mt-2 row" style="margin-bottom: -10px;">
                            <!-- <div class="col-1" style="padding: 0; margin-left: -1px; font-weight: bold;">10%</div>
                            <div class="col-1" style="text-decoration: line-through;">30,000</div> -->
                            <div class="col-8"></div>
                        </div>
                        <div class="row fs-3" style="font-weight: bolder;"><%= p.getpNetPrice() %>원</div>
                    </div>
                    <div class="row" style="margin-top: 5px;">
                         <% if (p.getpDayDelivery().charAt(0) == 'Y') { %>
                         <div class="col" style="margin-left: -19px; font-size: 13px; font-weight: bolder;">무료배송</div>
                        <div class="col"><img src="${pageContext.request.contextPath}/resources/image/icon/express-delivery.png"
                                style="width: 25px; height: 25px; margin-right: -100px; margin-top: -10px;"></div>
                        <div class="col" style="font-size: 13px; font-weight: bolder; color: rgb(248, 178, 188);">당일배송
                        </div>
                        <% } else { %>
                        	<div class="col" style="margin-left: -190px; font-size: 13px; font-weight: bolder;">무료배송</div>
                        <%} %>
                        <div class="col-5"></div>
                    </div>
                    <div class="mt-4 row">
                        <hr>
                    </div>
                    
                    <!-- 옵션 -->
                    <% if(!optList.isEmpty()) { %>
                    <% String title = optList.get(0).getOptTitle(); %>
                    <div class="mt-4 row">
                        <select class="option-select form-select form-select-sm --bs-danger-bg-subtle"
                            aria-label=".form-select-sm example" id="selectBox" name="selectBox">
                            <option selected><%= title %></option>
                            <% for (ProductOption opt : optList) { %>
                            	<option value="<%= opt.getOpt2ndNo()%>"><%=opt.getOptContent()%> +<%=opt.getOptPrice()%>원</option>
                            <% } %>
                        </select>
                    </div>
                    <% } %>
                    <br>
                    <div class="connect"></div>
                    
                    <!-- 옵션 추가시 나올 div -->
                    <div class="add-option container text-center" style="background-color: #f5f5f5; width: 437px; margin-left: -12px; display: none">
					  <div class="row">
					    <div style="font-weight: bolder;" align="left" class="py-2 col">
					     	옐로우
					    </div>
					    <div align="right" class="col" >
							<img class="option-delete" src="${pageContext.request.contextPath}/resources/image/close.png" style="cursor: pointer; width: 15px; height: 15px">
					    </div>
					  </div>
					  <div class="row">
					  
					  	<div align="left" class="col">
					  		<div class="count-wrap _count">
						  		<button type="button" class="minus btn btn btn-light"><img src="${pageContext.request.contextPath}/resources/image/icon/minus.png"></button>
  							    <input type="text" id="inp" class="inp" value="1" />
							    <button type="button" class="plus btn btn btn-light"><img src="${pageContext.request.contextPath}/resources/image/icon/plus.png"></button>
							</div>
					  	</div>
					  	
					  	<div class="col">
					  		<div align="right" class="py-2 col">+ 5000</div>
					  		
					  	</div>
					  </div>
					</div>
					
					<script>
						let opArr = [];
						
						//천단위 콤마 펑션
					   	function comma(str) {
					        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
					    }
						
					   	function onlyNo(str) {
					   		return str.replace(/[^0-9]/g, '');
					   	}			   	
					   	
					   	function onlyStr(str){
					   		return str.replace(/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g, '');
					   	}
					   	
						$(function() {
							let pBtn = $("#plus");
							let mBtn = $("#minus");
							let inp = $(".inp");
							
							let max = 0; 
							let current = 0;
							let total = 0;
							
							// 감소
							$(document).on("click", ".minus", function(){
								if (Number($(this).next().val()) > 1){
									let tmp = $(this).next().val(Number($(this).siblings('.inp').val()) - 1);
									let optget = $(this).parents(".add-option").find(".hideOptPrice").html();
									let optNum = $(this).parents(".add-option").find(".optPrice");
									
									// 숫자만
									console.log("이거 : " + onlyStr(optget));
									console.log("여기" + typeof(onlyNo(optget)));
									
									// 결과
									optNum.html(comma((Number(onlyNo(optNum.html())) - Number(optget))+"") + "원");
								}
							});
							
							// 증가
							$(document).on("click", ".plus", function(){
								let tmp = $(this).prev().val(Number($(this).siblings('.inp').val()) + 1);
								let optget = $(this).parents(".add-option").find(".hideOptPrice").html();
								let optNum = $(this).parents(".add-option").find(".optPrice"); 
						        
								// 결과
								optNum.html(comma((Number(optget) * Number(tmp.val()))+"") + "원");
								
								
							});
							
							// 수량 변경 감지, 총 주문금액
							$(document).on("click", ".minus, .plus, .option-select", function(){
								let sum = 0;
								$(".optPrice").each(function(){
									sum += Number(onlyNo($(this).html()));
								})
								
								$(".opt-total").html(comma(sum+"")+"원");
								console.log(opArr);
							})
							
							// 삭제
							Array.prototype.remove = function(value) {
							    this.splice(this.indexOf(value), 1);
							}
							
							$(document).on("click", ".option-delete", function(){
								let optNum = Number(onlyNo($(this).parents(".add-option").find(".optPrice").html()));
								let total = Number(onlyNo($(".opt-total").html()));
								
								$(".opt-total").html(comma((total-optNum)+"")+"원");
								
								let optTitle = $(this).parents(".add-option").find(".opt-title").html();
								
								opArr.remove(optTitle);
								console.log(opArr);
								
								$(this).parents(".add-option").remove();
							})
							
						})
						
						
						$(document).ready(function(){
														
							$("#selectBox").on('change', function(){
								
								let optTitle = $("#selectBox option:selected").html();
								let tmp = $("#selectBox option:selected").html();
									tmp = tmp.split("+");
								
								if (!opArr.includes(tmp[0])){
									
									// 한글만 추출
									let kor = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
									let onlyTitle = tmp[0].replace(kor, '');
									
									console.log(onlyTitle);
									
									// 숫자만 추출
									let n = /[^0-9]/g;
									let onlyNum = tmp[1].replace(n, '');
									
									
									<% if (!optList.isEmpty()){ %>
										if(optTitle != '<%= optList.get(0).getOptTitle() %>'){
											
											opArr.push(tmp[0]);	
											
											console.log(opArr);
											
											$('.connect').append("<div class=\"add-option container text-center\" style=\"background-color: #f5f5f5; width: 437px; margin-left: -12px; \"><div class=\"row\"><div style=\"font-weight: bolder;\" align=\"left\" class=\"opt-title py-2 col\">"+ tmp[0] +"</div><div align=\"right\" class=\"col\" ><img class=\"option-delete\" src=\"${pageContext.request.contextPath}/resources/image/close.png\" style=\"cursor: pointer; width: 15px; height: 15px\"></div></div><div class=\"row\"><div align=\"left\" class=\"col\"><div class=\"count-wrap _count\"><button type=\"button\" class=\"minus btn btn btn-light\"><img src=\"${pageContext.request.contextPath}/resources/image/icon/minus.png\"></button><input type=\"text\" id=\"inp\" class=\"inp\" value=\"1\" readonly /><button type=\"button\" class=\"plus btn btn btn-light\"><img src=\"${pageContext.request.contextPath}/resources/image/icon/plus.png\"></button></div></div><div class=\"col\"><div align=\"right\" class=\"optPrice py-2 col\">" + comma(onlyNum) + "원" + "</div><h1 class=\"hideOptPrice\" style=\"display: none\";>"+ onlyNum +"</h1></div></div></div>");	
										}	
									<%} else { %>
										$('.connect').append("<div class=\"add-option container text-center\" style=\"background-color: #f5f5f5; width: 437px; margin-left: -12px; \"><div class=\"row\"><div style=\"font-weight: bolder;\" align=\"left\" class=\"opt-title py-2 col\"></div><div align=\"right\" class=\"col\" ><img class=\"option-delete\" src=\"${pageContext.request.contextPath}/resources/image/close.png\" style=\"cursor: pointer; width: 15px; height: 15px\"></div></div><div class=\"row\"><div align=\"left\" class=\"col\"><div class=\"count-wrap _count\"><button type=\"button\" class=\"minus btn btn btn-light\"><img src=\"${pageContext.request.contextPath}/resources/image/icon/minus.png\"></button><input type=\"text\" id=\"inp\" class=\"inp\" value=\"1\" readonly/><button type=\"button\" class=\"plus btn btn btn-light\"><img src=\"${pageContext.request.contextPath}/resources/image/icon/plus.png\"></button></div></div><div class=\"col\"><div align=\"right\" class=\"py-2 col\">" + <%=p.getpNetPrice()%> + "</div></div></div></div>");
									<% } %>
									
								} else {
									alert('이미 추가한 옵션입니다.');
								}
									
							})		
							
						});

					</script>
			
                    <div class="mt-5 row">
                        <div class="col"
                            style="margin-left: -60px; padding-top: 10px; font-weight: bolder; font-size: 14px;">총 주문금액
                        </div>
                        <div class="col-4"></div>
                        <% if (optList.isEmpty()) { %>
	                        <div class="col" style="margin-right: -50px; font-weight: bolder; font-size: 25px;"><%= p.getpNetPrice() %>원
	                        </div>
                        <% } else { %>
                        	<div class="opt-total col" style="margin-right: -50px; font-weight: bolder; font-size: 25px;">
                        	</div>
                        <% } %>
                    </div>
									
                    <div class="mt-3 row">
                        <button class="py-3 col-4 rounded"
                            style="font-weight: bolder; color: rgb(248, 178, 188); background-color: white; border: 1px solid rgb(248, 178, 188);">장바구니</button>
                        <button class="px-3 col-7 rounded"
                            style="margin-left: 36px; font-weight: bolder; color: aliceblue; background-color: rgb(248, 178, 188);">구매하기</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="pd-tabs">
            <!-- Nav tabs -->
            <ul style="margin-top: 56px; border-bottom : none; border-radius: 0;" class="nav nav-tabs" id="myTab" role="tablist" >
                <li class=" nav-item" role="presentation">
                    <button style="background-color: white; width: 150px; color: black;"
                        class="pd1 pd-mv-btn nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                        type="button" role="tab" aria-controls="home" aria-selected="true">상품상세정보</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button style="background-color: white; width: 150px; color: black;" class="pd2 pd-mv-btn nav-link"
                        id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab"
                        aria-controls="profile" aria-selected="false">리뷰</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button style="background-color: white; width: 150px; color: black;" class="pd3 pd-mv-btn nav-link"
                        id="messages-tab" data-bs-toggle="tab" data-bs-target="#messages" type="button" role="tab"
                        aria-controls="messages" aria-selected="false">문의</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button style="background-color: white; width: 160px; color: black;" class="pd4 pd-mv-btn nav-link"
                        id="settings-tab" data-bs-toggle="tab" data-bs-target="#settings" type="button" role="tab"
                        aria-controls="settings" aria-selected="false">교환 및 반품안내</button>
                </li>
            </ul>

        </div>
        <div class="t1"></div>
        <!-- Tab panes -->

        <br>
        <br>
        <div align="left" style="font-size: 30px; font-weight: bolder; margin-top: 70px;">상품상세정보</div>
        <div class="pd-info-content" style="margin-top: 50px;">
        	<% String[] tmp = p.getImages().split(","); %>
        	<% for (int i = 0; i < tmp.length; i++) { %>
        		<% if (!tmp[i].equals(" ")) { %>
	            <img style="margin-top: 20px; widtsh: 500px; height: 500px"
	                src="${pageContext.request.contextPath}<%= tmp[i] %>"
	                class="rounded mx-auto d-block" alt="...">
	             <% } %>
            <% } %>
        </div>

        <div class="t2"></div>
        <div class="pd-info-review" style="margin-top: 100px;">
            <div align="left" style="font-size: 30px; font-weight: bolder; margin-top: 50px;">리뷰(15)</div>
            <div style="margin-left: -20px;" class="container text-center">
                <hr>
                <div style="margin-left: -15px;" class="d-flex mb-3">
                    <button class="reivew-sort mx-3 p-2">베스트 순</button>
                    <button class="reivew-sort mx-3 p-2">최신순</button>
                    <button class="reivew-sort mx-3 p-2">평점 높은 순</button>
                    <button class="reivew-sort mx-3 p-2">평점 낮은 순</button>
                </div>

                <hr>

                <div class="d-flex align-items-start flex-column mb-3">
                    <div style="margin-bottom: -10px;" class="p-2">
                        <div class="row">
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                        </div>

                    </div>
                    <div class="p-2">
                        <div class="row">
                            <div style="margin-left: -10px; width: 250px;" class="col">행복한사람님</div>
                            <div style="font-size: 13px; margin-left: -40px;" class="col">2021.12.12</div>
                            <div style="font-size: 13px; margin-left: -60px;" class="col">옵션[빨강]</div>
                        </div>
                    </div>
                    <div class="p-2">
                        <div class="row">
                            <div class="col-8">
                                <p style="text-align: left;">긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의
                                    보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 !</p>
                            </div>
                            <div class="col-2"></div>
                            <div class="col"></div>
                        </div>
                    </div>

                    <button type="button" class="mx-2 btn btn-outline-primary">좋아요</button>
                </div>
                <hr>
                <br>

                <div class="d-flex align-items-start flex-column mb-3">
                    <div style="margin-bottom: -10px;" class="p-2">
                        <div class="row">
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                            <span class="bi bi-star-fill yellow-color"> </span>
                        </div>

                    </div>
                    <div class="p-2">
                        <div class="row">
                            <div style="margin-left: -10px; width: 250px;" class="col">행복한사람님</div>
                            <div style="font-size: 13px; margin-left: -40px;" class="col">2021.12.12</div>
                            <div style="font-size: 13px; margin-left: -60px;" class="col">옵션[빨강]</div>
                        </div>
                    </div>
                    <div class="p-2">
                        <div class="row">
                            <div class="col-8">
                                <p style="text-align: left;">긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의
                                    보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 !</p>
                            </div>
                            <div class="col-2"></div>
                            <div class="col"></div>
                        </div>
                    </div>

                    <button type="button" class="mx-2 btn btn-outline-primary">좋아요</button>
                </div>
                <hr>
            </div>
        </div>


        <div class="t3"></div>
        <br>
        <br>
        <!-- 문의 -->
        <div align="left" style="font-size: 30px; font-weight: bolder; margin-top: 50px;">문의</div>

        <br>

        <table style="margin-left: -20px;" class="table">
            <thead style="text-align: center;">
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th style="width: 500px;" scope="col">제목</th>
                    <th scope="col">작성상태</th>
                </tr>
            </thead>
            <tbody style="text-align: center;">

                <tr class="call-tr">
                    <th scope="row">1</th>
                    <td>김누구</td>
                    <td>2022.01.01</td>
                    <td style="text-align: left;">배송 전에 다른 상품으로 교환하고 싶은데</td>
                    <td>답변완료</td>
                </tr>
                <tr style="display: none;">
                    <th></th>
                    <th>판매자</th>
                    <td>2022.01.02</td>
                    <td>그건 안됩니다만...</td>
                </tr>

                <tr class="call-tr">
                    <th scope="row">2</th>
                    <td>이누구</td>
                    <td>2022.01.01</td>
                    <td style="text-align: left;">선물받았는데 교환 가능한가요??</td>
                    <td>미답변</td>
                </tr>
                <tr style="display: none;">
                    <th></th>
                    <th>판매자</th>
                    <td>2022.01.02</td>
                    <td>그게 가능하다고 생각해?..</td>
                </tr>

                <tr class="call-tr">
                    <th scope="row">3</th>
                    <td>박누구</td>
                    <td>2022.01.01</td>
                    <td style="text-align: left;">비밀글입니다</td>
                    <td>답변완료</td>
                </tr>
                <tr style="display: none;">
                    <th></th>
                    <th></th>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>


        <div class="t4"></div>
        <br>
        <br>
        <!-- 교환 및 반품안내 -->
        <div align="left" style="font-size: 30px; font-weight: bolder; margin-top: 50px;">교환 및 반품안내</div>
        <img style="margin-top: 20px;" src="http://image.hanflower.com/data/image/view/customer_center.gif
        " class="rounded mx-auto d-block"
            alt="...">
        <br>
    </div>
	</div>  
	
</body>
</html>