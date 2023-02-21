<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>

        <%@ include file = "../common/menubar.jsp"%>
<div class="page-wrapper">
<div class="content container-fluid">
    <div class="page-header">
        <div class="col-xl-9 col-md-8">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">마이페이지</h5>
                </div>
                <div class="card-body">

                    <form>
                        <div class="row form-group">
                            <label for="name" class="col-sm-3 col-form-label input-label">프로필사진</label>
                            <div class="col-sm-9">
                                <div class="d-flex align-items-center">
                                    <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                        for="edit_img">
                                        <img id="avatarImg" class="avatar-img"
                                            src="assets/img/profiles/usermain.jpg" alt="Profile Image">
                                        <input type="file" id="edit_img">
                                        <span class="avatar-edit">
                                            <i data-feather="edit-2"
                                                class="avatar-uploader-icon shadow-soft"></i>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
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
                                    placeholder="+x(xxx)xxx-xx-xx" value="넣어야함">
                            
                            </div>
                        </div>
                        <div class="row form-group">
                            <label for="location"
                                class="col-sm-3 col-form-label input-label">Location</label>
                            <div class="col-sm-9">
                                <div class="mb-3">
                                    <input type="text" id="address1" placeholder="우편번호" name="poster" class="address1 col-xs-3">
                                <input type="button" class="btn btn-primary btn-md" onclick="juso();" value="우편번호 찾기"><br>
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
                        <div id="addressArea">
                            <label for="address" id="addressLabel">주소</label>
       
                            <div id="addressDiv2"> 
                                
                                <input type="text" class="form-control" id="address2" placeholder="주소" name="street"><br>
                                <input type="text" class="form-control" id="address3" placeholder="상세주소" name="address">
                           </div>
                             
                             <br><br>
                             
                        </div>
                        <div class="text-end">
                            <button type="submit" class="btn btn-primary">저장</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</div>

</div>
    </body>

    </html>