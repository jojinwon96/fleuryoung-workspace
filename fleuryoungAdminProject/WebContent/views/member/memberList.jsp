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
                            <a href="add-customer.html" class="btn btn-primary me-1">
                                <i class="fas fa-plus"></i>
                            </a>
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
	                                                    <h2 class="table-avatar">
	                                                        <a href="profile.html" class="avatar avatar-sm me-2"><img
	                                                                class="avatar-img rounded-circle"
	                                                                src="assets/img/profiles/usermain.jpg"
	                                                                alt="User Image"></a>
                                                            <a href="profile.html"><%= m.getMemId() %><span><%= m.getMemName() %> </span></a>
	                                                    </h2>
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
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg<%= m.getMemId() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>
                                                <div class="modal fade" id="bs-example-modal-lg<%= m.getMemId() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">수정</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form>
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">Name</label>
                                                                        <div class="col-sm-9">
                                                                            <div class="d-flex align-items-center">
                                                                                <label id="file" class="avatar avatar-xxl profile-cover-avatar m-0"
                                                                                    for="edit_img">
                                                                                    <img id="avatarImg<%= m.getMemId() %>" class="avatar-img"
                                                                                        src="assets/img/profiles/usermain.jpg" alt="Profile Image">
                                                                                    <input type="file" id="edit_img" onchange="loadImg<%= m.getMemId() %>(this);">
                                                                                    <span class="avatar-edit">
                                                                                        <i data-feather="edit-2"
                                                                                            class="avatar-uploader-icon shadow-soft"></i>
                                                                                    </span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-3 col-form-label input-label">Name</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="name" placeholder="Your Name"
                                                                                value="Jassa">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="email" class="col-sm-3 col-form-label input-label">Email</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="email" class="form-control" id="email" placeholder="Email"
                                                                                value="charleshafner@example.com">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="phone" class="col-sm-3 col-form-label input-label">Phone <span
                                                                                class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="phone"
                                                                                placeholder="+x(xxx)xxx-xx-xx" value="+1234567890">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="location"
                                                                            class="col-sm-3 col-form-label input-label">Location</label>
                                                                        <div class="col-sm-9">
                                                                            <div class="mb-3">
                                                                                <input type="text" class="form-control" id="location"
                                                                                    placeholder="Country" value="United States">
                                                                            </div>
                                                                            <div class="mb-3">
                                                                                <input type="text" class="form-control" placeholder="City"
                                                                                    value="Charleston">
                                                                            </div>
                                                                            <input type="text" class="form-control" placeholder="State"
                                                                                value="West Virginia">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="addressline1" class="col-sm-3 col-form-label input-label">Address
                                                                            line 1</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="addressline1"
                                                                                placeholder="Your address" value="2681  Columbia Mine Road">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="addressline2" class="col-sm-3 col-form-label input-label">Address
                                                                            line 2 <span class="text-muted">(Optional)</span></label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="addressline2"
                                                                                placeholder="Your address">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="zipcode" class="col-sm-3 col-form-label input-label">Zip
                                                                            code</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" class="form-control" id="zipcode"
                                                                                placeholder="Your zip code" value="25301">
                                                                        </div>
                                                                    </div>
                                                                    <div class="text-end">
                                                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                                                    </div>
                                                                    
                                                                    <script>
                                                                    	
														                function chooseFile(num){
														                    $("#file").click();
														                    
														                }
                                                                    	 
														
														                function loadImg<%= m.getMemId() %>(inputFile){
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
														                        $("#avatarImg<%= m.getMemId() %>").attr("src", e.target.result);
														                        }
														                    }else{ // 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
														                    	$("#avatarImg<%= m.getMemId() %>").attr("src", null);
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
	
    
