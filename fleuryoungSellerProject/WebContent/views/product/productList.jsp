<%@page import="com.kh.product.model.vo.Product"%>
<%@page import="com.kh.product.model.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%
    ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>

<body>



    <%@ include file="../common/menubar.jsp" %>
    



<!-- <div class="main-wrapper">
    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">상품관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active">상품리스트</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="<%=contextPath%>/productInsertForm.pr" class="btn btn-primary me-1">
                            상품등록
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
                                            <th>상품사진</th>
                                            <th>카테고리</th>
                                            <th>상품명</th>
                                            <th>가격</th>
                                            <th>총 재고량</th>
                                            <th>판매량</th>
                                            <th>등록일</th>
                                            <th class="text-end" >메뉴</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Product p : list){ %>
	                                        <tr style="cursor: pointer;">
	                                            <td>
	                                                <h2 class="table-avatar">
	                                                    <img class="avatar avatar-xl me-2 avatar-img rounded-circle"
	                                                            src="${pageContext.request.contextPath}<%= p.getpPicture()%>">
	                                                </h2>
	                                                
	                                            </td>
	                                            <td><%= p.getCategoryNo()%></td>
	                                            <td><%= p.getpName()%></td>
	                                            <td><%= p.getNetPrice()%></td>
	                                            <td><%= p.getStock()%></td>
	                                            <td><%= p.getpSales()%></td>
	                                            <td><%= p.getpEnrollDate()%></td>
	                                            <td class="text-end">
	                                                <div class="dropdown dropdown-action" align="center">
	                                                    <a href="#" class="action-icon dropdown-toggle"
	                                                        data-bs-toggle="dropdown" aria-expanded="false"><i
	                                                            class="fas fa-ellipsis-v"></i></a>
	                                                    <div class="dropdown-menu dropdown-menu-end">
	                                                        <a class="dropdown-item" href="<%=contextPath%>/productUpdateForm.pr?pno=<%=p.getpId()%>"><i
	                                                                class="far fa-edit me-2"></i>상세조회 및 수정</a>
	                                                        <a class="dropdown-item" href="<%=contextPath%>/productDelete.pr?pno=<%=p.getpId()%>"><i
	                                                                class="far fa-trash-alt me-2"></i>상품삭제</a>
	                                                    </div>
	                                                </div>
	                                            </td>
	                                        </tr>
                                        <% } %>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->


