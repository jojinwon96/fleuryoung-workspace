<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String alertMsg = (String)session.getAttribute("alertMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage2.css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style>
	table {
   		border-collapse: separate;
   		border-spacing: 10px 10px;
 }
</style>
</head>
<body>
	<% if(alertMsg != null){%>
        <script type="text/javascript">
            alert("<%=alertMsg%>");
        </script>
    <%} %>
    <% session.setAttribute("alertMsg", null); //removeAttribute("alertMsg") %>
	<div class="wrap">
		<%@ include file = "../common/header.jsp" %>
		
		<br><br>
        
        <br><br>
        <div id="content-body">
	        <div class="sidebar" style="float: left">
	            <div class="hero__categories">
	                <div class="hero__categories__all">
	                    <i class="fa fa-bars"></i>
	                    <span>My Menu</span>
	                </div>
	                <ul style="height: 800px;">
	                    <li><a href="<%= contextPath %>/myPageInfo.my">??????????????????</a></li> <br>
	                    <li><a href="<%= contextPath %>/myPageOrderList.my">????????????</a></li> <br>
	                    
	                    <li>???????????????<br>
	                            <li><a href="<%= contextPath %>/myPageFavoriteList.my">?????? ??????</a></li>
	                    </li>
	                    <li>??????<br>
	                            <li><a href="<%= contextPath %>/myPageReviewWrite.my">?????? ??? ?????? ??????</a></li>
	                            <li><a href="<%= contextPath %>/myPageReviewChange.my">?????? ??? ?????? ??????</a></li> <br>
	                    </li>
	                </ul>
	            </div>
	        </div>
            
            <div class="content"> 
                <div id="form">
                    <div class="userForm" align="center" style="height: 846px; width: 600px;">
                        <h5>???????????? ??????</h5> <br>
                        
                        <form id="mypage-form" action="<%= contextPath %>/myPageInfoUpdate.my" method="post">

                            <%-- <img src="<%= loginUser.getMemImg() %>" style="width: 150px; height: 150px;"> <br><br> --%>
                            
                            <table style="border-collapse: separate; border-spacing: 10px 10px;">
                                <tr style="margin-bottom: 10px;">
                                    <td  style="margin-bottom: 10px;">?????????</td>
                                    <td><input type="text" name="userId" maxlength="12" style="width: 350px" value = "<%= loginUser.getMemId() %>" readonly></td>
                                </tr>
                                <tr>
                                    <td>?????????</td>
                                    <td><input type="email" name="email" style="width: 350px" value = "<%= loginUser.getEmail() %>"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>????????????</td>
                                    <td><input type="text" name="phone" placeholder="- ???????????? ??????"  style="width: 350px" value = "<%= loginUser.getPhone() %>"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>??????</td>
                                    <td><input type="text" name="userName" maxlength="6" style="width: 350px" value = "<%= loginUser.getMemName() %>" required></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>??????</td>
                                    <td><input type="text" name="street" style="width: 350px" value = "<%= loginUser.getStreet() %>"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>????????????</td>
                                    <td><input type="text" name="address" style="width: 350px" value = "<%= loginUser.getAddress() %>"></td>
                                    <td></td>
                                </tr>
                                
                                
                            </table>
                            
            
                           <br><br>
            
                           <div align="center">
                                <button type="submit" class="btn btn-sm btn-secondary">????????????</button>
                                <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#updatePwdModal">???????????? ??????</button>
                                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteModal">????????????</button>
                            </div>
                            </form>
                     </div>
                </div>
            </div>


        </div>
	</div>
	
	<!-- ???????????? ????????? Modal -->
<div class="modal" id="updatePwdModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">???????????? ??????</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body" align="center">
		<form action="<%= contextPath %>/myPagePwdUpdate.my" method="post">
		<input type="hidden" name="userId" value="<%= loginUser.getMemId() %>">
 			<table>
                <tr>
                    <td>?????? ????????????</td>
                    <td><input type="password" name="userPwd" required></td>
                </tr>
                <tr>
                    <td>????????? ????????????</td>
                    <td><input type="password" name="updatePwd" id="pwdInput" required></td>
                </tr>
                <tr>
                    <td>????????? ???????????? ??????</td>
                    <td><input type="password" name="checkPwd" id="pwdInputCheck" required></td>
                </tr>
            </table>
            
            <br>

            <button type="submit" class="btn btn-sm btn-secondary" onclick="return userEnroll();">???????????? ??????</button>
        </form>
      </div>

      <script>
	      function userEnroll() {
	          const pwdInput = document.getElementById("pwdInput"); //pwdInput -> ???????????? 
	          const pwdInputCheck = document.querySelector("#pwdInputCheck"); //pwdInputCheck -> ???????????? ??????
	          
	          // ???????????? : ?????? ?????????/?????????,?????? ?????? ?????? ?????? ???????????? 6~15??? ??????
	          let regExp1 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,15}$/;
	    
	          if (!regExp1.test(pwdInput.value)) {
	             alert('???????????? ?????? ??????????????? ?????????????????????');
	             pwdInput.value = "";
	             pwdInput.focus();
	             return false;
	          }
	    
	          // ???????????? ??????
	          if (pwdInput.value != pwdInputCheck.value) {
	             alert("???????????? ????????? ???????????? ????????????.");
	             pwdInputCheck.value = "";
	             pwdInputCheck.focus();
	             return false;
	    
	          }
	       }
      </script>

    </div>
  </div>
</div>

  <!-- ??????????????? Modal -->
<div class="modal" id="deleteModal">
    <div class="modal-dialog">
      <div class="modal-content">
  
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">????????????</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
  
        <!-- Modal body -->
        <div class="modal-body" align="center">
          <form action="<%= contextPath %>/myPageDelete.my" method="post">
          <input type="hidden" name="userId" value="<%= loginUser.getMemId() %>">
            <b>?????? ??? ????????? ????????? ?????????.<br> ????????? ?????????????????????????</b> <br><br> 
          
            ????????????: <input type="password" name="userPwd" required> <br><br>
            <button type="submit" class="btn btn-sm btn-danger">????????????</button>
         </form>
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
        
        function validatePwd(){
            if($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()){
                alert("????????? ??????????????? ???????????? ????????????.");

                return false;
            };
        };
    </script>   

</body>
</html>