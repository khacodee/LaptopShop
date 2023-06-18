<%@page import="khacv.model.TaiKhoan"%>
<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>Manager Admin</title>
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
            img{
                width: 200px;
                height: 120px;
            }
        </style>
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
                                <div class="table-wrapper">
                                <c:set var="result" value="${requestScope.listItem}" />
                                <c:if test="${not empty result}"> 
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Quản lí sản phẩm</h2>
                                            </div>
                                            <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                                    <i class="material-icons">&#xE147;</i>
                                                    <span>Thêm mới sản phẩm</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:set var="result" value="${requestScope.listDanhMuc}" />
                                <c:if test="${not empty result}"> 
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Quản lí danh mục</h2>
                                            </div>
                                            <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                                    <i class="material-icons">&#xE147;</i>
                                                    <span>Thêm mới danh mục</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                <c:set var="result" value="${requestScope.listaccount}" />
                                <c:if test="${not empty result}"> 
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Quản lí tài khoản</h2>
                                            </div>
                                            <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                                    <i class="material-icons">&#xE147;</i>
                                                    <span>Thêm mới tài khoản</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                <c:set var="result" value="${requestScope.listaccountgroup}" />
                                <c:if test="${not empty result}"> 
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Quản lí nhóm tài khoản</h2>
                                            </div>
                                            <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                                                    <i class="material-icons">&#xE147;</i>
                                                    <span>Thêm nhóm tài khoản</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                <c:set var="result" value="${requestScope.listItem}" />
                                <c:if test="${not empty result}">
                                    <table border="1" class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Mã sản phẩm</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Mô tả</th>
                                                <th>Số lượng</th>
                                                <th>Đơn giá</th>
                                                <th>Hình ảnh</th>
                                                <th>Trạng thái</th>
                                                <th>Mã danh mục</th>
                                                <th colspan="3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="p" items="${result}">
                                                <tr>
                                                    <td>
                                                        ${p.masp}
                                                    </td>
                                                    <td>
                                                        ${p.tensp}
                                                    </td>
                                                    <td>
                                                        ${p.mota}
                                                    </td>
                                                    <td>
                                                        ${p.soluong}
                                                    </td>
                                                    <td>
                                                        ${p.donGiaStr}
                                                    </td>
                                                    <td>
                                                        <img src="${p.hinhanh}">
                                                    </td>
                                                    <td>
                                                        ${p.trangthai}
                                                    </td>
                                                    <td>${p.madm}</td>
                                                    <td>
                                                        <a href="loadproduct?masp=${p.masp}">
                                                            <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                                        </a>
                                                        <a href="deleteproduct?masp=${p.masp}"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:set var="resultdm" value="${requestScope.listDanhMuc}" />
                                <c:if test="${not empty resultdm}">
                                    <table border="1" class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Mã danh mục</th>
                                                <th>Tên danh mục</th>
                                                <th>Trạng thái</th>
                                                <th>Đặc tính</th>
                                                <th colspan="3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="dm" items="${resultdm}">
                                                <tr>
                                                    <td>${dm.madm}</td>
                                                    <td>${dm.tendm}</td>
                                                    <td>${dm.trangthai}</td>
                                                    <td>${dm.dactinh}</td>
                                                    <td>
                                                        <a href="loadcategory?madm=${dm.madm}"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                        <a href="deletecategory?madm=${dm.madm}"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:set var="resultac" value="${requestScope.listaccount}" />
                                <c:if test="${not empty resultac}">
                                    <table border="1" class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Tên tài khoản</th>
                                                <th>Mật khẩu</th>
                                                <th>Trạng thái</th>
                                                <th>Email</th>
                                                <th>Nhóm tài khoản</th>
                                                <th colspan="3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="ac" items="${resultac}">
                                                <tr>
                                                    <td>${ac.tentk}</td>
                                                    <td>${ac.matkhau}</td>
                                                    <td>${ac.trangthai}</td>
                                                    <td>${ac.email}</td>
                                                    <td>${ac.nhomtk}</td>
                                                    <td>
                                                        <a href="loadaccount?tentk=${ac.tentk}"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                        <a href="deleteaccount?tentk=${ac.tentk}"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <c:set var="resultag" value="${requestScope.listaccountgroup}" />
                                <c:if test="${not empty resultag}">
                                    <table border="1" class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>Nhóm tài khoản</th>
                                                <th>Mô tả</th>
                                                <th>Trạng thái</th>
                                                <th colspan="3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="ag" items="${resultag}">
                                                <tr>
                                                    <td>${ag.nhomtk}</td>
                                                    <td>${ag.mota}</td>
                                                    <td>${ag.trangthai}</td>
                                                    <td>
                                                        <a href="loadaccountgroup?nhomtk=${ag.nhomtk}"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                        <a href="deleteaccountgroup?nhomtk=${ag.nhomtk}"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                                <%-- end table --%>

                                <div class="clearfix">
                                    <div class="hint-text">showing <b>5</b> out of <b>25</b></div>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a href="#">Previous</a></li>
                                        <li class="page-item "><a href="#"class="page-link">1</a></li>
                                        <li class="page-item "><a href="#"class="page-link">2</a></li>
                                        <li class="page-item active"><a href="#"class="page-link">3</a></li>
                                        <li class="page-item "><a href="#"class="page-link">4</a></li>
                                        <li class="page-item "><a href="#"class="page-link">5</a></li>
                                        <li class="page-item "><a href="#" class="page-link">Next</a></li>
                                    </ul>
                                </div>









                            </div>
                        </div>

                        <%--add item --%>			
                        <c:set var="result" value="${requestScope.listItem}" />
                        <c:if test="${not empty result}">						   <!----add-modal start--------->
                            <div id="addEmployeeModal" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="addproduct" method="post">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Thêm mới sản phẩm</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <div class="form-group">
                                                    <label>Mã sản phẩm</label>
                                                    <input type="text" name="txtMaSP" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên sản phẩm</label>
                                                    <input type="text" name="txtTenSP" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mô tả</label>
                                                    <input type="text" name="txtMota" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Số lượng</label>
                                                    <input type="text" name="txtSoLuong" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Đơn giá</label>
                                                    <input type="text" name="txtDonGia" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hình ảnh</label>
                                                    <input type="text" name="txtHinhAnh" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái</label>
                                                    <select name="txtTrangThai" class="form-select" aria-label="Default select example">

                                                        <option value="true">true</option>
                                                        <option value="false">false</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Danh mục</label>
                                                    <select name="txtMaDM" class="form-select" aria-label="Default select example">
                                                        <c:forEach var="p" items="${requestScope.listDanhMuccr}">
                                                            <option value="${p.madm}">${p.tendm}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-success" value="Add">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <%--end add item --%>

                        <%--add danh mục --%>
                        <c:set var="result" value="${requestScope.listDanhMuc}" />
                        <c:if test="${not empty result}">
                            <div id="addEmployeeModal" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="addcategory" method="post">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Thêm danh mục</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <div class="form-group">
                                                    <label>Mã danh mục</label>
                                                    <input type="text" name="txtMaDM" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên danh mục</label>
                                                    <input type="text" name="txtTenDM" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái</label>
                                                    <select name="txtTrangThai" class="form-select" aria-label="Default select example">
                                                        <option value="true">true</option>
                                                        <option value="false">false</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Đặc tính</label>
                                                    <input type="text" name="txtDacTinh" class="form-control" required>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-success" value="Add">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <%--end add danh mục --%>

                        <%--add tai khoan --%>
                        <c:set var="result" value="${requestScope.listaccount}" />
                        <c:if test="${not empty result}">
                            <div id="addEmployeeModal" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="addaccount" method="post">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Thêm tài khoản</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <div class="form-group">
                                                    <label>Tên tài khoản</label>
                                                    <input type="text" name="txtTenTK" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mật khẩu</label>
                                                    <input type="text" name="txtMK" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái</label>
                                                    <select name="txtTrangThai" class="form-select" aria-label="Default select example">
                                                        <option value="true">true</option>
                                                        <option value="false">false</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" name="txtEmail" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nhóm tài khoản</label>
                                                    <select name="txtNhomTK" class="form-select" aria-label="Default select example">
                                                        <c:forEach var="p" items="${requestScope.listaccountgr}">
                                                            <option value="${p.nhomtk}">${p.mota}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-success" value="Add">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <%--end add tai khoan --%>
                        
                        <%--add nhom tai khoan --%>
                        <c:set var="result" value="${requestScope.listaccountgroup}" />
                        <c:if test="${not empty result}">
                            <div id="addEmployeeModal" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="addaccountgroup" method="post">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Thêm nhóm tài khoản</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <div class="form-group">
                                                    <label>Nhóm tài khoản</label>
                                                    <input type="text" name="txtNhomTK" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mô tả</label>
                                                    <input type="text" name="txtMota" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Trạng thái</label>
                                                    <select name="txtTrangThai" class="form-select" aria-label="Default select example">
                                                        <option value="true">true</option>
                                                        <option value="false">false</option>
                                                    </select>
                                                </div>

                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-success" value="Add">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <%--end add nhom tai khoan --%>
                    </div>
                </div>

                <!------main-content-end-----------> 



                <!----footer-design------------->

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="footer-in">
                            <p class="mb-0">@email:khacvse160386@fpt.edu.vn.</p>
                        </div>
                    </div>
                </footer>




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


