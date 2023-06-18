<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>Detail page</title>
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
    <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    <body>



        <div class="wrapper">
            <jsp:include page="left.jsp"></jsp:include>
                <div id="content">
                <jsp:include page="menu.jsp"></jsp:include>
                    <div class="main-content">
                        <div class="col-sm-12">
                            <div class="container">
                                <div class="card">
                                    <div class="row">
                                        <aside class="col-sm-5 border-right">
                                            <article class="gallery-wrap"> 
                                                <div class="img-big-wrap">
                                                    <div> <a href="#"><img src="${details.hinhanh}"></a></div>
                                            </div> <!-- slider-product.// -->
                                            <div class="img-small-wrap">
                                            </div> <!-- slider-nav.// -->
                                        </article> <!-- gallery-wrap .end// -->
                                    </aside>
                                    <aside class="col-sm-7">
                                        <article class="card-body p-5">
                                            <h3 class="title mb-3">${details.tensp}</h3>

                                            <p class="price-detail-wrap"> 
                                                <span class="price h3 text-warning"> 
                                                    ${details.donGiaStr}
                                                </span> 
                                            </p> <!-- price-detail-wrap .// -->
                                            <dl class="item-property">
                                                <dt>Mô tả:</dt>
                                                <dd><p>
                                                        ${details.mota}
                                                    </p></dd>
                                            </dl>


                                            </div> <!-- row.// -->
                                            </div> <!-- card.// -->


                                            </div>
                                            </div>
                                            </div>
                                            <jsp:include page="footer.jsp"></jsp:include>
                                            </div>
                                            </div>
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
