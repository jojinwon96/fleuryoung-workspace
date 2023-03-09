<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.admin.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Member> mList = (ArrayList<Member>)request.getAttribute("mList");
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
                            <h3 class="page-title">일반 계정</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>회원관리
                                </li>
                                <li class="breadcrumb-item active">일반 계정</li>
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
                                        <form action="<%= contextPath %>/add.me" method="post" enctype="multipart/form-data">
                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">프로필</label>
                                                <div class="col-sm-9">
                                                    <div class="d-flex align-items-center">
                                                        <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                            for="edit_img">
                                                            <img id="avatarImg" class="avatar-img"
                                                                src="${pageContext.request.contextPath}/resources/image/profile/default.png" alt="Profile Image"
                                                                onerror="this.src='${pageContext.request.contextPath}/resources/image/profile/default.png'">
                                                            <input type="file" id="edit_img" name="file" onchange="loadImg(this);">
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
                                            
                                            <div class="row form-group">
                                                <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="name" placeholder="Your Name" name="name"
                                                        value="" required>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <label for="email" class="col-sm-3 col-form-label input-label">이메일</label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control" id="email" placeholder="Email"
                                                        value="" name="email" required>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <label for="phone" class="col-sm-3 col-form-label input-label">휴대폰 <span
                                                        class="text-muted">(Optional)</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="phone"
                                                        placeholder="-는 빼고 숫자만 입력해주세요" value="" name="phone">
                                                </div>
                                            </div>
                                            <div id="birthDateArea" class="row form-group">
                                                <label for= "birthDate" class="col-sm-3 col-form-label input-label">생년월일</label>
                                                <div class="col-sm-9">
                                                    <p><input type="text"  class="form-control" id="birthDateInput" value="" placeholder="ex)20020604" name="memBirthDate" required></p>
                                                </div>
                                            </div>
                                            
                                            <div id="genderArea" class="row form-group">
                                                <label for= "birthDate" class="col-sm-3 col-form-label input-label">성별</label>
                                                <div class="col-sm-9">
                                                    <input type="radio" name="gender" id="male"  value=1 onchange="checkMale(this);">남
                                                    <input type="radio" name="gender" id="female"  value=2 onchange="checkFemale(this);">여
                                                </div>
                                            </div>
                                            
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
                                                <button type="submit" class="btn btn-primary">저장</button>
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
                                                <th>유저</th>
                                                <th>이메일</th>
                                                <th>생년월일</th>
                                                <th>가입일</th>
                                                <th>활성상태</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Member m : mList){%>
                                        		<tr>
	                                                <td>
                                                    <% if(m.getMemImg() != null) {%>
                                                        <h2 class="table-avatar">
	                                                        <a href="" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="${pageContext.request.contextPath}<%= m.getMemImg() %>"
	                                                                alt="User Image"></a>
                                                            <a><%= m.getMemId() %><span><%= m.getMemName() %> </span></a>
	                                                    </h2>    
                                                    <%}else {%>
                                                        <h2 class="table-avatar">
	                                                        <a href="" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="${pageContext.request.contextPath}/resources/image/profile/default.png"
	                                                                alt="User Image"></a>
                                                            <a href=""><%= m.getMemId() %><span><%= m.getMemName() %> </span></a>
	                                                    </h2>
                                                    <%} %>
	                                                    
	                                                </td>
	                                                <td><a href="#"><%= m.getMemEmail() %></a>
	                                                </td>
	                                                <td><%= m.getMemBirthDate() %></td>
	                                                <td><%= m.getMemEnrollDate() %></td>
	                                                <% if((m.getMemStatus()).contains("Y")) {%>
	                                                	<td><span class="badge badge-pill bg-success-light">활성</span></td>     
	                                                <%}else if((m.getMemStatus()).contains("N")){%>
	                                                	<td><span class="badge badge-pill bg-danger-light">비활성</span></td>
	                                                <%} %>
	                                                <td class="text-end">
	                                                    <a href=""
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg<%= m.getMemId() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="<%= contextPath %>/deactivate.me?mId=<%= m.getMemId() %>"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>
                                                <div class="modal fade" id="bs-example-modal-lg<%= m.getMemId() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">계정수정</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form  action="<%= contextPath %>/update.me" method="post" enctype="multipart/form-data">
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">프로필</label>
                                                                        <div class="col-sm-9">
                                                                            <div class="d-flex align-items-center">
                                                                                <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                                                    for="edit_img<%= m.getMemId() %>">
                                                                                    <% if(m.getMemImg() != null) {%>
                                                                                        <img id="avatarImg<%= m.getMemId() %>" class="avatar-img"
                                                                                        src="${pageContext.request.contextPath}<%= m.getMemImg() %>" alt="Profile Image" 
                                                                                        onerror="this.src='${pageContext.request.contextPath}<%= m.getMemImg() %>'">
                                                                                    <%}else {%>
                                                                                        <img id="avatarImg<%= m.getMemId() %>" class="avatar-img"
                                                                                        src="${pageContext.request.contextPath}/resources/image/profile/default.png" alt="Profile Image" 
                                                                                        onerror="this.src='${pageContext.request.contextPath}/resources/image/profile/default.png'">
                                                                                    <%} %>
                                                                                    
                                                                                    <input type="file" id="edit_img<%= m.getMemId() %>" name="file" onchange="loadImg<%= m.getMemId() %>(this);">
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
																			id="idInput<%= m.getMemId() %>" required name="memId"
																			placeholder="공백없이 소문자,숫자로 5~12글자" class="form-control" value="<%= m.getMemId() %>">
																		</div>
																		
																	</div>
											
											
																	<div id="pwdArea1" class="row form-group">
																		<label for="password" class="col-sm-3 col-form-label input-label"> 비밀번호</label> 
																		<div class="col-sm-9">
																			<input type="password" class="form-control" id="pwdInput<%= m.getMemId() %>" required name = "memPw" value="<%= m.getMemPw() %>" 
                                                                            placeholder="공백없이 소/대문자,숫자 각각 한개 이상 포함하는 6~15자 길이">
																		</div>
																	</div>
                                                                    
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="name" placeholder="Your Name"
                                                                                value="<%= m.getMemName() %>" name="name">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="email" class="col-sm-3 col-form-label input-label">이메일</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="email" class="form-control" id="email" placeholder="Email"
                                                                                value="<%= m.getMemEmail() %>" name="email">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="phone" class="col-sm-3 col-form-label input-label">휴대폰 <span
                                                                                class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="phone"
                                                                                placeholder="-는 빼고 숫자만 입력해주세요" value="<%= m.getMemPhone()%>" name="phone">
                                                                        </div>
                                                                    </div>
                                                                    <div id="birthDateArea" class="row form-group">
																		<label for= "birthDate" class="col-sm-3 col-form-label input-label">생년월일</label>
																		<div class="col-sm-9">
																			<% SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyyMMdd"); %>
																			<p><input type="text"  class="form-control" id="birthDateInput" value="<%= DATE_FORMAT.format(m.getMemBirthDate()) %>" placeholder="ex)20020604" name="memBirthDate" required></p>
																		</div>
																	</div>
																	
																	<div id="genderArea" class="row form-group">
																		<label for= "birthDate" class="col-sm-3 col-form-label input-label">성별</label>
																		<div class="col-sm-9">
																			<% if(m.getMemGender() == 1) {%>
																				<input type="radio" name="gender" id="male"  value=1 onchange="checkMale(this);" checked="checked">남
																				<input type="radio" name="gender" id="female"  value=2 onchange="checkFemale(this);">여
																			<%} else if(m.getMemGender() == 2) {%>
																				<input type="radio" name="gender" id="male"  value=1 onchange="checkMale(this);">남
																				<input type="radio" name="gender" id="female"  value=2 onchange="checkFemale(this);" checked="checked">여
																			<%} else { %>
																				<input type="radio" name="gender" id="male"  value=1 onchange="checkMale(this);">남
																				<input type="radio" name="gender" id="female"  value=2 onchange="checkFemale(this);">여
																			<%} %>	
																			
																		</div>
																	</div>
																	
                                                                    <div id="addressArea" class="row form-groups">
																		<label for="address" id="addressLabel" class="col-sm-3 col-form-label input-label">주소</label>
													
																		<div id="addressDiv2" class="col-sm-6"> 
																			<input type="number" id="address1<%= m.getMemId() %>" placeholder="주소번호" name="postal" value="<%= m.getMemPostal() %>" required >
																			<button id="btn-address<%= m.getMemId() %>" onclick="sample6_execDaumPostcode<%= m.getMemId() %>();" type="button" >주소검색</button>  <br>
																			<input type="text"  class="form-control" id="address2<%= m.getMemId() %>" placeholder="도로명주소" name="street" value="<%= m.getMemStreet() %>" required>
																		<input type="text" class="form-control" id="address3<%= m.getMemId() %>" placeholder="상세주소를 입력해주세요" name="address" value="<%= m.getMemAddress() %>" required> 
																		
																		</div>
													
																	</div>
																	<br>
                                                                    
                                                                    
                                                                    <div class="text-end">
                                                                        <button type="submit" class="btn btn-primary">변경사항 저장</button>
                                                                    </div>
                                                                    
                                                                    <script>
														                function loadImg<%= m.getMemId() %>(inputFile){
														                    // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
														                    // num : 몇번째 input 요소인지 확인 후 해당 그 영역에 미리보기 하기 위해 전달받는 숫자
																			console.log("<%= m.getMemId() %>" + "실행");
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
														                        $("#avatarImg<%= m.getMemId() %>").attr("src", e.target.result);
														                        }
														                    }else{ // 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
														                    	$("#avatarImg<%= m.getMemId() %>").attr("src", null);
														                    }
														                }
														                
														                function sample6_execDaumPostcode<%= m.getMemId() %>() {
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
																					document.getElementById("address3<%= m.getMemId() %>").value = '';
																					}
																	
																					// 우편번호와 주소 정보를 해당 필드에 넣는다.
																					document.getElementById('address1<%= m.getMemId() %>').value = data.zonecode;
																					document.getElementById("address2<%= m.getMemId() %>").value = addr;
																					// 커서를 상세주소 필드로 이동한다.
																					document.getElementById("address3<%= m.getMemId() %>").focus();
																				}
																			}).open();
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
	
    
