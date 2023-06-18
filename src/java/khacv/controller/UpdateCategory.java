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
import khacv.dao.SanPhamDAO;
import khacv.model.DanhMuc;
import khacv.model.SanPham;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class UpdateCategory extends HttpServlet {

     private final DanhMucDAO danhMucDAO = new DanhMucDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String madm = request.getParameter("madm");
        String tendm = request.getParameter("tendm");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));
        String dactinh = request.getParameter("dactinh");
        HttpSession session = request.getSession();
        TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");

        DanhMuc danhmuc = new DanhMuc(madm, tendm, trangthai, dactinh);
        try {
            danhMucDAO.update(danhmuc);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateCategory.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("category");
    }
}
