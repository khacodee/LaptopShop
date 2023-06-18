/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
public class AddAccountGroupServlet extends HttpServlet {

    private final NhomTaiKhoanDAO nhomTaiKhoanDAO = new NhomTaiKhoanDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");
            if (a != null) {
                String nhomtk = request.getParameter("txtNhomTK");
                String mota = request.getParameter("txtMota");
                boolean trangthai = Boolean.parseBoolean(request.getParameter("txtTrangThai"));
                NhomTaiKhoan nhomTaiKhoan = new NhomTaiKhoan(nhomtk, mota, trangthai);
                nhomTaiKhoanDAO.create(nhomTaiKhoan);
                response.sendRedirect("accountgroup");
            } else {
                RequestDispatcher rd = getServletContext().
                        getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }
        } catch (IOException | ServletException ex) {
            Logger.getLogger(ManagerProductServlet.class.getName()).
                    log(Level.SEVERE, null, ex);
        }

    }
}
