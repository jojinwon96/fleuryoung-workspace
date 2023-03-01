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
                                <li class="breadcrumb-item"><a href="<%=  %>">Dashboard</a></li>
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


            
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-stripped table-hover datatable">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>Invoice ID</th>
                                                <th>Category</th>
                                                <th>Created on</th>
                                                <th>Invoice to</th>
                                                <th>Amount</th>
                                                <th>Due date</th>
                                                <th>Status</th>
                                                <th class="text-end">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="invoice">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <a href="view-invoice.html" class="invoice-link">IN093439#@09</a>
                                                </td>
                                                <td>Advertising</td>
                                                <td>16 Mar 2022</td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-04.jpg"
                                                                alt="User Image"> Barbara Moore</a>
                                                    </h2>
                                                </td>
                                                <td class="text-primary">$1,54,220</td>
                                                <td>23 Mar 2022</td>
                                                <td><span class="badge bg-success-light">Paid</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>Edit</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>View</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>Delete</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-check-circle me-2"></i>Mark as
                                                                sent</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-paper-plane me-2"></i>Send Invoice</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-copy me-2"></i>Clone Invoice</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="invoice">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <a href="view-invoice.html" class="invoice-link">IN093439#@10</a>
                                                </td>
                                                <td>Food</td>
                                                <td>14 Mar 2022</td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-06.jpg"
                                                                alt="User Image"> Karlene Chaidez</a>
                                                    </h2>
                                                </td>
                                                <td class="text-primary">$1,222</td>
                                                <td>18 Mar 2022</td>
                                                <td><span class="badge bg-danger-light">Overdue</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>Edit</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>View</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>Delete</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-check-circle me-2"></i>Mark as
                                                                sent</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-paper-plane me-2"></i>Send Invoice</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-copy me-2"></i>Clone Invoice</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="invoice">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <a href="view-invoice.html" class="invoice-link">IN093439#@11</a>
                                                </td>
                                                <td>Marketing</td>
                                                <td>7 Mar 2022</td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-08.jpg"
                                                                alt="User Image"> Russell Copeland</a>
                                                    </h2>
                                                </td>
                                                <td class="text-primary">$3,470</td>
                                                <td>10 Mar 2022</td>
                                                <td><span class="badge bg-primary-light">Cancelled</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>Edit</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>View</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>Delete</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-check-circle me-2"></i>Mark as
                                                                sent</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-paper-plane me-2"></i>Send Invoice</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-copy me-2"></i>Clone Invoice</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="invoice">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <a href="view-invoice.html" class="invoice-link">IN093439#@12</a>
                                                </td>
                                                <td>Repairs</td>
                                                <td>24 Mar 2022</td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-10.jpg"
                                                                alt="User Image"> Joseph Collins</a>
                                                    </h2>
                                                </td>
                                                <td class="text-primary">$8,265</td>
                                                <td>30 Mar 2022</td>
                                                <td><span class="badge bg-success-light">Paid</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>Edit</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>View</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>Delete</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-check-circle me-2"></i>Mark as
                                                                sent</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-paper-plane me-2"></i>Send Invoice</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-copy me-2"></i>Clone Invoice</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="invoice">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <a href="view-invoice.html" class="invoice-link">IN093439#@13</a>
                                                </td>
                                                <td>Software</td>
                                                <td>17 Mar 2022</td>
                                                <td>
                                                    <h2 class="table-avatar">
                                                        <a href="profile.html"><img
                                                                class="avatar avatar-sm me-2 avatar-img rounded-circle"
                                                                src="assets/img/profiles/avatar-11.jpg"
                                                                alt="User Image"> Jennifer Floyd</a>
                                                    </h2>
                                                </td>
                                                <td class="text-primary">$5,200</td>
                                                <td>20 Mar 2022</td>
                                                <td><span class="badge bg-danger-light">Overdue</span></td>
                                                <td class="text-end">
                                                    <div class="dropdown dropdown-action">
                                                        <a href="#" class="action-icon dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fas fa-ellipsis-v"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="edit-invoice.html"><i
                                                                    class="far fa-edit me-2"></i>Edit</a>
                                                            <a class="dropdown-item" href="view-invoice.html"><i
                                                                    class="far fa-eye me-2"></i>View</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-trash-alt me-2"></i>Delete</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-check-circle me-2"></i>Mark as
                                                                sent</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-paper-plane me-2"></i>Send Invoice</a>
                                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                                    class="far fa-copy me-2"></i>Clone Invoice</a>
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