<%-- 
    Document   : left
    Created on : Apr 20, 2023, 1:46:12 AM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="sidebar">
    <div class="sidebar-header">
        <h3><a href="home"><img src="img/house.png" class="img-fluid"/><span>Trang chủ</span></a></h3>
    </div>
            <ul class="list-unstyled component m-0">
		   <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Danh Mục</div>
                  <c:forEach items="${listDanhMuc}" var="o">
                    <li class="list-group-item text-white"><a href="search?madm=${o.madm}">${o.tendm}</a></li>
                    </c:forEach>
		</ul>
        </div>

