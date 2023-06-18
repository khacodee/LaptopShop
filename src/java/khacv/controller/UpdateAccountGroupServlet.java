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
import khacv.dao.DanhMucDAO;
import khacv.dao.NhomTaiKhoanDAO;
import khacv.model.DanhMuc;
import khacv.model.NhomTaiKhoan;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class UpdateAccountGroupServlet extends HttpServlet {

    private final NhomTaiKhoanDAO nhomTaiKhoanDAO = new NhomTaiKhoanDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String nhomtk = request.getParameter("nhomtk");
        String mota = request.getParameter("mota");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));
        HttpSession session = request.getSession();
        TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");

       NhomTaiKhoan nhomTaiKhoan = new NhomTaiKhoan(nhomtk, mota, trangthai);
        try {
            
            nhomTaiKhoanDAO.update(nhomTaiKhoan);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateAccountGroupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("accountgroup");
    }
}
