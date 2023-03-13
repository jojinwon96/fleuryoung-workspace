<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kh.member.model.vo.Member"%>
<%@page import="com.kh.member.controller.FindPwController"%>
<%
	Member findPw = (Member)session.getAttribute("findPw");	
	String alertMsg = (String)request.getAttribute("alertMsg");	
	
	String AuthenticationKey = (String)request.getAttribute("AuthenticationKey");
	String member_id = (String)request.getAttribute("member_id");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 아이디 찾기 해서 아이디 보여주는 페이지 -->
<head>
    <meta charset="utf-8">
    <title>Fleuryoung</title>
    <link rel="stylesheet" href="../../resources/css/header.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>




<!-- ------------------------------------------------------------------------ -->
    <style>
        #body{
            width: 100%;
            height: 800px;
            margin-top: 120px;
           
            
        }
        body {
  padding: 40px;
}

.separator {
  margin-top: 25px;
  margin-bottom: 80px;
  border: 0;
}

.separator--line {
  border: 0;
  border-bottom: 5px solid green;
  width: 0;
  animation: separator-width 1s ease-out forwards;
}

@keyframes separator-width {
  0% {
    width: 0;
  }
  100% {
    width: 100%;
    
  }
}
#header{
    
    width: 40%;
    margin: auto;

}

a{
    text-decoration: none;
    text-align: center;
    color: rgb(99, 97, 97);
}

#contentBody{
    width: 50%;
    margin: auto;
    height: 500px;
}
#links{
    margin: auto;
    text-align: center;
    margin-top: 120px;
}
#message{
    text-align: center;
}

#content{
  height: 500px;
  width: 100%;
  margin: auto;
}
#verifyCodeBtn{
	border: 1px solid green;
    display: inline-block;
    height: 40px;
    width : 70px

 }
 #verifyCodeBtn:hover{
 	color:lightgreen;
 }
 #pwChangeBtn{
 border: 1px solid lightgray;
    display: inline-block;
    height: 37px;
    width : 120px
 }
  #pwChangeBtn:hover{
  color: lightblue;
  }
 button:disabled{
  border: 1px solid black;
  background-color: lightgray;
   height: 37px;
    width : 120px
 }
 button:disabled:hover{
  pointer-events: none;
 }
 #contentDiv{
 	width:100%;
 	margin:auto;
 }
 #ptag{
 	color:red;
 	display: inline-block;
 }
 

/* ----------------------------------------------------------------------------------------------------- */



    </style>
</head>

<body class style="padding-right: 0px;">

    <div class="wrap">
        
        <%@ include file="../common/header.jsp"%>
        
        	
        

        <div id="body">
            <div id="header" >
                <h3 align="center"><b>인증번호 입력 & 비밀번호 변경</b>  </h3> <br>
                <h6 align="center" style="font-size:15px;"><p id="ptag">*</p>이메일 인증을 완료 하셔야 비밀번호 변경이 가능합니다</h6>
                <hr class="separator separator--line"  align="center" style="margin-top:0px;">
            </div>

           
            
           
           
           <div id="content"style="width:30%; margin: auto;">
            <form action="/fleuryoungProject/PwFindUpdateController" id="fromId" name="pwFindInput">
               <div id="contentDiv">
               <input type="text"  name="verifyCode"   id="verifyCode" placeholder="인증번호를 입력해주세요" style="width: 350px; height: 40px;"> 
              <button type="button"  id="verifyCodeBtn" onclick="return verifyCodeBtn1()">확인</button> <br><br>
              <input type="password" id="password1" name="password1" placeholder="변경할 비밀번호를 입력해주세요" style="width: 350px; height: 40px;"> <br><br>
              <input type="password" id="password2"  name="password2" placeholder="비밀번호를 다시 입력해주세요" style="width: 350px; height: 40px;"> 
              <button type="submit"  id="pwChangeBtn"   disabled='disabled'  onclick="return pw_modify()" >비밀번호 변경</button>
              <br>
              </div>
              
              
          </form>
           </div>
                
            
            
            
            

            <script>
            
            
            
                function verifyCodeBtn1(){ 
                var frm = document.pwFindInput;
                var verifyCode = document.getElementById("verifyCode");
                var AuthenticationKey = "<%= AuthenticationKey %>"
                
            
                if (frm.verifyCode.value.length < 1) {
                  alert("인증번호를 입력해주세요");
                  console.log(AuthenticationKey);
                  console.log(member_id);
                  
                  return false;
                }
                
                if(AuthenticationKey!=verifyCode.value ){
                  alert("인증번호가 일치하지 않습니다.");
                  return false;
                }else{
                  alert("인증이 확인되었습니다.");
                  const btn = document.getElementById('pwChangeBtn');
                  btn.disabled  = false;
                	
                }
                }
                
                function pw_modify(){
                var frm = document.pwFindInput;
                const pwdInputf = document.getElementById("#password1");
                const pwdInputCheckf = document.querySelector("#password2");
                    
                if (frm.password1.value.length < 1) {
                  alert("변경하실 비밀번호를  입력해주세요");
                  return false;
                }
                
                // 비밀번호 : 영문 소문자/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이
				let regExp1 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,15}$/;
		
				if (!regExp1.test(password1.value)) {
					alert('유효하지 않은 비밀번호를 입력하셨습니다');
					password1.value = "";
					password1.focus();
					return false;
				}
				
                if (frm.password2.value.length < 1) {
                    alert("비밀번호 확인을 입력해주세요");
                    return false;
                  }
            
                
                  if(password1.value != password2.value) {
                  alert("비밀번호 확인이 일치하지 않습니다.");
                  password1.value = "";
                  password2.value = "";
                  password2.focus();
                  return false;
              }
                  
              
                }
                </script>
           
                <div id="links">
                    <a href="<%= contextPath %>/findIdPage.me" align="center" style="text-decoration-line: none;">아이디 찾기</a>
                    <span>&nbsp; | &nbsp;</span>
                    <a href="<%= contextPath %>/loginpage.me" style="text-decoration-line: none;">로그인하기</a>
                </div>
                
            </div>
           
        </div>
        
        
        
        <br>
            

  

       


        
           








         
    </div>

    <script src="../../resources/js/jquery-3.1.1.min.js"></script>
    <script src="../../resources/js/scripts.js"></script>

    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>