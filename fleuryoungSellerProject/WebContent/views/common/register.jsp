<%@ page import="com.kh.seller.model.vo.*" %>
<%@ page import="com.kh.common.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/registerStyle.css">
    
</head>

<script>

</script>



<body>

    <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo">
                <div class="loginbox">
                    <div class="login-right">
                        <div class="login-right-wrap">
                             <h1>회원가입</h1>
                            <p class="account-subtitle">
                                <small>*</small> 항목은 필수 입력 항목입니다. <br></p>

                            <form action="register.se">
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
                                <div>   
                                    <div id="idArea"class="form-group">
                                        <label for="id"><small>*</small> 아이디</label>
                                        <input type="text" class="form-control" id="idInput" required placeholder="공백없이 소문자,숫자로 5~12글자" name="selId">
                                        <button>중복확인</button>
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
                                        <input type="email" class="form-control" id="emailInput" > <br>
                                        <a href=""><button type="button" class="btn btn-outline-success" id="emailButton" name="email">이메일 인증하기</button></a>
                                    </div>
                    
                    
                                    <div id="phoneArea">
                                        <label for="phone">휴대폰번호</label>
                                        <input type="phone" class="form-control" id="phoneInput" placeholder="-를 제외한 숫자만 입력해주세요"name="phone">
                                        <a href=""><button type="button" class="btn btn-outline-info" id="phoneButton">휴대폰 인증하기</button></a>
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
                                        <input type="text" class="form-control" id="registerNoInput2" placeholder="-를 제외한 숫자만 입력해주세요" name="register" required>
                                        <button>중복확인</button>
                                    </div>
                    
                    
                    
                    
                    
                    
                                    <div id="addressArea">
                                        <label for="address" id="addressLabel">주소</label>
                    
                                        <div id="addressDiv2"> 
                                         <input type="text"  id="address1" placeholder="우편번호" name="poster">
                                        <button id="sample6_execDaumPostcode">주소검색</button>  <br>
                                        <input type="text"  id="address2" placeholder="주소" name="street"> <br>
                                        <input type="text" class="form-control" id="address3" name="address" placeholder="상세주소를 입력해주세요"> 
                                        </div>
                                    </div>

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
                                            <li><button type="subimt" class="fpmgBt1">비동의</button></li>
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

                            <div class="social-login">
                                <span>Register with</span>
                                <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#"
                                    class="google"><i class="fab fa-google"></i></a>
                            </div>

                            <div class="text-center dont-have">이미 계정이 있습니까? <a href="login.html">로그인</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <script src="resources/js/bootstrap.bundle.min.js"></script>

    <script src="resources/js/feather.min.js"></script>

    <script src="resources/js/script.js"></script>
</body>

</html>