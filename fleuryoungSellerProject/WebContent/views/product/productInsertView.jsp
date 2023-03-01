<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">Invoices</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Invoices</li>
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
            
            
		</div>
	</div>
</body>
</html>