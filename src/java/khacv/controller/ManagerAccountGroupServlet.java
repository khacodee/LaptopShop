/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.NhomTaiKhoanDAO;
import khacv.model.NhomTaiKhoan;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class ManagerAccountGroupServlet extends HttpServlet {

    private final NhomTaiKhoanDAO dao = new NhomTaiKhoanDAO();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");
            if (a != null) {
                List<NhomTaiKhoan> listAccountGroup = dao.read();
                request.setAttribute("listaccountgroup", listAccountGroup);

                RequestDispatcher rd = getServletContext().
                        getRequestDispatcher("/authen/admin.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = getServletContext().
                        getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }

        } catch (IOException | ServletException ex) {
            Logger.getLogger(ManagerAccountGroupServlet.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
    }
}