<div class="main-wrapper">
    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">상품관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active">상품리스트</li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <a href="<%=contextPath%>/productInsertForm.pr" class="btn btn-primary me-1">
                            상품등록
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
                                            <th>상품사진</th>
                                            <th>카테고리</th>
                                            <th>상품명</th>
                                            <th>가격</th>
                                            <th>총 재고량</th>
                                            <th>판매량</th>
                                            <th>등록일</th>
                                            <th class="text-end" >메뉴</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Product p : list){ %>
	                                        <tr style="cursor: pointer;">
	                                            <td>
	                                                <h2 class="table-avatar">
	                                                    <img class="avatar avatar-xl me-2 avatar-img rounded-circle"
	                                                            src="${pageContext.request.contextPath}<%= p.getpPicture()%>">
	                                                </h2>
	                                                
	                                            </td>
	                                            <td><%= p.getCategoryNo()%></td>
	                                            <td><%= p.getpName()%></td>
	                                            <td><%= p.getNetPrice()%></td>
	                                            <td><%= p.getStock()%></td>
	                                            <td><%= p.getpSales()%></td>
	                                            <td><%= p.getpEnrollDate()%></td>
	                                            <td class="text-end">
	                                                <div class="dropdown dropdown-action" align="center">
	                                                    <a href="#" class="action-icon dropdown-toggle"
	                                                        data-bs-toggle="dropdown" aria-expanded="false"><i
	                                                            class="fas fa-ellipsis-v"></i></a>
	                                                    <div class="dropdown-menu dropdown-menu-end">
	                                                        <a class="dropdown-item" data-bs-toggle="modal"
                                                            data-bs-target="#bs-example-modal-lg<%= p.getpId()%>"><i
	                                                                class="far fa-edit me-2"></i>상세조회 및 수정</a>
	                                                        <a class="dropdown-item" href="<%=contextPath%>/productDelete.pr?pno=<%=p.getpId()%>"><i
	                                                                class="far fa-trash-alt me-2"></i>상품삭제</a>
	                                                    </div>
	                                                </div>
	                                            </td>
	                                        </tr>
                                            <div class="modal fade" id="bs-example-modal-lg<%= p.getpId() %>" tabindex="-1" role="dialog"
                                                aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" id="myLargeModalLabel">상품상세</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            
                                                        
                                                                <ul class="nav nav-tabs nav-tabs-solid nav-justified">
                                                                    <li class="nav-item"><a class="nav-link active" href="#solid-justified-tab1<%= p.getpId() %>"
                                                                            data-bs-toggle="tab">상품</a></li>
                                                                    <li class="nav-item"><a class="nav-link" href="#solid-justified-tab2<%= p.getpId() %>"
                                                                            data-bs-toggle="tab">리뷰</a></li>
                                                                </ul>
                                                                <div class="tab-content">
                                                                    <div class="tab-pane show active" id="solid-justified-tab1<%= p.getpId() %>">
                                                                        <form action="<%=contextPath %>/insert.pr" method="post"
                                                                            enctype="multipart/form-data"> <!-- 입력 폼 -->
                                                                            
                                                                            <div class="">
                                                                                <label for="file" class="col-form-label col-md-2">대표
                                                                                    이미지 </label>
                                                                                <img id="titleImg" width="150" height="150" src="${pageContext.request.contextPath}<%= p.getpPicture()%>"
                                                                                    onerror="this.style.display='none'">
                                                                            </div>
                                                                            <br>
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">카테고리</label>
                                                                                <div class="col-md-10">
                                                                                    <select class="form-select" name="categoryNo" disabled>
                                                                                        <option><%= p.getCategoryNo() %></option>
                                                                                    </select>
                                                                                </div>
                                                                            </div><!-- 카테고리 -->
                                                                            
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">상품이름</label>
                                                                                <div class="col-md-10">
                                                                                    <input type="text" class="form-control"
                                                                                        placeholder="상품이름을 입력하세요." name="pName" value="<%= p.getpName() %>" readonly="readonly">
                                                                                </div>
                                                                            </div><!-- 상품이름 -->
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">가격</label>
                                                                                <div class="col-md-10">
                                                                                    <input type="number" class="form-control"
                                                                                        placeholder="가격을 입력하세요." name="price" value="<%= p.getNetPrice() %>" readonly="readonly">
                                                                                </div>
                                                                            </div><!-- 가격 -->
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">상품 총수량</label>
                                                                                <div class="col-md-10">
                                                                                    <input id="sumStock" type="number" class="form-control"
                                                                                        name="pStock" placeholder="상품 총수량 입력(옵션 입력시 미입력) " value="<%= p.getStock() %>"
                                                                                        readonly="readonly">
                                                                                </div>
                                                                            </div><!-- 상품 총수량 -->
                                                                            <br>
                                                                            <br>
                                        
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">할인율</label>
                                                                                <div class="col-md-10">
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="discount" value="0" <%= (p.getDiscountRate() == 0) ? "checked" : "" %> disabled="disabled">
                                                                                            없음 
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="discount" value="10" <%= (p.getDiscountRate() == 10)  ? "checked" : "" %> disabled="disabled">
                                                                                            10% 
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="discount" value="20" <%= (p.getDiscountRate() == 20)  ? "checked" : "" %> disabled="disabled">
                                                                                            20% 
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="discount" value="30" <%= (p.getDiscountRate() == 30)  ? "checked" : "" %> disabled="disabled">
                                                                                            30% 
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="discount" value="40" <%= (p.getDiscountRate() == 40)  ? "checked" : "" %> disabled="disabled">
                                                                                            40% 
                                                                                        </label>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                        
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">배송속성</label>
                                                                                <div class="col-md-10">
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="delivery" value="Y" <%= (p.getpDayDelivery().contains("Y")) ? "checked" : "" %> disabled="disabled">
                                                                                            당일배송
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="delivery" value="N" <%= (p.getpDayDelivery().contains("N")) ? "checked" : "" %> disabled="disabled">
                                                                                            일반배송
                                                                                        </label>
                                                                                    </span>
                                                                                    
                                                                                </div>
                                                                            </div>
                                        
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">상품환불여부</label>
                                                                                <div class="col-md-10">
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="return" value="Y" <%= (p.getpReturn().contains("Y")) ? "checked" : "" %> disabled="disabled">
                                                                                            상품환불 승인
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="return" value="N" <%= (p.getpReturn().contains("N")) ? "checked" : "" %> disabled="disabled">
                                                                                            상품환불 거부
                                                                                        </label>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-form-label col-md-2">선물 여부</label>
                                                                                <div class="col-md-10">
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="gift" value="Y" <%= (p.getpGift().contains("Y")) ? "checked" : "" %> disabled="disabled">
                                                                                            O
                                                                                        </label>
                                                                                    </span>
                                                                                    <span class="radio">
                                                                                        <label> <input type="radio" name="gift" value="N" <%= (p.getpGift().contains("N")) ? "checked" : "" %> disabled="disabled">
                                                                                            X
                                                                                        </label>
                                                                                    </span>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div class="tab-pane" id="solid-justified-tab2<%= p.getpId() %>">
                                                                        <div align="center">
                                                                            <% for(Review r : rList) {%>
                                                                                <% if(r.getpId() == p.getpId()){ %>
                                                                                
                                                                                    <div class="col-12 col-md-6 col-lg-4 d-flex" style="border: 3px solid rgb(248, 178, 188); border-radius: 10px;">
                                                                                        <div class="card flex-fill bg-white">
                                                                                            <img alt="Card Image" src="${pageContext.request.contextPath}/<%= r.getReviewImg() %>" class="card-img-top" onerror="this.style.display='none'">
                                                                                            <div class="card-header" style="border-radius: 10px;">
                                                                                                <h5 class="card-title mb-0">작성자 : <%= r.getMemId() %> <br>작성일 : <%= r.getReviewAddDate() %></h5>
                                                                                            </div>
                                                                                            <div class="card-body">
                                                                                                <p class="card-text">
                                                                                                    <br>
                                                                                                    <%= r.getReviewDetail() %> 
                                                                                                    <br>
                                                                                                    <br>
                                                                                                    별점 : <%= r.getReviewRating() %>
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                <%} %>
                                                                            <%} %>
                                                                    </div>
                                                                </div>
                                                             </div>                                                                    
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




<script>
  
</script>

<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/feather.min.js"></script>
<script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="resources/plugins/apexchart/apexcharts.min.js"></script>
<script src="resources/plugins/apexchart/chart-data.js"></script>
<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="resources/plugins/datatables/datatables.min.js"></script>
<script src="resources/js/script.js"></script>



</body>
</html>