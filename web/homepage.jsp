<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
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
    </head>
    <body>



        <div class="wrapper">

            <div class="body-overlay"></div>

            <!-------sidebar--design------------>

              <jsp:include page="left.jsp"></jsp:include>

            <!-------sidebar--design- close----------->



            <!-------page-content start----------->

            <div id="content">

                <!------top-navbar-start-----------> 

                <jsp:include page="menu.jsp"></jsp:include>
                <!------top-navbar-end-----------> 


                <!------main-content-start-----------> 

                <div class="main-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="main-content" class="row">
                                <c:forEach items="${listItem}" var="o">
                                    <div class="product col-12 col-md-6 col-lg-4">
                                        <div class="card">
                                            <img class="card-img-top" src="${o.hinhanh}" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title show_txt"><a href="detailproduct?masp=${o.masp}" title="View Product">${o.tensp}</a></h4>
                                                <p class="card-text show_txt">${o.mota}</p>
                                                <div class="row">
                                                    <div class="col">
                                                        <p class="btn btn-danger btn-block">${o.donGiaStr}</p>
                                                    </div>
                                                     <div class="w-100"></div>
                                                    <div class="col">
                                                        <a href="buyproduct?id=${o.masp}" class="btn btn-success btn-block">Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>

                <!------main-content-end-----------> 



                <!----footer-design------------->
                  <jsp:include page="footer.jsp"></jsp:include>




            </div>

        </div>



        <!-------complete html----------->






        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-3.3.1.min.js"></script>


        <script type="text/javascript">
            $(document).ready(function () {
                $(".xp-menubar").on('click', function () {
                    $("#sidebar").toggleClass('active');
                    $("#content").toggleClass('active');
                });

                $('.xp-menubar,.body-overlay').on('click', function () {
                    $("#sidebar,.body-overlay").toggleClass('show-nav');
                });

            });
        </script>





    </body>

</html>


