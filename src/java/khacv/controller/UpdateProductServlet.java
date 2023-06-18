/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.SanPhamDAO;
import khacv.model.NhomTaiKhoan;
import khacv.model.SanPham;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class UpdateProductServlet extends HttpServlet {

    private final SanPhamDAO SanPhamDAO = new SanPhamDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String masp = request.getParameter("masp");
        String tensp = request.getParameter("tensp");
        String mota = request.getParameter("mota");
        int soluong = Integer.parseInt(request.getParameter("soluong"));
        float dongia = Float.parseFloat(request.getParameter("dongia"));
        String hinhanh = request.getParameter("hinhanh");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangthai"));
        String madm = request.getParameter("madm");
        HttpSession session = request.getSession();
        TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");

        SanPham item = new SanPham(masp, tensp, mota, soluong, dongia, hinhanh, trangthai, madm);
        try {
            SanPhamDAO.update(item);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("product");
    }

}
