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
import khacv.dao.TaiKhoanDAO;
import khacv.model.DanhMuc;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class AddAccountServlet extends HttpServlet {

    private final TaiKhoanDAO accountDAO = new TaiKhoanDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String tentk = request.getParameter("txtTenTK");
        String matkhau = request.getParameter("txtMK");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("txtTrangThai"));
        String email = request.getParameter("txtEmail");
        String nhomtk = request.getParameter("txtNhomTK");
        TaiKhoan taikhoan = new TaiKhoan(tentk, matkhau, trangthai, email, nhomtk);
        accountDAO.create(taikhoan);
        response.sendRedirect("account");

    }

}
