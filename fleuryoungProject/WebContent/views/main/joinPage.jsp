<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./checkBox.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
#infoInputMeori {
	/* text-align: center; */
	margin-top: 100px;
	margin-left: 400px;
	margin-bottom: 50px;
	color: lightcoral;
}

#CreateAccount {
	padding-left: 10px;
}

small {
	color: red;
}

h6 {
	text-align: center;
}

#daejang {
	border: 1px solid lightgray;
	width: 40%;
	margin-left: auto;
	margin-right: auto;
	height: 1500px;
}

#info {
	width: 40%;
	border: 1px solid lightgray;
	margin: 0 auto;
	height: 1500px;
}

#infoHeader {
	height: 50px;
	border: 1px solid lightgray;
	line-height: 50px;
	background-color: lightgray;
}

label {
	width: 30%;
	text-align: right;
	padding-right: 8px;
	height: 100%;
	float: left;
	line-height: 37px;
}

#idArea, #pwdArea1, #pwdArea2, #birthDateArea, #genderArea, #nameArea {
	width: 100%;
	height: 80px;
	padding-top: 30px;
}

#phoneArea {
	width: 100%;
	height: 120px;
	padding-top: 30px;
}

#emailArea {
	width: 100%;
	height: 120px;
	padding-top: 30px;
}

#agreeArea {
	width: 70%;
	height: 300px;
	padding-top: 30px;
	margin: auto;
}

#agreeArea>* {
	margin: 0;
	padding: 0;
	box-sizing: border-box
}

body {
	background-color: #f7f7f7;
}

ul>li {
	list-style: none
}

a {
	text-decoration: none;
}

.clearfix::after {
	content: "";
	display: block;
	clear: both;
}

#joinForm {
	width: 460px;
	margin: 0 auto;
}

ul.join_box {
	border: 1px solid #ddd;
	background-color: #fff;
}

.checkBox, .checkBox>ul {
	position: relative;
}

.checkBox>ul>li {
	float: left;
}

.checkBox>ul>li:first-child {
	width: 85%;
	font-weight: 600;
	color: #888;
	padding: 15px 15px 5px 0px;
}

.checkBox>ul>li:nth-child(2) {
	position: absolute;
	top: 50%;
	right: 30px;
	margin-top: -12px;
}

.checkBox textarea {
	width: 96%;
	height: 90px;
	margin: 0 2%;
	background-color: #f7f7f7;
	color: #888;
	border: none;
}

.footBtwrap {
	margin-top: 15px;
}

.footBtwrap>li {
	float: left;
	width: 50%;
	height: 60px;
}

.footBtwrap>li>button {
	display: block;
	width: 98%;
	height: 100%;
	font-size: 20px;
	text-align: center;
	line-height: 60px;
}

.fpmgBt1 {
	background-color: #fff;
	color: #888;
	border-color: white;
	border: 1px solid lightgray;
	margin-right: 10px;
	margin-top: 70px;
}

.fpmgBt2 {
	background-color: lightsalmon;
	color: #fff;
	border-color: white;
	border: 1px solid lightgray;
	margin-top: 70px;
}

#emailButton, #phoneButton {
	width: 50%;
	height: 38%;
	margin-top: 5px;
	vertical-align: middle;
}

#addressArea {
	width: 100%;
	height: 150px;
	padding-top: 30px;
}

#pwdInput, #pwdInputCheck, #emailInput, #phoneInput, #nameInput {
	width: 50%;
	display: inline-block;
}

#idInput {
	width: 37%;
	display: inline-block;
}

#address1 {
	width: 20%;
	margin-bottom: 5px;
}

button {
	border: 1px solid gray;
	display: inline-block;
}

#addressDiv2 {
	width: 70%;
	height: 100%;
	/* display: inline; */
	float: left;
}

#address2, #address3 {
	width: 70%;
	margin-bottom: 5px;
}

#lastUl {
	margin-bottom: 45px;
}

::placeholder {
	font-size: 0.8em;
}

#pwdArea1>::placeholder {
	font-size: 0.5em;
}
#birthDateInput{
    margin-top: 6px;
}

 #male, #female{
    margin-top: 12px;
    margin-left: 7px;
 }
</style>


    <script>
        window.onload = function () {
            const checkAll = document.getElementById('chkAll');
            const chks = document.querySelectorAll('.chk');
            const chkBoxLength = chks.length;

            checkAll.addEventListener('click', function (event) {
                if (event.target.checked) {
                    chks.forEach(function (value) {
                        value.checked = true;
                    })
                } else {
                    chks.forEach(function (value) {
                        value.checked = false;
                    })
                }
            });
            for (chks of chks) {
                chks.addEventListener('click', function () {
                    let count = 0;
                    chks.forEach(function (value) {
                        if (value.checked == true) {
                            count++;
                        }
                    })
                    if (count !== chkBoxLength) {
                        checkAll.checked = false;
                    } else {
                        checkAll.checked = true;
                    }
                })
            }
        }
    </script>
