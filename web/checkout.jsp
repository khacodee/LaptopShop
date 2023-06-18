<%-- 
    Document   : checkout.jsp
    Created on : Apr 29, 2023, 8:46:10 PM
    Author     : LENOVO
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>Shop Product</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!----css3---->
        <link rel="stylesheet" href="css/custom.css">


        <!--google fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">


        <!--google material icon-->
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons"rel="stylesheet">
        <style>
            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }

            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }

            .card-registration .select-arrow {
                top: 13px;
            }

            .bg-grey {
                background-color: #eae8e8;
            }

            @media (min-width: 992px) {
                .card-registration-2 .bg-grey {
                    border-top-right-radius: 16px;
                    border-bottom-right-radius: 16px;
                }
            }

            @media (max-width: 991px) {
                .card-registration-2 .bg-grey {
                    border-bottom-left-radius: 16px;
                    border-bottom-right-radius: 16px;
                }
            }
        </style>
    </head>
    <body>




        <!-------sidebar--design------------>



        <!-------sidebar--design- close----------->



        <!-------page-content start----------->



        <!------top-navbar-start-----------> 

        <!------top-navbar-end-----------> 


        <!------main-content-start-----------> 

        <!------main-content-end-----------> 

        <section class="h-100 h-custom" style="background-color: #d2c9ff;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-8">
                                        <div class="p-5">

                                            <div class="d-flex justify-content-between align-items-center mb-5">
                                                <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                                                <h6 class="mb-0 text-muted">Item ${giohang.listCartItem.size()}</h6>
                                            </div>
                                            <c:set var="myCart" value="${requestScope.listItem}" /> 
                                            <c:set var="total" value="0" />
                                            <c:if test="${not empty myCart}">
                                                <c:forEach items="${myCart.listCartItem}" var="p" varStatus="status">
                                                    <c:set var="subtotal" value="${p.product.dongia * p.amount}" />
                                                    <c:set var="total" value="${total + subtotal}" />
                                                    <fmt:setLocale value="vi_VN" />
                                                    <fmt:formatNumber value="${subtotal}" pattern="#,##0.00'₫'" var="formattedNumber" />
                                                    <hr class="my-4">

                                                    <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                                            <img
                                                                src="${p.product.hinhanh}"
                                                                class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                        </div>
                                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                                            <h6 class="text-muted">${p.product.tensp}</h6>
                                                            <h6 class="text-black mb-0">${p.product.mota}</h6>
                                                        </div>
                                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                            <h6 class="mb-0">${p.amount}</h6>
                                                        </div>
                                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                            <h6 class="mb-0">${p.product.donGiaStr}</h6>
                                                        </div>
                                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                            <a href="deletemycart?index=${status.index}" class="text-muted"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>   </a>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${empty myCart}">
                                                <div>
                                                    <h6 class="mb-0">Giỏ hàng của bạn đang trống </h6>
                                                    <a href="home" type="button" class="btn btn-dark btn-block btn-lg"
                                                       data-mdb-ripple-color="dark">Mua ngay</a>
                                                </div>
                                            </c:if>      

                                            <hr class="my-4">

                                            <div class="pt-5">
                                                <h6 class="mb-0"><a href="home" class="text-body"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE88a;</i>Back to shop</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 bg-grey">
                                        <div class="p-5">
                                            <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                                            <hr class="my-4">

                                            <div class="d-flex justify-content-between mb-4">
                                                <h5 class="text-uppercase">Item ${giohang.listCartItem.size()}</h5>
                                                <fmt:setLocale value="vi_VN" />
                                                <fmt:formatNumber value="${total}" pattern="#,##0.00'₫'" var="totals" />
                                                <h5>${totals}</h5>
                                            </div>

                                            <h5 class="text-uppercase mb-3">Shipping</h5>

                                            <div class="mb-4 pb-2">
                                                <select class="select">
                                                    <option value="1">Standard-Delivery- €5.00</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                    <option value="4">Four</option>
                                                </select>
                                            </div>

                                            <h5 class="text-uppercase mb-3">Give code</h5>

                                            <div class="mb-5">
                                                <div class="form-outline">
                                                    <input type="text" id="form3Examplea2" class="form-control form-control-lg" />
                                                    <label class="form-label" for="form3Examplea2">Enter your code</label>
                                                </div>
                                            </div>

                                            <hr class="my-4">

                                            <div class="d-flex justify-content-between mb-5">
                                                <fmt:setLocale value="vi_VN" />
                                                <fmt:formatNumber value="${total}" pattern="#,##0.00'₫'" var="totals" />
                                                <h5 class="text-uppercase">Total price</h5>
                                                <h5>${totals}</h5>
                                            </div>

                                            <a href="payment" type="button" class="btn btn-dark btn-block btn-lg"
                                               data-mdb-ripple-color="dark">Pay Ment</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>






        <!----footer-design------------->






    </body>
</html>
