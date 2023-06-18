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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.SanPhamDAO;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class AddProductServlet extends HttpServlet {

    private final SanPhamDAO objectSanPhamDAO = new SanPhamDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String masp = request.getParameter("txtMaSP");
        String tensp = request.getParameter("txtTenSP");
        String mota = request.getParameter("txtMota");
        int soluong = Integer.parseInt(request.getParameter("txtSoLuong"));
        float dongia = Float.parseFloat(request.getParameter("txtDonGia"));
        String hinhanh = request.getParameter("txtHinhAnh");
        boolean trangthai = Boolean.parseBoolean(request.getParameter("txtTrangThai"));
        String madm = request.getParameter("txtMaDM");
        SanPham newItem = new SanPham(masp, tensp, mota, soluong, dongia, hinhanh, trangthai, madm);
        objectSanPhamDAO.create(newItem);
        response.sendRedirect("product");

    }
}
