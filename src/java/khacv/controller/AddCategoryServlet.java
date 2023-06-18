/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import khacv.dao.DanhMucDAO;
import khacv.dao.SanPhamDAO;
import khacv.model.DanhMuc;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class AddCategoryServlet extends HttpServlet {

    private final DanhMucDAO dmDAO = new DanhMucDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String madm = request.getParameter("txtMaDM");
        String tendm = request.getParameter("txtTenDM");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("txtTrangThai"));
        String dactinh = request.getParameter("txtDacTinh");
        DanhMuc danhmuc = new DanhMuc(madm, tendm, trangthai, dactinh);
        dmDAO.create(danhmuc);
        response.sendRedirect("category");

    }
}
