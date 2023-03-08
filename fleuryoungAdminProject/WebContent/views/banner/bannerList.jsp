<%@page import="com.admin.coupon.model.vo.Coupon"%>
<%@page import="com.admin.banner.model.vo.Banner"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Banner> bList = (ArrayList<Banner>)request.getAttribute("bList");
	ArrayList<Coupon> cList = (ArrayList<Coupon>)request.getAttribute("cList");
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
                            <h3 class="page-title">배너관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a>사이트운영
                                </li>
                                <li class="breadcrumb-item active">배너관리</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a class="btn btn-primary me-1" data-bs-toggle="modal"
                            data-bs-target="#bs-example-modal-lg">
                                <i class="fas fa-plus"></i>
                            </a>
                        </div>
                        <div class="modal fade" id="bs-example-modal-lg" tabindex="-1" role="dialog"
                            aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myLargeModalLabel">배너 추가</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="#">
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">배너제목</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <label for="name" class="col-sm-2 col-form-label input-label">배너 이미지</label>
                                                <div class="col-sm-9">
                                                    <div class="d-flex align-items-center">
                                                        <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                            for="edit_img" style="height:8rem; width: fit-content;">
                                                            <img id="avatarImg" class=".rounded"
                                                                src="assets/img/profiles/usermain.jpg" alt="Banner Image">
                                                            <input type="file" id="edit_img" onchange="loadImg(this);">
                                                            <span class="avatar-edit">
                                                                <i data-feather="edit-2"
                                                                    class="avatar-uploader-icon shadow-soft"></i>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">등록 쿠폰</label>
                                                <div class="col-md-10">
                                                    <select class="form-select">
                                                    	<option value="" selected>--없음--</option>
                                                        <% for(Coupon c : cList) {%>
                                                        	<option value="<%= c.getCouId() %>"><%= c.getCouName() %></option>
                                                        <%} %>
                                                    </select>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                                <label class="col-form-label col-md-2">배너 설명</label>
                                                <div class="col-md-10">
                                                    <textarea rows="5" cols="5" class="form-control"
                                                        placeholder="내용을 입력하시오"></textarea>
                                                </div>
                                            </div>

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
                                                <th>배너번호</th>
                                                <th>제목</th>
                                                <th>등록일</th>
                                                <th>수정일</th>
                                                <th class="text-end">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<% for(Banner b : bList){%>
                                        		<tr>
	                                                <td><%= b.getBanId() %></td>
	                                                <td><%= b.getBanName() %></td>
                                                    <td><%= b.getBanAddDate() %></td>	                                               
                                                    <td><%= b.getBanEditDate() %></td>	                                               
	                                                <td class="text-end">
	                                                    <a href="edit-customer.html"
	                                                        class="btn btn-sm btn-white text-success me-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg<%= b.getBanId() %>"><i
	                                                            class="far fa-edit me-1"></i> 수정</a>
	                                                    <a href="javascript:void(0);"
	                                                        class="btn btn-sm btn-white text-danger me-2"><i
	                                                            class="far fa-trash-alt me-1"></i>삭제</a>
	                                                </td>
	                                            </tr>
                                                <div class="modal fade" id="bs-example-modal-lg<%= b.getBanId() %>" tabindex="-1" role="dialog"
                                                    aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myLargeModalLabel">배너 추가</h4>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                    aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="#">
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">배너제목</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" class="form-control" <%= b.getBanName() %>>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <label for="name" class="col-sm-2 col-form-label input-label">배너 이미지</label>
                                                                        <div class="col-sm-9">
                                                                            <div class="d-flex align-items-center">
                                                                                <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                                                                    for="edit_img<%= b.getBanId() %>" style="height:8rem; width: fit-content;">
                                                                                    <img id="avatarImg<%= b.getBanId() %>" class=".rounded"
                                                                                        src="assets/img/profiles/usermain.jpg" alt="Banner Image">
                                                                                    <input type="file" id="edit_img<%= b.getBanId() %>" onchange="loadImg<%= b.getBanId() %>(this);">
                                                                                    <span class="avatar-edit">
                                                                                        <i data-feather="edit-2"
                                                                                            class="avatar-uploader-icon shadow-soft"></i>
                                                                                    </span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">등록 쿠폰</label>
                                                                        <div class="col-md-10">
                                                                            <select class="form-select">
                                                                            	<option value="<%= b.getBanLink() %>"><%= b.getBanLink() %></option>
                                                                                <% for(Coupon c : cList) {%>
                                                                                    <option value="<%= c.getCouId() %>"><%= c.getCouName() %></option>
                                                                                <%} %>
                                                                                <option value="">--없음--</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="form-group row">
                                                                        <label class="col-form-label col-md-2">배너 설명</label>
                                                                        <div class="col-md-10">
                                                                            <textarea rows="5" cols="5" class="form-control"
                                                                                placeholder="배너 내용"></textarea>
                                                                        </div>
                                                                    </div>

                                                                    <div class="text-end">
                                                                        <button type="submit" class="btn btn-primary">저장</button>
                                                                    </div>
                                                                    <script>
                                                                        function loadImg<%= b.getBanId() %>(inputFile){
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
                                                                                $("#avatarImg<%= b.getBanId() %>").attr("src", e.target.result);
                                                                                }
                                                                            }else{ // 선택된 파일이 취소된 경우 => 미리보기 된 것도 사라지게
                                                                                $("#avatarImg<%= b.getBanId() %>").attr("src", null);
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
	
    
