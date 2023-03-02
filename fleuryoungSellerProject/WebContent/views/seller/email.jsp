// 인증번호 받기 버튼  (아이디 찾기 - 이메일 인증)
        let user_id = ""; 
        document.getElementById("btnSendEmail").addEventListener("click", function () {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/findIdByEmailProc.mem",
                data: {
                    email: document.getElementById("email").value
                }
            }).done(function (data) {
                if (data == "false") {
                    alert("존재하지 않는 이메일입니다.");
                } else {
                    user_id = data;
                    alert("인증번호를 입력해주세요");
                    document.getElementById("sendNum_Wrapper").style.display = "flex"; 
                    sendNumberByEmail(); 
                    document.getElementById("btnSendEmail").disabled = "disabled";
                }
            }).fail(function (e) {
                console.log(e);
            });
        });
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

        // 아이디 입력 후, 다음 버튼 클릭시 
        let inputId = document.getElementById("inputId");
        document.getElementById("idCheck").addEventListener("click", function () {
            $.ajax({ 
                type: "post",
                url: "${pageContext.request.contextPath}/idCheckProc.mem",
                data: {
                    id: inputId.value
                }
            }).done(function (data) {
                if (data == "true") { 
                    document.getElementById("firstWrap").style.display = "none";
                    document.getElementById("secondWrap").style.display = "inline-block";
                } else if(data == "kakao") {
                    alert("카카오 회원은 해당 기능을 사용할 수 없습니다.");
                } else {
                    alert("아이디를 제대로 입력하세요.");
                }
            }).fail(function (e) {
                console.log(e);
            });
        });

        $(".modal").on("hidden.bs.modal", function(){
            $("input").val("");
            document.getElementById("firstWrap").style.display = "block";
            document.getElementById("secondWrap").style.display = "none";
        });

        // 이메일로 패스워드 발급 
        document.getElementById("btnSendEmail2").addEventListener("click", function () {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/emailCheckProc.mem",
                data: {
                    email: document.getElementById("email2").value
                }
            }).done(function (data) {
                if (data == "false") {
                    alert("이메일을 정확히 입력해주세요");
                } else {
                    sendPasswordByEmail();
                }
            }).fail(function (e) {
                console.log(e);
            });
        });
        // 임시 패스워드 발송
        function sendPasswordByEmail() {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/findPwByEmailProc.mem",
                data: {
                    id: inputId.value,
                    email: document.getElementById("email2").value
                }
            }).done(function (data) {
                if (data == "true") {
                    alert("패스워드를 이메일로 발송했습니다.");
                    $('#findPwModal').modal('hide');
                } else {
                    alert("패스워드 발송 실패.");
                }
            }).fail(function (e) {
                console.log(e);
            });
        }