</head>
<body>

	<div class="wrap">

		<%@ include file="../common/header.jsp"%>

		<div id="infoInputMeori">
			<h3>
				<b> 회원 정보 입력 </b>
			</h3>
		</div>

		<h6>
			<small>*</small> 항목은 필수 입력 항목입니다.
		</h6>
		<br>

		<div id="infoDaejang">

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------- -->
			<div>
				<form  id = "enroll-form" action="<%= contextPath %>/insert.me" method="post">
					<div id="info">

						<div id="infoHeader">
							<div id="CreateAccount">CreateAccount</div>
						</div>


						<div id="idArea">
							<label for="id"><small>*</small> 아이디</label> <input type="text"
								class="form-control" id="idInput" required
								placeholder="공백없이 소문자,숫자로 5~12글자">
							<button>중복확인</button>
						</div>


						<div id="pwdArea1">
							<label for="password"><small>*</small> 비밀번호</label> <input
								type="password" class="form-control" id="pwdInput" required
								placeholder="공백없이 소/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이">
						</div>


						<div id="pwdArea2">
							<label for="password"><small>*</small>비밀번호 확인</label> <input
								type="password" class="form-control" id="pwdInputCheck"
								placeholder="비밀번호를 다시 입력해주세요" required>
						</div>

						
						
						
						<div id="emailArea">
							<label for="email">이메일</label> <input type="email"
							class="form-control" id="emailInput"> <br> <a
							href=""><button type="button"
							class="btn btn-outline-success" id="emailButton">이메일
							인증하기</button></a>
						</div>

						
						
						<div id="nameArea">
							<label for="id"><small>*</small>이름</label>
							<input type="text" class="form-control" id="nameInput"  required>
						</div>


						
						<div id="phoneArea">
							<label for="phone">휴대폰번호</label> <input type="phone"
								class="form-control" id="phoneInput"
								placeholder="-는 빼고 숫자만 입력해주세요"> <a href=""><button
									type="button" class="btn btn-outline-info" id="phoneButton">휴대폰
									인증하기</button></a>
						</div>

						

						<div id="addressArea">
							<label for="address" id="addressLabel">주소</label>



							<div id="addressDiv2">
								<input type="text" id="address1" placeholder="주소번호">
								<button id="btn-address">주소검색</button>
								<br> <input type="text" id="address2" placeholder="도로명주소">
								<br> <input type="text" class="form-control" id="address3"
									placeholder="상세주소를 입력해주세요">
							</div>

						</div>
						

						<div id="birthDateArea">
							<label for= "birthDate">생년월일</label>
							<p><input type="date" id="birthDateInput" value="2000-01-01" min="1900-01-01" max="2022-01-01"></p>
						</div>
		
						<div id="genderArea">
							<label for= "birthDate">성별</label>
							<!-- <select name="job" id="gender">
								<option value="1">남</option>
								<option value="2">여</option> -->
								<input type="radio" name="gender" id="male" value="1">남
								<input type="radio" name="gender" id="female" value="2">여
							</select>
						</div>


						



						<div id="agreeArea">

							<ul class="join_box">
								<li class="checkBox check01">
									<ul class="clearfix">
										<li>아래 약관에 모두 동의합니다.</li>
										<li class="checkAllBtn"><input type="checkbox"
											name="chkAll" id="chkAll" class="chkAll"></li>
									</ul>
								</li>
								<li class="checkBox check02">
									<ul class="clearfix">
										<li>이용약관 동의(필수)</li>
										<li class="checkBtn"><input type="checkbox" name="chk"
											class="chk"></li>
									</ul> <textarea name="" id="">여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
								</li>
								<li class="checkBox check03">
									<ul class="clearfix">
										<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
										<li class="checkBtn"><input type="checkbox" name="chk"
											class="chk"></li>
									</ul> <textarea name="" id="">여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
								</li>
								<li class="checkBox check03">
									<ul class="clearfix">
										<li>위치정보 이용약관 동의(선택)</li>
										<li class="checkBtn"><input type="checkbox" name="chk"
											class="chk"></li>
									</ul> <textarea name="" id="">여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
               </textarea>
								</li>
								<li class="checkBox check04">
									<ul class="clearfix" id="lastUl">
										<li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
										<li class="checkBtn"><input type="checkbox" name="chk"
											class="chk"></li>
									</ul>

								</li>
							</ul>
							<ul class="footBtwrap clearfix">
								<li><button class="fpmgBt1">비동의</button></li>
								<li><button type="submit" class="fpmgBt2"
										id="userEnrollButton" onclick="return userEnroll();">회원가입</button></li>
							</ul>



						</div>


					</div>
				</form>
			</div>





		</div>
	</div>

	<!-- 아이디, 비밀번호 정규표현식  -->
	<script>
        function userEnroll() {
            const idInputf = document.getElementById("idInput");
            const pwdInputf = document.getElementById("pwdInput");
            const pwdInputCheckf = document.querySelector("#pwdInputCheck");


            // id : 소문자,숫자로 5~12글자
            let regExp = /^(?=.*[a-z])(?=.*\d)[a-z\d]{5,12}$/;

            if (!regExp.test(idInputf.value)) {
                alert('유효하지 않은 id를 입력하셨습니다.');
                idInput.select();
                return false;
            }

            // 비밀번호 : 영문 소문자/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이
            let regExp1 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,15}$/;

            if (!regExp1.test(pwdInput.value)) {
                alert('유효하지 않은 비밀번호를 입력하셨습니다');
                pwdInput.value = "";
                pwdInput.focus();
                return false;
            }

            // 비밀번호 확인
            if (pwdInput.value != pwdInputCheck.value) {
                alert("비밀번호 확인이 일치하지 않습니다.");
                pwdInputCheck.value = "";
                pwdInputCheck.focus();
                return false;

            }

        }
    </script>
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>