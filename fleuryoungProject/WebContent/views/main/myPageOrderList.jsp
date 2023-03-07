<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
	                    <li><a href="#">장바구니</a></li> <br>
	                    
	                    <li>관심리스트<br>
	                        <ul class="subMenu">
	                            <li><a href="<%= contextPath %>/myPageFavoriteList.my">찜한 상품</a></li>
	                            <li><a href="<%= contextPath %>/myPageFavoriteStore.my">찜한 가게</a></li> <br>
	                        </ul>
	                    </li>
	                    <li>후기<br>
	                        <ul class="subMenu">
	                            <li><a href="<%= contextPath %>/myPageReviewWrite.my">구매후기 쓰기</a></li>
	                            <li><a href="<%= contextPath %>/myPageReviewChange.my">내가 작성한 후기</a></li> <br>
	                        </ul>
	                    </li>
	                    <li><a href="#">고객센터</a></li>
	                </ul>
	            </div>
	        </div>
        
	        <div style="padding-left: 15px; float: left;">
		        <div class="hero__categories">
		        	<ul style="width: 800px; height: 846px;">
		        		<li style="font-weight: bold; font-size: 30px; margin-bottom: 20px;">주문내역</li> <br>
		        		<li style="height: 500px;">
			        		<div class="row" style="border: 1px solid lightgray; padding: 10px; box-sizing: border-box; width: 95%;">
			        			<div class="col-sm" style="width: 20%;" >
                                    <a href="#" style="font-size: 20px;">
                                        <img src="" width="120px" height="120px">
                                    </a>
                                </div>
                                <div class="orderInfo" style="width:80%;">
                                    <p>주문번호 : XXXXXXXXXXXXXX</p>
                                    <p>상품명 : XXXXXXXXXXXX</p>
                                    <p>가격 : xxxxxxxxxxx원</p>
                                    <button type="button" style="text-decoration-line: underline; color: rgb(248, 178, 188)">주문상세</button>
                                </div>
                                
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
    </script>
</body>
</html>