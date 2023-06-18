/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.SanPhamDAO;
import khacv.dao.TaiKhoanDAO;
import khacv.model.SanPham;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class UpdateAccountServlet extends HttpServlet {

    private final TaiKhoanDAO accountDAO = new TaiKhoanDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String tentk = request.getParameter("tentk");
        String matkhau = request.getParameter("matkhau");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));
        String email = request.getParameter("email");
        String nhomtk = request.getParameter("nhomtk");
        HttpSession session = request.getSession();
        TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");

       TaiKhoan taiKhoan = new TaiKhoan(tentk, matkhau, trangthai, email, nhomtk);
        try {
            accountDAO.update(taiKhoan);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateAccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("account");
    }
}
