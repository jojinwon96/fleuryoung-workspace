<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    </head>

    <body>

        <%@ include file = "../common/menubar.jsp"%>
<div class="page-wrapper" >

<div class="content container-fluid">
    <div class="page-header">
        <div class="col-xl-15 col-md-15">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">마이페이지</h5>
                </div>
                <div class="card-body">

                    <form action="<%=contextPath %>/myPage.se" method="post" enctype="multipart/form-data">
                        <input type="hidden" value="<%=loginSeller.getSelNo()%>"name="selNo">
                        <div class="row form-group">
                            <label for="file" class="col-sm-3 col-form-label input-label">프로필사진</label>
                            <div class="col-sm-9">
                                <div class="d-flex align-items-center">
                                    <label class="avatar avatar-xxl profile-cover-avatar m-0"
                                        for="file" onclick="chooseFile();">
                                        <img id="file1" class="avatar-img" src="<%=loginSeller.getSelImg() %>" name="selImg" >
                                    </label>
                                    <span><small>이미지 변경을 원하시면 이미지를 클릭해주세요</small></span>
                                    
                                </div>
                            </div>
                        </div>
                        <input type="file" name="upfile" id="fileInput" style="display: none;" onchange="loadImg(this,1);"> 
                        <div class="row form-group">
                            <label for="name" class="col-sm-3 col-form-label input-label">이름</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요!"
                                    value="<%=loginSeller.getSelName() %>" name="selName"required>
                            </div>
                        </div>
                        
                        <div class="row form-group">
                            <label for="addressline1" class="col-sm-3 col-form-label input-label">스토어이름
                                </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="addressline1"
                                    placeholder="스토어 이름을 입력해주세요." value="<%=loginSeller.getSelStoreName() %>" name="storeName">
                            </div>
                        </div>
                        
                        <div class="row form-group">
                            <label for="poster" class="col-sm-3 col-form-label input-label">사업자번호 
                            <span class="text-muted">(사업자 숫자만 입력)</span></label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control"
                                    placeholder="사업자번호를 입력하세요(숫자)" value="<%=loginSeller.getSelBusinessNo() %>" name="selBusinessNo" required>
                            </div>
                        </div>
                        
                        <div class="row form-group">
                            <label for="email" class="col-sm-3 col-form-label input-label">Email</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="email" placeholder="Email"
                                    value="<%=loginSeller.getSelEmail() %>" name="selEmail">
                            </div>
                        </div>
                        <div class="row form-group">
                            <label for="phone" class="col-sm-3 col-form-label input-label">Phone 
                                <span class="text-muted">(휴대폰 숫자만 입력)</span></label>
                            <div class="col-sm-9">
                                <input type="phone" class="form-control" id="phone"
                                    placeholder="+x(xxx)xxx-xx-xx" value="<%=loginSeller.getSelPhone() %>"name="selPhone">
                            
                            </div>
                        </div>
                        <div class="row form-group">
                            <label for="poster" class="col-sm-3 col-form-label input-label">Tel 
                            <span class="text-muted">(전화번호 숫자만 입력)</span></label>
                            <div class="col-sm-9">
                                <input type="phone" class="form-control" id="tel"
                                    placeholder="숫자만 입력하세요" value="<%=loginSeller.getSelTel() %>"name="selTel">
                            </div>
                        </div>
                        <div class="row form-group">
                            <label for="fax" class="col-sm-3 col-form-label input-label">Fax 
                                <span class="text-muted">(팩스 숫자만 입력)</span></label>
                            <div class="col-sm-9">
                                <input type="phone" class="form-control" id="phone"
                                    placeholder="숫자만 입력하세요" value="<%=loginSeller.getSelFax() %>"name="selFax">
                            
                            </div>
                        </div>
  
                         <div class="row form-group">
                            <label for="poster" class="col-sm-3 col-form-label input-label">우편번호 
                            <span class="text-muted">(우편번호찾기)</span></label>
                            <div class="col-sm-9">
                                     <input type="text" id="address1" placeholder="우편번호" name="selPoster" class="form-control-sm" value="<%=loginSeller.getSelPostal() %>">
                                <input type="button" class="btn btn-primary btn-md" onclick="juso();" value="우편번호 찾기" ><br>
                            </div>
                        </div>
                        
                         <div class="row form-group">
                            <label for="addressline2" class="col-sm-3 col-form-label input-label" >주소
                            </label>
                            <div class="col-sm-9">
                            	<input type="text" class="form-control" id="address2" placeholder="주소" name="selStreet" value="<%=loginSeller.getSelStreet() %>" required>
                            </div>
                        </div>
                         <div class="row form-group">
                            <label for="addressline2" class="col-sm-3 col-form-label input-label">상세주소
                            </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="address3" placeholder="상세주소" name="selAddress" value="<%=loginSeller.getSelAddress()%>" required>
                            </div>
                        </div>
                        
                        
                        
                        
                        
                        <div class="text-end">
                            <button type="button" onclick="history.back()" class="btn btn-primary">뒤로가기</button>
                            <button type="submit" class="btn btn-primary">저장</button>
                        </div>
                    </form>

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
                case 1: 
                	$("#file1").removeAttr("src");
                	$("#file1").attr("src", e.target.result); break;
               
                 }
            }
            
        } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
        switch(num){
                case 1: 
                	$("#file1").attr("src", "re"); break;
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
    }).open()
    }
    
    
    </script>

    </body>

    </html>