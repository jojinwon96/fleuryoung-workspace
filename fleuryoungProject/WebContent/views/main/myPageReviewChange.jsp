<%@page import="com.kh.product.model.vo.ProductReview"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ProductReview> list = (ArrayList<ProductReview>)request.getAttribute("list");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<%@ include file = "../common/header.jsp" %>
		
		<br><br>
        <div id="content-body">
	        <div class="sidebar">
	            <div class="hero__categories">
	                <div class="hero__categories__all">
	                    <i class="fa fa-bars"></i>
	                    <span>My Menu</span>
	                </div>
	                <ul style="height: 800px;">
	                    <li><a href="<%= contextPath %>/myPageInfo.my">회원정보관리</a></li> <br>
	                    <li><a href="<%= contextPath %>/myPageOrderList.my">주문내역</a></li> <br>
	                    
	                    <li>관심리스트<br>
	                          <li><a href="<%= contextPath %>/myPageFavoriteList.my">찜한 상품</a></li>
	                    </li>
	                    <li>후기<br>
	                            <li><a href="<%= contextPath %>/myPageReviewWrite.my">내가 쓴 리뷰 보기</a></li>
	                            <li><a href="<%= contextPath %>/myPageReviewChange.my">내가 쓴 리뷰 수정</a></li> <br>
	                    </li>
	                </ul>
	            </div>
	        </div>
        
	        <div style="padding-left: 15px; float: left;">
		        <div class="hero__categories">
		        	<ul style="width: 800px; height: 650px;">
		        		<li style="font-weight: bold; font-size: 30px; margin-bottom: 20px;">내가 쓴 리뷰 수정</li>
		        		<li style="height: 470px;">
			        		<div class="row" style="border: 1px solid lightgray; padding: 10px; box-sizing: border-box; width: 95%;">
                                <% for(ProductReview p : list) { %>
                                <div class="orderInfo" style="width:80%;" data-toggle="modal" data-target="#myModal<%= p.getReviewId()%>">
                                    <p>상품명 : <%= p.getpName() %></p>
                                    <p>주문번호 : <%= p.getOrdId() %></p> 
                                    <p>내가 쓴 리뷰 : <%= p.getReviewDetail() %></p> 
                                </div>
                                <div class="modal" id="myModal<%= p.getReviewId() %>">
					                <div class="modal-dialog">
					                  <div class="modal-content">
					                  
					                    <!-- Modal Header -->
					                    <div class="modal-header">
					                      <h4 class="modal-title">리뷰 수정</h4>
					                      <button type="button" class="close" data-dismiss="modal">&times;</button>
					                    </div>
					                    
					                    <!-- Modal body -->
					                    <%-- <form action="<%= contextPath %>/updateReview.my"> --%>
						                    <div class="modal-body">
						                        <div class="row">
						                            
					                            <div class="orderInfo" style="width:80%; margin-left: 50px; float: left;">
					                                <p>상품명 : <%= p.getpName() %></p>
					                                <p>주문번호 : <%= p.getOrdId() %></p>
					                                <textarea id="reviewDetail" placeholder="내용을 입력해주세요" style="width: 350px; height: 100px; resize: none;" ><%= p.getReviewDetail() %></textarea> <br> <br>
					                                <input type="hidden" id="reviewId" value="<%= p.getReviewId() %>">
					                            </div>
						                            
						                        </div>
						                        
						                    </div>
						                    
						                    <!-- Modal footer -->
						                    <div class="modal-footer" align="center">
						                     
						                      <button type="submit" class="btn btn-secondary" data-dismiss="modal" onclick="modify();">수정</button>
						                     
						                    </div>
										<!-- </form> -->
					                  </div>
					                </div>
					              </div>
                                <br>
                                <br>
                                <hr>
                                <% } %>
			        		</div>
		        		</li>
		        	</ul>
		        </div>
	        </div>

            
	        
	        
        </div>
	</div>
	
	<script>
        $(function(){
            $('.subMenu').hide();
            $('.hero__categories>ul>li').mouseenter(function(){
                $(this).find('.subMenu').slideDown();
            }).mouseleave(function(){
                $('.subMenu').stop().slideUp();
            });
            
            let items = document.querySelectorAll('.carousel .carousel-item')

            items.forEach((el) => {
                const minPerSlide = 4
                let next = el.nextElementSibling
                for (var i=1; i<minPerSlide; i++) {
                    if (!next) {
                        // wrap carousel by using first child
                    	next = items[0]
                  	}
                    let cloneChild = next.cloneNode(true)
                    el.appendChild(cloneChild.children[0])
                    next = next.nextElementSibling
                }
            })
            
        });
        
        function modify() {
        	if(confirm("수정하시겠습니까?")) {
        		$.ajax({
            		url : "updateReview.my", // 어느 url로 보낼 건지
                    type : "post", // 요청방식 지정
                    data : {
                    	reviewDetail	: $("#reviewDetail").val(),
                    	reviewId		: $("#reviewId").val()
                    },
                    success : function(pram) {
                    	if(pram == 100) {
                    		alert("수정되었습니다.");
                    		location.reload();
                    	} else if(pram == 999) {
                    		alert("수정에 실패하였습니다.");
                    	}
                    },
                    error : function(){
                        console.log("ajax 통신 실패");
                    },
                    complete : function(){
                        console.log("ajax 통신 성공 여부와 상관없이 무조건 호출!");
                    }
            	});
        	}
        }
    </script> 
</body>
</html>