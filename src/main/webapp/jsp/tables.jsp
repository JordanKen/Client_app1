<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ChickDev03
  Date: 19/02/2021
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>

</head>
<link href="<%=request.getContextPath()%>/resources/css/styles.css" rel="stylesheet"/>
<link href="<%=request.getContextPath()%>/resources/css/styles.css" rel="stylesheet"/>
<link href="<%=request.getContextPath()%>/resources/css/dataTables.bootstrap4.css" rel="stylesheet"
      crossorigin="anonymous"/>
<script src="<%=request.getContextPath()%>/resources/js/all.min.js" crossorigin="anonymous"></script>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
    <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
            <div class="input-group-append">
                <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
            </div>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Activity Log</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="login.html">Logout</a>
            </div>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="index.html">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Interface</div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Layouts
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">Static Navigation</a>
                            <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Pages
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                Authentication
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="login.html">Login</a>
                                    <a class="nav-link" href="register.html">Register</a>
                                    <a class="nav-link" href="password.html">Forgot Password</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                Error
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="401.html">401 Page</a>
                                    <a class="nav-link" href="404.html">404 Page</a>
                                    <a class="nav-link" href="500.html">500 Page</a>
                                </nav>
                            </div>
                        </nav>
                    </div>
                    <div class="sb-sidenav-menu-heading">Addons</div>
                    <a class="nav-link" href="charts.html">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Charts
                    </a>
                    <a class="nav-link" href="tables.html">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Customers
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4">Customers</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                    <li class="breadcrumb-item active">Tables</li>
                </ol>
                <div class="card mb-4">
                    <c:if test="${cook == 1}">
                        <div class="card-body">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1"><i class="fas fa-edit"></i>Create new Customer</button>
                        </div>
                    </c:if>
                </div>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table mr-1"></i>
                        List Customers
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-condensed table-hover table-striped" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th data-column-id="id">Id</th>
                                    <th data-column-id="uname">Username</th>
                                    <th data-column-id="fname">First Name</th>
                                    <th data-column-id="lname">Last Name</th>
                                    <th data-column-id="phone">Phone</th>
                                    <th data-column-id="address1">Address Line 1</th>
                                    <th data-column-id="address2">Address Line 2</th>
                                    <th data-column-id="city">City</th>
                                    <th data-column-id="state">State</th>
                                    <th data-column-id="pcode">Postal Code</th>
                                    <th data-column-id="lcredit">Credit Limit</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="customer" items="${listCustomer}">
                                    <tr>
                                        <td><c:out value="${customer.getCustomerNumber()}" /></td>
                                        <td><c:out value="${customer.getCustomerName()}" /></td>
                                        <td><c:out value="${customer.getContactFirstName()}" /></td>
                                        <td><c:out value="${customer.getContactLastName()}" /></td>
                                        <td><c:out value="${customer.getPhone()}" /></td>
                                        <td><c:out value="${customer.getAddressLine1()}" /></td>
                                        <td><c:out value="${customer.getAddressLine2()}" /></td>
                                        <td><c:out value="${customer.getCity()}" /></td>
                                        <td><c:out value="${customer.getState()}" /></td>
                                        <td><c:out value="${customer.getPostalCode()}" /></td>
                                        <td><c:out value="${customer.getCreditLimit()}" /></td>
                                        <td>
                                            <c:if test="${cook == 1}">
                                                <button class="btn btn-primary command-edit"><i class="fas fa-edit"></i></button>
                                                <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Customer</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form  action="update" method="post" id="update">
                                <input type="hidden" name="id" id="id" />
                                <div class="form-group">
                                    <label for="customerLastName">Customer UserName</label>
                                    <input type="text" class="form-control" id="customerUsername" name="customerUserName"  placeholder="Enter Customer UserName">
                                </div>
                                <div class="form-group">
                                    <label for="customerLastName">Customer LastName</label>
                                    <input type="text" class="form-control" id="customerLastName" name="customerLastName" placeholder="Enter Customer LastName">
                                </div>
                                <div class="form-group">
                                    <label for="customerFirstName">Customer FirstName</label>
                                    <input type="text" class="form-control" id="customerFirstName" name="customerFirstName" placeholder="Enter Contact FirstName">
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter customer Phone">
                                </div>
                                <div class="form-group">
                                    <label for="addressLine1">AddressLine1</label>
                                    <input type="name" name="addressLine1" class="form-control" id="addressLine1" placeholder="enter AddressLine1">
                                </div>
                                <div class="form-group">
                                    <label for="addressLine2">AddressLine2</label>
                                    <input type="text" name="addressLine2" class="form-control" id="addressLine2" placeholder="enter AddressLine2">
                                </div>
                                <div class="form-group">
                                    <label for="city">City</label>
                                    <input type="text" name="city" class="form-control" id="city" placeholder="enter City">
                                </div>
                                <div class="form-group">
                                    <label for="state">State</label>
                                    <input type="text" name="state" class="form-control" id="state" placeholder="enter State">
                                </div>
                                <div class="form-group">
                                    <label for="postalCode">Postal Code</label>
                                    <input type="text" name="postalCode" class="form-control" id="postalCode" placeholder="enter Postal Code">
                                </div>
                                <div class="form-group">
                                    <label for="creditLimit">CreditLimit</label>
                                    <input type="number" class="form-control" name="creditLimit" id="creditLimit" placeholder="">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" id="valid" class="btn btn-primary">Submit</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel1">Save New Customer</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form  action="insert" method="post" id="create">
                                <input type="hidden" name="id" id="id1" />
                                <div class="form-group">
                                    <label for="customerLastName1">Customer UserName</label>
                                    <input type="text" class="form-control" id="customerUsername1" name="customerUserName1"  placeholder="Enter Customer UserName">
                                </div>
                                <div class="form-group">
                                    <label for="customerLastName1">Customer LastName</label>
                                    <input type="text" class="form-control" id="customerLastName1" name="customerLastName1" placeholder="Enter Customer LastName">
                                </div>
                                <div class="form-group">
                                    <label for="customerFirstName1">Customer FirstName</label>
                                    <input type="text" class="form-control" id="customerFirstName1" name="customerFirstName1" placeholder="Enter Contact FirstName">
                                </div>
                                <div class="form-group">
                                    <label for="phone1">Phone</label>
                                    <input type="text" class="form-control" name="phone1" id="phone1" placeholder="Enter customer Phone">
                                </div>
                                <div class="form-group">
                                    <label for="addressLine11">AddressLine1</label>
                                    <input type="name" name="addressLine11" class="form-control" id="addressLine11" placeholder="enter AddressLine1">
                                </div>
                                <div class="form-group">
                                    <label for="addressLine21">AddressLine2</label>
                                    <input type="text" name="addressLine21" class="form-control" id="addressLine21" placeholder="enter AddressLine2">
                                </div>
                                <div class="form-group">
                                    <label for="city1">City</label>
                                    <input type="text" name="city1" class="form-control" id="city1" placeholder="enter City">
                                </div>
                                <div class="form-group">
                                    <label for="state1">State</label>
                                    <input type="text" name="state1" class="form-control" id="state1" placeholder="enter State">
                                </div>
                                <div class="form-group">
                                    <label for="postalCode1">Postal Code</label>
                                    <input type="text" name="postalCode1" class="form-control" id="postalCode1" placeholder="enter Postal Code">
                                </div>
                                <div class="form-group">
                                    <label for="creditLimit1">CreditLimit</label>
                                    <input type="number" class="form-control" name="creditLimit1" id="creditLimit1" placeholder="">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" id="valid1" class="btn btn-primary">Submit</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2020</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.dataTables.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/dataTables.bootstrap4.js"></script>
<script>
    $("#valid").click(function (){
        $("#update").submit();
    });
    $("#valid1").click(function (){
        $("#create").submit();
    });

    $(document).ready(function() {
        var table = $('#dataTable');
        table.DataTable();
        table.find(".command-edit").on("click", function () {
            var row_index = $(this).closest('tr');
            console.log(row_index)
            var row = table.DataTable().row(row_index).data();
            console.log(row[0]);
            $("#id").val(row[0]);
            $("#customerUsername").val(row[1]);
            $('#customerLastName').val(row[2]);
            $('#customerFirstName').val(row[3]);
            $('#phone').val(row[4]);
            $('#addressLine1').val(row[5]);
            $('#addressLine2').val(row[6]);
            $('#city').val(row[7]);
            $('#state').val(row[8]);
            $('#postalCode').val(row[9]);
            $('#creditLimit').val(row[10]);
            $('#exampleModal').modal();
        })
    });
</script>
</body>
</html>
