<%@ page import="com.kh.seller.model.vo.*" %>
<%@ page import="com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    String contextPath = request.getContextPath(); // /jsp
    // 로그인 시도 전 menubar.jsp 로딩시 : null
    // 로그인 시도 후 menubar.jsp 로딩시 : 로그인한 회원의 객체 생성
    
    String errorMsg = (String)session.getAttribute("errorMsg");
    // 서비스 요청 전 menubar.jsp 로딩시 : null
    // 서비스 성공 후 menubar.jsp 로딩시 : alert로 띄워줄 메세지 문구
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>회원가입</title>

    <link rel="shortcut icon" href="resources/img/logo.png">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/registerScript.js"> 

    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/registerStyle.css">
    
</head>



<body>
	<% if(errorMsg != null){ %>
	<script>
		alert("<%= errorMsg %>");
	</script>
	<% session.removeAttribute("alertMsg"); %>
	<%} %>
    <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container" style="margin:auto">
                <img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo">
                <div class="card">
                    <div class="login-right">	
                        <div class="login-right-wrap">
                        <br><br><br>
                             <h1 align="center">회원가입</h1>
                            <p class="account-subtitle">
                                <small>*</small> 항목은 필수 입력 항목입니다. <br></p>

                            <form action="<%=contextPath %>/register.se" method="post" enctype="multipart/form-data">
                                <!-- <div class="form-group">
                                    <label class="form-control-label">Name</label>
                                    <input class="form-control" type="text">
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">Email Address</label>
                                    <input class="form-control" type="text">
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">Password</label>
                                    <input class="form-control" type="text">
                                </div>
                                <div class="form-group">
                                    <label class="form-control-label">Confirm Password</label>
                                    <input class="form-control" type="text">
                                </div>
                                <div class="form-group mb-0">
                                    <button class="btn btn-lg btn-block btn-primary w-100"
                                        type="submit">Register</button>
                                </div> -->
                                <div class="col-mb-10 sol-sm-10">   
                                
                                    <div id="idArea"class="form-group">
                                        <label for="id"><small>*</small> 아이디</label>
                                        <input type="text" class="form-control" id="idInput" required placeholder="공백없이 소문자,숫자로 5~12글자" name="selId">
                                        <button class="btn btn-primary btn-sm">중복확인</button>
                                    </div>
                    
                    
                                    <div id="pwdArea1">
                                        <label for="password"><small>*</small> 비밀번호</label>
                                        <input type="password" class="form-control" id="pwdInput" required placeholder="공백없이 소/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이"name='selPw'>
                                    </div>
                    
                    
                                    <div id="pwdArea2">
                                        <label for="password"><small>*</small>비밀번호 확인</label>
                                        <input type="password" class="form-control" id="pwdInputCheck"  placeholder="비밀번호를 다시 입력해주세요" required>
                                    </div>
                    
                    
                                    <div id="emailArea">
                                        <label for="email">이메일</label>
                                        <input type="email" class="form-control" id="emailInput" name="email"> <br>
                                        <a href=""><button type="button" class="btn btn-outline-success" id="emailButton" >이메일 인증하기</button></a>
                                    </div>
                    
                    
                                    <div id="phoneArea">
                                        <label for="phone">휴대폰번호</label>
                                        <input type="phone" class="form-control" id="phoneInput" placeholder="-를 제외한 숫자만 입력해주세요"name="phone">
                                        <a href=""><button type="button" class="btn btn-outline-info" id="phoneButton">휴대폰 인증하기</button></a>
                                    </div>
                    
                    				<div id="telArea">
                                        <label for="tel">Tel</label>
                                        <input type="phone" class="form-control" id="telInput" placeholder="-를 제외한 숫자만 입력해주세요"name="tel">
                                    </div>
                    				
                    				<div id="faxArea">
                                        <label for="fax">Fax</label>
                                        <input type="phone" class="form-control" id="faxInput" placeholder="-를 제외한 숫자만 입력해주세요"name="fax">
                                    </div>
                    
                    
                                    <div id="storeNameArea">
                                        <label for="id"> 업체명</label>
                                        <input type="text" class="form-control" id="storeNameInput" name="storeName">
                                    </div>
                    
                    
                    
                                    <div id="registerNoArea">
                                        <label for="id">대표자명</label>
                                        <input type="text" class="form-control" id="registerNoInput" name="selName">
                                    </div>
                    
                    
                                    <div id="registerNoArea2">
                                        <label for="id"><small>*</small>사업자등록번호</label>
                                        <input type="text" class="form-control" id="registerNoInput2" placeholder="-를 제외한 숫자만 입력해주세요" name="selBusinessNo" required>
                                        <button>중복확인</button>
                                    </div>

									<div id="registerNoArea3">
                                        <label for="file">프로필 사진</label>
                                        <img id="file1" width="150" height="150" onclick="chooseFile();" onerror="this.style.display='none'">
                                        <small>왼쪽 박스 클릭시 이미지 삽입(미등록 기본이미지)</small>
                                        
                                    </div>
                                        <input type="file" name="upfile" id="fileInput" style="display: none;" onchange="loadImg(this,1);">
								
								<br><br><br><br>
                                    <div id="addressArea">
                                        <label for="address" id="addressLabel">주소</label>
                   
                                        <div id="addressDiv2"> 
	                                        <input type="text" id="address1" placeholder="우편번호" name="poster" class="address1">
											<input type="button" class="btn btn-primary btn-md" onclick="juso();" value="우편번호 찾기"><br>
											<input type="text" class="form-control" id="address2" placeholder="주소" name="street"><br>
											<input type="text" class="form-control" id="address3" placeholder="상세주소" name="address">
                                       </div>
                                         
 										<br><br>
 										
                                    </div>
									<br>
                                    <div id="agreeArea">
                    
                                        <ul class="join_box">
                                            <li class="checkBox check01">
                                                <ul class="clearfix">
                                                    <li>아래 약관에 모두 동의합니다.</li>
                                                    <li class="checkAllBtn">
                                                        <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="checkBox check02">
                                                <ul class="clearfix">
                                                    <li>이용약관 동의(필수)</li>
                                                    <li class="checkBtn">
                                                        <input type="checkbox" name="chk" class="chk"> 
                                                    </li>
                                                </ul>
                                                <textarea name="" id="">여러분을 환영합니다. Fleuryoung 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 Fleuryoung 서비스의 이용과 관련하여 Fleuryoung 서비스를 제공하는 Fleuryoung 주식회사(이하 Fleuryoung)와 이를 이용하는 Fleuryoung 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 Fleuryoung 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                   </textarea>
                                            </li>
                                            <li class="checkBox check03">
                                                <ul class="clearfix">
                                                    <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                                                    <li class="checkBtn">
                                                        <input type="checkbox" name="chk" class="chk">
                                                    </li>
                                                </ul>
                                
                                                <textarea name="" id="">여러분을 환영합니다. Fleuryoung 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 Fleuryoung 서비스의 이용과 관련하여 Fleuryoung 서비스를 제공하는 Fleuryoung 주식회사(이하 Fleuryoung)와 이를 이용하는 Fleuryoung 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 Fleuryoung 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                   </textarea>
                                            </li>
                                            <li class="checkBox check03">
                                                <ul class="clearfix">
                                                    <li>위치정보 이용약관 동의(선택)</li>
                                                    <li class="checkBtn">
                                                        <input type="checkbox" name="chk" class="chk">
                                                    </li>
                                                </ul>
                                
                                                <textarea name="" id="">여러분을 환영합니다. Fleuryoung 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 Fleuryoung 서비스의 이용과 관련하여 Fleuryoung 서비스를 제공하는 Fleuryoung 주식회사(이하 Fleuryoung)와 이를 이용하는 Fleuryoung 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 Fleuryoung 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                                   </textarea>
                                            </li>
                                            <li class="checkBox check04">
                                                <ul class="clearfix" id="lastUl">
                                                    <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                                                    <li class="checkBtn">
                                                        <input type="checkbox" name="chk" class="chk">
                                                    </li>
                                                </ul>
                                
                                            </li>
                                        </ul>
                                        <ul class="footBtwrap clearfix" >
                                            <li><button type="button" class="fpmgBt1">비동의</button></li>
                                            <li><button  type="submit" class="fpmgBt2 btn-primary" id="sellerEnrollButton">회원가입</button></li>
                                        </ul>
                    
                    					
                    
                                    </div>
                    
                                </div>
                            </form>
                            <br clear="both"><br><br><br><br><br>
                            <div class="login-or">
                                <span class="or-line"></span>
                                <span class="span-or">or</span>
                            </div>

                           <br> <br>

                            <div class="text-center dont-have">이미 계정이 있습니까? <a href="<%request.getContextPath();%>>">로그인</a>
                            <br> <br><br> <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>



function chooseFile(){
    $("#fileInput").click();
}

function loadImg(inputFile ,num){

    if(inputFile.files.length ==1){ // 파일 선택된 경우 => 파일 읽어들임
        
        // 파일을 읽어들일 FileReader 객체 생성
        const reader = new FileReader();

        // 파일을 읽어들이는 메소드 호출
        reader.readAsDataURL(inputFile.files[0]);
        // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

        //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
        reader.onload = function(e){
            // e.target.result => 읽어들인 파일의 고유한 url

            switch(num){
                case 1: $("#file1").attr("src", e.target.result); break;
               
                 }
            }
            
        } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
        switch(num){
                case 1: $("#file1").attr("src", null); break;
        }
    }
} //loadImg end

function juso() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
        
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('address1').value = data.zonecode;
            document.getElementById("address2").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("address3").focus();
        }
    }).open()}
    
    
    </script>
 	
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <script src="resources/js/bootstrap.bundle.min.js"></script>

    <script src="resources/js/feather.min.js"></script>

    <script src="resources/js/script.js"></script>
</body>

</html>