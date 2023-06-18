<%-- 
    Document   : menu
    Created on : Apr 20, 2023, 8:08:32 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <div class="xd-topbar">
            <div class="row">
                <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
                    <div class="xp-menubar">
                        <span class="material-icons text-white">signal_cellular_alt</span>
                    </div>
                </div>

                <div class="col-md-5 col-lg-3 order-3 order-md-2">
                    <div class="xp-searchbar">
                        <form action="searchbyname" method="post">
                            <div class="input-group">
                                <input type="search" name="txtSearch" class="form-control"
                                       placeholder="Search">
                                <div class="input-group-append">
                                    <button class="btn" type="submit" id="button-addon2">Go
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
                    <div class="xp-profilebar text-right">
                        <nav class="navbar p-0">
                            <ul class="nav navbar-nav flex-row ml-auto">
                                <c:if test="${not empty sessionScope.taikhoan}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="product">Manager Admin</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="logout">Logout</a>
                                    </li> 
                                   <li class="nav-item">
                                        <a class="nav-link" href="#">Hello ${sessionScope.taikhoan.tentk}</a>
                                    </li>
                                </c:if>
                                <c:if test="${empty sessionScope.taikhoan}">
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">Login</a>
                                    </li>
                                </c:if>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link" href="checkout"><span class="badge"><c:if test="${not empty giohang}">${giohang.listCartItem.size()}</c:if></span><i class="material-icons" data-toggle="tooltip" title="Cart">&#xE8cc;</i></a>
                                    </li>
                            </ul>
                        </nav>
                    </div>
                </div>

            </div>

            <div class="xp-breadcrumbbar text-center">
                <h4 class="page-title">Show product</h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-curent="page">Danh Mục</li>
                </ol>
            </div>


        </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Siêu thị Laptop chất lượng cao</h1>
        <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với hơn 10 năm cung cấp các sản phầm từ nhiều thương hiệu nổi tiếng</p>
    </div>
</section>

<!------top-navbar-start-----------> 




