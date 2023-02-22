<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>

    </head>

    <body>

        <%@ include file="../common/menubar.jsp" %>
        
        <div class="page-wrapper">
            <div class="content container-fluid">

                <div class="page-header">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="page-title">상품관리</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<%=contextPath%>/dashboard.da">대시보드</a></li>
                                <li class="breadcrumb-item active">상품관리</li>
                            </ul>
                        </div>
                        <div class="col-auto">
                            <a href="invoices.html" class="invoices-links active">
                                <i data-feather="list"></i>
                            </a>
                            <a href="invoice-grid.html" class="invoices-links">
                                <i data-feather="grid"></i>
                            </a>
                        </div>
                    </div>
                </div>


            
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-stripped table-hover datatable">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>상품사진</th>
                                                <th>카테고리</th>
                                                <th>상품명</th>
                                                <th>총 재고량</th>
                                                <th>가격</th>
                                                <th>등록일</th>
                                                <th>Status</th>
                                                <th >메뉴</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h2 class="table-avatar">
                                                       <img class="avatar avatar-xl me-2 avatar-img rounded-circle"
                                                                src="resources/img/profiles/avatar-04.jpg">
                                                    </h2>
                                                    
                                                </td>
                                                <td>Advertising</td>
                                                <td>16 Mar 2022</td>
                                                <td>120개</td>
                                                <td>$154,220</td>
                                                <td>23 Mar 2022</td>
                                                <td><span class="badge bg-success-light">Paid</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action" align="center">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>상품수정</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>상품상세조회</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>상품삭제</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    





    </body>

    </html>