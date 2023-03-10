<%@page import="com.kh.product.model.vo.Refund"%>
<%@page import="com.kh.sale.model.vo.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<%
    ArrayList<Refund> list = (ArrayList<Refund>)request.getAttribute("list"); 
%>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>

<body>



    <%@ include file="../common/menubar.jsp" %>
    



<div class="main-wrapper">
    <div class="page-wrapper">
        <div class="content container-fluid">

            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">판매관리</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a>
                            </li>
                            <li class="breadcrumb-item active">반품관리</li>
                        </ul>
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
                                            <th>주문상세번호</th>
                                            <th>상품명</th>
                                            <th>제목</th>
                                            <th>내용</th>
                                            <th>분류</th>
                                            <th>판매자처리현황</th>
                                            <th>택배사처리현황</th>
                                            <th class="text-end" >메뉴</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Refund s : list){ %>
	                                        <tr style="cursor: pointer;">
	                                            <td><%= s.getOdId()%></td>
	                                            <td><%= s.getpName()%></td>
	                                            <td><%= s.getTitle()%></td>
	                                            <td><%= s.getComment()%></td>
	                                            <% if(s.getRefundType()==1){%>
	                                            	<td><span class="badge badge-soft-warning badge-border">교환</span></td>
	                                            <% }else if(s.getRefundType()==2){  %>
	                                            	<td><span class="badge badge-soft-warning badge-border">환불</span></td>
				                                <% }else{  %>        
	                                            	<td><span class="badge badge-soft-warning badge-border">반품</span></td>
													<% }%>
                                                <% if(s.getRas()== 1){%>
                                                    <td><span class="badge badge-soft-secondary badge-border">승인대기</span></td>
                                                    <%}else if (s.getRas()==2){%>
                                                        <td><span class="badge badge-soft-success badge-border">승인완료</span></td>
                                                        <%}else if (s.getRas()==3){%>
                                                            <td><span class="badge badge-soft-warning badge-border">승인거절</span></td>  
                                                <%} else{%>
                                                    <td><span class="badge badge-soft-danger badge-border">문제발생</span></td>
                                                    <%}%>
                                                    
                                                    <% if(s.getStatus()== 1){%>
                                                    <td><span class="badge badge-soft-warning badge-border">접수</span></td>  
                                                <%}else if (s.getStatus()==2){%>
                                                    <td><span class="badge badge-soft-success badge-border">처리중</span></td>
                                                <%}else if (s.getStatus()==3){%>
                                                    <td><span class="badge badge-soft-secondary badge-border">처리완료</span></td>
                                                <%} else{%>
                                                    <td><span class="badge badge-soft-danger badge-border">예외발생</span></td>
                                                    <%}%>

	                                            
	                                            <td class="text-end">
	                                                <button type="button"
	                                                        class="btn btn-sm btn-white text-success me-2" onclick="refund('<%=s.getOdId()%>',6);">
                                                            <i class="far fa-edit me-1"></i>승인완료</button>
                                                            <button type="button"
	                                                        class="btn btn-sm btn-white text-danger me-2" onclick="refund('<%=s.getOdId()%>',5) ;">
                                                            <i class="far fa-edit me-1"></i>승인거부</button>
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
</div>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/bootstrap.bundle.min.js"></script>
<script src="resources/js/feather.min.js"></script>
<script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="resources/plugins/apexchart/apexcharts.min.js"></script>
<script src="resources/plugins/apexchart/chart-data.js"></script>
<script src="resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="resources/plugins/datatables/datatables.min.js"></script>
<script src="resources/js/script.js"></script>

<script>
    
    function refund(odId, num){
        $.ajaxSettings.traditional = true;
   
        $.ajax({
           
            type: "post",
            url: "refund.re",
            data:{
                odId: odId,
                num: num 
            }
        }).done(function(result){
            if(result == '승인거절' || result == '승인완료'){
                alert("상품이 "+ result + " 되었습니다.");
            } else{
                alert("처리 실패");
            }
        }).fail(function (e) {
                console.log(e);
        });
    }

</script>




</body>

</html>