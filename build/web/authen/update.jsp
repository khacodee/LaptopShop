<%-- 
    Document   : update
    Created on : Apr 21, 2023, 3:48:12 PM
    Author     : LENOVO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <%-- start update product--%>
        <c:if test="${not empty requestScope.loadproduct}">
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Chỉnh sửa<b>sản phẩm</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updateproduct" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Update Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Mã sản phẩm</label>
                                    <input value="${loadproduct.masp}" name="masp" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên sản phẩm</label>
                                    <input value="${loadproduct.tensp}" name="tensp" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Mô tả</label>
                                    <input value="${loadproduct.mota}" name="mota" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Số lượng</label>
                                    <input value="${loadproduct.soluong}" name="soluong" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Đơn giá</label>
                                    <input value="${loadproduct.dongia}" name="dongia" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <input value="${loadproduct.hinhanh}" name="hinhanh" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="trangthai" class="form-select" aria-label="Default select example">
                                        <option value="true">true</option>
                                        <option value="false">false</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Mã danh mục</label>
                                    <select name="madm" class="form-select" aria-label="Default select example">
                                        <c:forEach var="p" items="${requestScope.listDanhMuc}">
                                            <option value="${p.madm}">${p.tendm}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="product">Cancel</a></button>
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        </c:if>                      
        <%-- end update product--%>
        
         <%-- start update danhmuc--%>
         <c:if test="${not empty requestScope.loadcategory}">
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Chỉnh sửa <b>danh mục</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updatecategory" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">chỉnh sửa danh mục</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Mã danh mục</label>
                                    <input value="${loadcategory.madm}" name="madm" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên danh mục</label>
                                    <input value="${loadcategory.tendm}" name="tendm" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="trangthai" class="form-select" aria-label="Default select example">
                                        <option value="true">true</option>
                                        <option value="false">false</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Đặc tính</label>
                                    <input value="${loadcategory.dactinh}" name="dactinh" type="text" class="form-control" required>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="category">Cancel</a></button>
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        </c:if>  
         <%-- end update danhmuc--%>
         <%--  update tai khoan--%>
         <c:if test="${not empty requestScope.loadaccount}">
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Chỉnh sửa <b>tài khoản</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updateaccount" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">chỉnh sửa tài khoản</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Tên tài khoản</label>
                                    <input value="${loadaccount.tentk}" name="tentk" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input value="${loadaccount.matkhau}" name="matkhau" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="trangthai" class="form-select" aria-label="Default select example">
                                        <option value="true">true</option>
                                        <option value="false">false</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${loadaccount.email}" name="email" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nhóm tài khoản</label>
                                    <select name="nhomtk" class="form-select" aria-label="Default select example">
                                        <c:forEach var="p" items="${requestScope.listaccountgr}">
                                            <option value="${p.nhomtk}">${p.mota}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                                
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="account">Cancel</a></button>
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        </c:if>  
         <%--  update tai khoan--%>
         <c:if test="${not empty requestScope.loadaccountgroup}">
             <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Chỉnh sửa <b>nhóm tài khoản</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updateaccountgroup" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">chỉnh sửa nhóm tài khoản</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Nhóm tài khoản</label>
                                    <input value="${loadaccountgroup.nhomtk}" name="nhomtk" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Mô tả</label>
                                    <input value="${loadaccountgroup.mota}" name="mota" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="trangthai" class="form-select" aria-label="Default select example">
                                        <option value="true">true</option>
                                        <option value="false">false</option>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="accountgroup">Cancel</a></button>
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
         </c:if>
         <%--   tai khoan--%>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
