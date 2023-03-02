<%@page import="com.kh.seller.model.vo.Seller" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String contextPath=request.getContextPath(); Seller loginSeller=(Seller)session.getAttribute("loginSeller");
String alertMsg=(String)session.getAttribute("alertMsg"); %>
<!DOCTYPE html>
<html lang="en">
<!-- session 필요 -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="shortcut icon" href="resources/img/logo.png">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
<div class="main-wrapper login-body">
    <div class="login-wrapper">
        <div class="container">
            <a href="<%= contextPath%>"><img class="img-fluid logo-dark mb-2" src="resources/img/Fleuryoung.png" alt="Logo"></a>
            <div class="loginbox" style="width: 450px">
                <div class="login-right" style="width: 450px">
                    <div class="login-right-wrap" style="width: 450px">
                        <br>
                        <p class="account-subtitle">Fleuryoung에 오신것을 환영합니다!</p>
                        <form action="<%= contextPath %>/idSelect.se" method="post">
                            <input type="hidden" id="idSelect" value="idSelect">
                                
                                <div class="form-group">
                                    <label class="form-control-label">이메일</label>
                                    <div class="pass-group">
                                        <input type="email" id="email" class="form-control pass-input"name="email" required>
                                        
                                    </div>
                                </div>
                                <div class="form-group" id="sendNum_Wrapper" style="display: none;">
                                    <label class="form-control-label">인증번호</label>
                                    
                                    <div class="pass-group" >
                                        <input type="text" class="form-control-sm" name="selName"required >
                                        <button type="button" class="btn btn-primary btn-sm" id="btnSubmit">인증확인</button>
                                    </div>
                                </div>  

                            <button class="btn btn-lg btn-block btn-primary w-100"
                                type="button" id="btnSendEmail">이메일 인증</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <!-- js 호출 -->
        <script src="resources/js/jquery-3.6.0.min.js"></script>
        <script src="resources/js/bootstrap.bundle.min.js"></script>
        <script src="resources/js/feather.min.js"></script>
        <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="resources/plugins/apexchart/apexcharts.min.js"></script>
        <script src="resources/plugins/apexchart/chart-data.js"></script>
        <script src="resources/js/script.js"></script>

        <script>
            $(function(){
                let user_id = ""; 
                document.getElementById("btnSendEmail").addEventListener("click", function () {
                    console.log("옹ㅇ");
                    $.ajax({
                        type: "post",
                        url: "email.se",
                        data: {
                            email: document.getElementById("email").value,
                            selname : document.getElementById("idSelect").value
                        }
                    }).done(function (data) {
                        if (data == "false") {
                            alert("존재하지 않는 이메일입니다.");
                        } else {
                            user_id = data;
                            alert("인증번호를 입력해주세요");
                            document.getElementById("sendNum_Wrapper").style.display = "block"; 
                            sendNumberByEmail(); 
                            document.getElementById("btnSendEmail").disabled = "disabled";
                        }
                    }).fail(function (e) {
                        console.log(e);
                    });
                });
            })
            // 인증번호 발송 (아이디 찾기 - 이메일 인증)
            let verification_number = 0; 
            function sendNumberByEmail() {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/sendEmailProc.mem",
                    data: {
                        email: document.getElementById("email").value
                    }
                }).done(function (data) {
                    verification_number = data;
                }).fail(function (e) {
                    console.log(e);
            });
        }
             // 인증번호 확인 버튼 (아이디 찾기 - 이메일 인증)
             const inputNumber = document.getElementById("inputNumber"); 
            document.getElementById("btnSubmit").addEventListener("click", function () {
            if (inputNumber.value == verification_number) {
                alert("당신의 아이디는 " + user_id + " 입니다."); 
                document.getElementById("inputNumber").readOnly = "true"; 
                document.getElementById("btnSubmit").disabled = "disabled"; 
                $('#findIdModal').modal('hide');
            } else {
                alert("인증번호를 잘못 입력하셨습니다.");
            }
        })
        </script>

</body>

</html>