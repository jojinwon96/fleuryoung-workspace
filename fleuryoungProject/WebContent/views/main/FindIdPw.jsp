<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- id/비밀번호 찾는 페이지 -->
<html>
<head>
    <meta charset="utf-8">
    <title>Fleuryoung</title>
    <link rel="stylesheet" href="../../resources/css/header.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
     <script src="../../resources/js/jquery-3.1.1.min.js"></script>
    <script src="../../resources/js/scripts.js"></script>


    

    <style>
         /*
          <!---------------------------------------------------- 내가 작성한  css 시작 ------------------------------------------------------------------------------------->
          */
        
   		#realContents {
            width: 100%;
        }
        #realContents::placeholder{
            font-size: 3px;
        }

        @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css");

* {
  box-sizing: border-box;
}
body {
  font-family: "Montserrat", sans-serif;
  margin: 0;
  padding: 0;
  background-color:   #ebecf0;;
}
.wrapper {
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #ebecf0;
  overflow: hidden;
}
.container {
  border-radius: 10px;
  box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
  position: absolute;
  width: 768px;
  min-height: 480px;
  overflow: hidden;
}
#realContents form {
  background: #ebecf0;
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  justify-content: center;
  align-items: center;
}
#realContents form input {
  background: #eee;
  padding: 16px;
  margin: 8px 0;
  width: 85%;
  border: 0;
  outline: none;
  border-radius: 20px;
  box-shadow: inset 7px 2px 10px #babebc, inset -5px -5px 12px #fff;
}
button {
  border-radius: 20px;
  border: none;
  outline: none;
  font-size: 12px;
  font-weight: bold;
  padding: 15px 45px;
  margin: 14px;
  letter-spacing: 1px;
  text-transform: uppercase;
  cursor: pointer;
  transition: transform 80ms ease-in;
}
.form_btn {
  box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
}
.form_btn:active {
  box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}
.overlay_btn {
  background-color: #ff4b2b;
  color: #fff;
  box-shadow: -5px -5px 10px #ff6b3f, 5px 5px 8px #bf4b2b;
}
.sign-in-container {
  position: absolute;
  left: 0;
  width: 50%;
  height: 100%;
  transition: all 0.5s;
}
.sign-up-container {
  position: absolute;
  left: 0;
  width: 50%;
  height: 100%;
  opacity: 0;
  transition: all 0.5s;
}
.overlay-left {
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  justify-content: center;
  align-items: center;
  position: absolute;
  right: 0;
  width: 50%;
  height: 100%;
  opacity: 0;
  background-color: #ff4b2b;
  color: #fff;
  transition: all 0.5s;
}
.overlay-right {
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  justify-content: center;
  align-items: center;
  position: absolute;
  right: 0;
  width: 50%;
  height: 100%;
  background-color: #ff4b2b;
  color: #fff;
  transition: all 0.5s;
}
.container.right-panel-active .sign-in-container {
  transform: translateX(100%);
  opacity: 0;
}
.container.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 2;
}
.container.right-panel-active .overlay-right {
  transform: translateX(-100%);
  opacity: 0;
}
.container.right-panel-active .overlay-left {
  transform: translateX(-100%);
  opacity: 1;
  z-index: 2;
}
.social-links {
  margin: 20px 0;
}
form h1 {
  font-weight: bold;
  margin: 0;
  color: #000;
}

p {
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}
span {
  font-size: 12px;
  color: #000;
  letter-spacing: 0.5px;
  margin-bottom: 10px;
}
.social-links div {
  width: 40px;
  height: 40px;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  border-radius: 50%;
  box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
  cursor: pointer;
}
.social-links a {
  color: #000;
}
.social-links div:active {
  box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}

#nameInputId::placeholder, #emailInputId::placeholder,  #emailInputPwd::placeholder, #idInputPwd::placeholder {
            font-size: 0.7em;
        }

#h3Pwd, #h3Id{
    margin-bottom: 50px;
}
#findIdButton, #findPwdButton{
    font-size: 17px;
    font-weight: 1200px;

}
#wrap-self{background-color: white;}
        /*
          <!---------------------------------------------------- 내가 작성한  css 끝------------------------------------------------------------------------------------->
         */
    </style>
   
</head>

<body style="padding-right: 0px;">

    <div class="wrap">
       
        <%@ include file="../common/header.jsp"%>
        

        
        <!-------------------------------------------------------------- 내가 작성한 부분 시작 ------------------------------------------------------->

        
        <div id="realContents">
            <div class="wrapper">
                <div class="container" style="max-width: 850px; margin-bottom:200px; margin-right:50px">
                  <div class="sign-up-container">
                    <form>
                      <h3 id="h3Pwd"><b>비밀번호 찾기</b>  </h3>
                       <input type="text" id="idInputPwd" placeholder="아이디를 입력해주세요">
                       <input type="email" id="emailInputPwd" placeholder="가입시 사용하신 이메일을 입력해주세요">
                      <button class="form_btn" id="findPwdButton" style="margin-top: 15px; border-radius: 20px;"><b> 비밀번호 찾기</b></button>
                    </form>
                  </div>
                  <div class="sign-in-container">
                  
                  
                  <!-- 아이디찾기 -->
                  <!-- action="/fleuryoungProject/findId.me" -->
                    <form action="/fleuryoungProject/findId.me"  name="idfindscreen" method="post">
                      <h3 id="h3Id"><b> 아이디 찾기</b></h3>
                    
                        <input type="text" id="nameInputId" name="member_name" placeholder="이름을 입력해주세요">
                        <input type="email" id="emailInputId" name="member_email" placeholder="가입시 사용하신 이메일을 입력해주세요">
                        <button type="submit"  class="form_btn" id="findIdButton" style="margin-top: 15px; border-radius: 20px;" onClick="return id_search()"><b>아이디 찾기</b></button>
                    </form>
                    
                     <script>
          function id_search() { 
          var frm = document.idfindscreen;

          if (frm.member_name.value.length < 1) {
            alert("이름을 입력해주세요");
            return false;
          }
          if (frm.member_email.value.length < 1) {
            alert("이메일을 입력해주세요");
            return false;
          }
        //frm.method = "post";
        //frm.action = "/views/main/FindIdResult.jsp"; 
        //frm.submit();  
        }
        </script>
                  
                  
                  
                  </div>
                  <div class="overlay-container">
                    <div class="overlay-left">
                      <h4>아이디를 잊어버리셨나요?</h4>
                      <p style="text-align: center;">아이디를 잊어버리셨다면 <br> 아래 버튼을 클릭해주세요</p>
                      <button id="signIn" class="overlay_btn" style="border-radius: 20px;" >아이디 찾기</button>
                    </div>
                    <div class="overlay-right">
                      <h5>비밀번호를 잊어버리셨나요?</h5>
                      <p style="text-align: center;">비밀번호를 잊어버리셨다면 <br> 아래 버튼을 클릭해주세요</p>
                      <button id="signUp" class="overlay_btn" style="border-radius: 20px;">비밀번호 찾기</button>
                    </div>
                  </div>
                </div>
              </div>
            



        </div>

      


        <script>
            const signUpBtn = document.getElementById("signUp");
const signInBtn = document.getElementById("signIn");
const container = document.querySelector(".container");

signUpBtn.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});
signInBtn.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});
        </script>
  
    <!------------------------------------------------------------------------------ 내가 작성한 부분 끝------------------------------------------------>

   
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>