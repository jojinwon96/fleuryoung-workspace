<%@page import="com.admin.seller.model.vo.Seller"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Seller> sList = (ArrayList<Seller>)request.getAttribute("sList");
%>
<!DOCTYPE html>

	<!-- side and nav bar start -->
    <%@ include file = "../common/menu-bar.jsp" %>
	<!-- side and nav bar end -->

    <div class="main-wrapper">
        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">판매 계정</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>회원관리
                                </li>
                                <li class="breadcrumb-item active">판매자 계정</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a class="btn btn-primary me-1" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg">
                                <i class="fas fa-plus"></i>
                            </a>
                        </div>
                        <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myLargeModalLabel">계정추가</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">프로필</label>
                                                <div class="col-sm-9">
                                                    <div class="d-flex align-items-center">
                                                        <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                            for="edit_img">
                                                            <img id="avatarImg" class="avatar-img"
                                                                src="assets/img/profiles/usermain.jpg" alt="Profile Image">
                                                            <input type="file" id="edit_img" onchange="loadImg(this);">
                                                            <span class="avatar-edit">
                                                                <i data-feather="edit-2"
                                                                    class="avatar-uploader-icon shadow-soft"></i>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div id="idArea" class="row form-group">
                                                <label for="id" class="col-sm-3 col-form-label input-label"> 아이디</label> 
                                                <div class="col-sm-9">
                                                    <input type="text"
                                                    id="idInput" required name="memId"
                                                    placeholder="공백없이 소문자,숫자로 5~12글자" class="form-control" value="">
                                                </div>
                                            </div>
                    
                                            <div id="pwdArea1" class="row form-group">
                                                <label for="password" class="col-sm-3 col-form-label input-label"> 비밀번호</label> 
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="pwdInput" required name = "memPw" value="" placeholder="공백없이 소/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이">
                                                </div>
                                            </div>
                    
                    
                                            <div id="pwdArea2" class="row form-group">
                                                <label for="password" class="col-sm-3 col-form-label input-label">비밀번호 확인</label> 
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="pwdInputCheck" value="" placeholder="비밀번호를 다시 입력해주세요" required>
                                                </div>
                                            </div>
                                            
                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">사업자번호</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="businessNo" placeholder="사업자번호"
                                                        value="">
                                                </div>
                                            </div>

                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">업체명</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="storeName" placeholder="업체명"
                                                        value="">
                                                </div>
                                            </div>

                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="name" placeholder="Your Name"
                                                        value="">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <label for="email" class="col-sm-3 col-form-label input-label">이메일</label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control" id="email" placeholder="Email"
                                                        value="">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <label for="phone" class="col-sm-3 col-form-label input-label">휴대폰 <span
                                                        class="text-muted">(Optional)</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="phone"
                                                        placeholder="-는 빼고 숫자만 입력해주세요" value="">
                                                </div>
                                            </div>
                                            
                                            <div class="row form-group">
                                                <label for="phone" class="col-sm-3 col-form-label input-label">전화번호 <span
                                                        class="text-muted">(Optional)</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="tel"
                                                        placeholder="-는 빼고 숫자만 입력해주세요" value="">
                                                </div>
                                            </div>
                                            
                                            <div class="row form-group">
                                                <label for="phone" class="col-sm-3 col-form-label input-label">팩스번호 <span
                                                        class="text-muted">(Optional)</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="fax"
                                                        placeholder="-는 빼고 숫자만 입력해주세요" value="">
                                                </div>
                                            </div>
                                            
                                            <script>
                                                var gender = $('input[name=gender]:checked').val();
                                            </script>
                                            
                                            <div id="addressArea" class="row form-groups">
                                                <label for="address" id="addressLabel" class="col-sm-3 col-form-label input-label">주소</label>
                            
                                                <div id="addressDiv2" class="col-sm-6"> 
                                                    <input type="number" id="address1" placeholder="주소번호" name="postal" value="" required >
                                                    <button id="btn-address" onclick="sample6_execDaumPostcode()" type="button" >주소검색</button>  <br>
                                                    <input type="text"  class="form-control" id="address2" placeholder="도로명주소" name="street" value="" required>
                                                <input type="text" class="form-control" id="address3" placeholder="상세주소를 입력해주세요" name="address" value="" required> 
                                                
                                                </div>
                            
                                            </div>
                                            <br>
                                            
                                            
                                            <div class="text-end">
                                                <button type="submit" class="btn btn-primary" onclick="return userEnroll();">계정추가</button>
                                            </div>
                                            
                                            <script>
                                                function loadImg(inputFile){
                                                    // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
                                                    // num : 몇번째 input 요소인지 확인 후 해당 그 영역에 미리보기 하기 위해 전달받는 숫자
                                                    // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
                                                    //                   =>inputFile.files.length 또한 1이 될꺼임
                                                    if(inputFile.files.length == 1){ // 파일 선택된 경우 => 파일 읽어들여서 미리보기
                                                        
                                                        // 파일을 읽어들일 FileReader 객체 생성
                                                        const reader = new FileReader();
                                
                                                        // 파일을 읽어들이는 메소드 호출
                                                        reader.readAsDataURL(inputFile.files[0]);
                                                        // 해당 파일을 읽어들이는 순간 해당 이 파일만의 고유한 url 부여
                                
                                                        // 파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
                                                        reader.onload = function(e){
                                                        // e.target.result => 읽어들인 파일의 고유한 url
                                                        $("#avatarImg").attr("src", e.target.result);
                                                        }
                                                    }else{ // 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
                                                        $("#avatarImg").attr("src", null);
                                                    }

                                                    function sample6_execDaumPostcode() {
                                                        new daum.Postcode({
                                                            oncomplete: function(data) {
                                                                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                                                
                                                                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                                                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                                                var addr = ''; // 주소 변수
                                                                var extraAddr = ''; // 참고항목 변수
                                                
                                                                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                                                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                                                    addr = data.roadAddress;
                                                                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                                                    addr = data.jibunAddress;
                                                                }
                                                
                                                
                                                                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                                                //if(data.userSelectedType === 'R'){
                                                                    if( !(data.userSelectedType == 'R' )){
                                                                    /*
                                                                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                                        extraAddr += data.bname;
                                                                    }
                                                                    // 건물명이 있고, 공동주택일 경우 추가한다.
                                                                    
                                                                    if(data.buildingName !== '' && data.apartment === 'Y'){
                                                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                                    }
                                                                        //표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                                    if(extraAddr !== ''){
                                                                            extraAddr = ' (' + extraAddr + ')';
                                                                    }
                                                                        //조합된 참고항목을 해당 필드에 넣는다.
                                                                        document.getElementById("address3").value = extraAddr;
                                                                        */
                                                                
                                                                //} else {
                                                                document.getElementById("address3").value = '';
                                                                }
                                                
                                                                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                                document.getElementById('address1').value = data.zonecode;
                                                                document.getElementById("address2").value = addr;
                                                                // 커서를 상세주소 필드로 이동한다.
                                                                document.getElementById("address3").focus();
                                                            }
                                                        }).open();
                                                    }
                                                    
                                                    function userEnroll() {
                                                        
                                                        const pwdInputf = document.getElementById("pwdInput");
                                                        const pwdInputCheckf = document.querySelector("#pwdInputCheck");
                                                        const idInputf = document.getElementById("idInput");
                                                        
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
                                                }
                                            </script>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-center table-hover datatable">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>사업명</th>
                                                <th>이메일</th>
                                                <th>사업자</th>
                                                <th>가입일</th>
                                                <th>활성상태</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Seller s : sList){%>
                                        		<tr>
	                                                <td>
	                                                    <h2 class="table-avatar">
	                                                        <a href="profile.html" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="assets/img/profiles/usermain.jpg"
	                                                                alt="User Image"></a>
	                                                        <a href="profile.html"><%= s.getSelId() %><span><%= s.getSelStoreName() %> </span></a>
	                                                    </h2>
	                                                </td>
	                                                <td><a href="#"><%= s.getSelEmail() %></a>
	                                                </td>
	                                                <td><%= s.getSelName() %></td>
	                                                <td><%= s.getSelEnrollDate() %></td>
	                                                <% if((s.getSelStatus()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-success-light">활성</span></td>     
	                                                <%}else if((s.getSelStatus()).contains("N")){%>
	                                                	<td><span class="badge badge-pill bg-danger-light">비활성</span></td>
	                                                <%} %>
	                                                <td class="text-end">
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg<%= s.getSelId() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>
                                                <div class="modal fade" id="bs-example-modal-lg<%= s.getSelId() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">계정수정</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form>
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">프로필</label>
                                                                        <div class="col-sm-9">
                                                                            <div class="d-flex align-items-center">
                                                                                <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                                                    for="edit_img<%= s.getSelId() %>">
                                                                                    <img id="avatarImg<%= s.getSelId() %>" class="avatar-img"
                                                                                        src="assets/img/profiles/usermain.jpg" alt="Profile Image">
                                                                                    <input type="file" id="edit_img<%= s.getSelId() %>" onchange="loadImg<%= s.getSelId() %>(this);">
                                                                                    <span class="avatar-edit">
                                                                                        <i data-feather="edit-2"
                                                                                            class="avatar-uploader-icon shadow-soft"></i>
                                                                                    </span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div id="idArea" class="row form-group">
                                                                        <label for="id" class="col-sm-3 col-form-label input-label"> 아이디</label> 
                                                                        <div class="col-sm-9">
                                                                            <input type="text"
                                                                            id="idInput<%= s.getSelId() %>" required name="memId"
                                                                            placeholder="공백없이 소문자,숫자로 5~12글자" class="form-control" value="<%= s.getSelId()%>">
                                                                        </div>
                                                                    </div>
                                            
                                                                    <div id="pwdArea1" class="row form-group">
                                                                        <label for="password" class="col-sm-3 col-form-label input-label"> 비밀번호</label> 
                                                                        <div class="col-sm-9">
                                                                            <input type="password" class="form-control" id="pwdInput<%= s.getSelId() %>" required name = "memPw" value="<%= s.getSelPw()%>" placeholder="공백없이 소/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이">
                                                                        </div>
                                                                    </div>
                                            
                                            
                                                                    <div id="pwdArea2" class="row form-group">
                                                                        <label for="password" class="col-sm-3 col-form-label input-label">비밀번호 확인</label> 
                                                                        <div class="col-sm-9">
                                                                            <input type="password" class="form-control" id="pwdInputCheck<%= s.getSelId() %>" value=<%= s.getSelPw()%>" placeholder="비밀번호를 다시 입력해주세요" required>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">사업자번호</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="businessNo" placeholder="사업자번호"
                                                                                value="<%= s.getSelBusinessNo()%>">
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">업체명</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="storeName" placeholder="업체명"
                                                                                value="<%= s.getSelStoreName()%>">
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="name" placeholder="Your Name"
                                                                                value="<%= s.getSelName()%>">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="email" class="col-sm-3 col-form-label input-label">이메일</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="email" class="form-control" id="email" placeholder="Email"
                                                                                value="<%= s.getSelEmail()%>">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="phone" class="col-sm-3 col-form-label input-label">휴대폰 <span
                                                                                class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="phone"
                                                                                placeholder="-는 빼고 숫자만 입력해주세요" value="<%= s.getSelPhone()%>">
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="row form-group">
                                                                        <label for="phone" class="col-sm-3 col-form-label input-label">전화번호 <span
                                                                                class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="tel"
                                                                                placeholder="-는 빼고 숫자만 입력해주세요" value="<%= s.getSelTel()%>">
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="row form-group">
                                                                        <label for="phone" class="col-sm-3 col-form-label input-label">팩스번호 <span
                                                                                class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="fax"
                                                                                placeholder="-는 빼고 숫자만 입력해주세요" value="<%= s.getSelFax()%>">
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <script>
                                                                        var gender = $('input[name=gender]:checked').val();
                                                                    </script>
                                                                    
                                                                    <div id="addressArea" class="row form-groups">
                                                                        <label for="address" id="addressLabel" class="col-sm-3 col-form-label input-label">주소</label>
                                                    
                                                                        <div id="addressDiv2" class="col-sm-6"> 
                                                                            <input type="number" id="address1<%= s.getSelId() %>" placeholder="주소번호" name="postal" value="<%= s.getSelPostal()%>" required >
                                                                            <button id="btn-address" onclick="sample6_execDaumPostcode<%= s.getSelId() %>()" type="button" >주소검색</button>  <br>
                                                                            <input type="text"  class="form-control" id="address2<%= s.getSelId() %>" placeholder="도로명주소" name="street" value="<%= s.getSelStreet()%>" required>
                                                                        <input type="text" class="form-control" id="address3<%= s.getSelId() %>" placeholder="상세주소를 입력해주세요" name="address" value="<%= s.getSelAddress()%>" required> 
                                                                        
                                                                        </div>
                                                    
                                                                    </div>
                                                                    <br>
                                                                    
                                                                    
                                                                    <div class="text-end">
                                                                        <button type="submit" class="btn btn-primary" onclick="return userEnroll<%= s.getSelId() %>();">계정수정</button>
                                                                    </div>
                                                                    
                                                                    <script>
                                                                        function loadImg<%= s.getSelId() %>(inputFile){
                                                                            // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
                                                                            // num : 몇번째 input 요소인지 확인 후 해당 그 영역에 미리보기 하기 위해 전달받는 숫자
                                                                            // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
                                                                            //                   =>inputFile.files.length 또한 1이 될꺼임
                                                                            if(inputFile.files.length == 1){ // 파일 선택된 경우 => 파일 읽어들여서 미리보기
                                                                                
                                                                                // 파일을 읽어들일 FileReader 객체 생성
                                                                                const reader = new FileReader();
                                                        
                                                                                // 파일을 읽어들이는 메소드 호출
                                                                                reader.readAsDataURL(inputFile.files[0]);
                                                                                // 해당 파일을 읽어들이는 순간 해당 이 파일만의 고유한 url 부여
                                                        
                                                                                // 파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
                                                                                reader.onload = function(e){
                                                                                // e.target.result => 읽어들인 파일의 고유한 url
                                                                                $("#avatarImg<%= s.getSelId() %>").attr("src", e.target.result);
                                                                                }
                                                                            }else{ // 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
                                                                                $("#avatarImg<%= s.getSelId() %>").attr("src", null);
                                                                            }

                                                                            function sample6_execDaumPostcode<%= s.getSelId() %>() {
                                                                                new daum.Postcode({
                                                                                    oncomplete: function(data) {
                                                                                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                                                                        
                                                                                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                                                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                                                                        var addr = ''; // 주소 변수
                                                                                        var extraAddr = ''; // 참고항목 변수
                                                                        
                                                                                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                                                                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                                                                            addr = data.roadAddress;
                                                                                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                                                                            addr = data.jibunAddress;
                                                                                        }
                                                                        
                                                                        
                                                                                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                                                                        //if(data.userSelectedType === 'R'){
                                                                                            if( !(data.userSelectedType == 'R' )){
                                                                                            /*
                                                                                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                                                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                                                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                                                                extraAddr += data.bname;
                                                                                            }
                                                                                            // 건물명이 있고, 공동주택일 경우 추가한다.
                                                                                            
                                                                                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                                                                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                                                            }
                                                                                                //표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                                                            if(extraAddr !== ''){
                                                                                                    extraAddr = ' (' + extraAddr + ')';
                                                                                            }
                                                                                                //조합된 참고항목을 해당 필드에 넣는다.
                                                                                                document.getElementById("address3").value = extraAddr;
                                                                                                */
                                                                                        
                                                                                        //} else {
                                                                                        document.getElementById("address3<%= s.getSelId() %>").value = '';
                                                                                        }
                                                                        
                                                                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                                                        document.getElementById('address1<%= s.getSelId() %>').value = data.zonecode;
                                                                                        document.getElementById("address2<%= s.getSelId() %>").value = addr;
                                                                                        // 커서를 상세주소 필드로 이동한다.
                                                                                        document.getElementById("address3<%= s.getSelId() %>").focus();
                                                                                    }
                                                                                }).open();
                                                                            }
                                                                            
                                                                            function userEnroll<%= s.getSelId() %>() {
                                                                                
                                                                                const pwdInputf = document.getElementById("pwdInput<%= s.getSelId() %>");
                                                                                const pwdInputCheckf = document.querySelector("#pwdInputCheck<%= s.getSelId() %>");
                                                                                const idInputf = document.getElementById("idInput<%= s.getSelId() %>");
                                                                                
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
                                                                        }
                                                                    </script>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        	<%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- js script bar start -->
    <%@ include file = "../common/js-script.jsp" %>
	<!-- js script bar end -->
	
    
