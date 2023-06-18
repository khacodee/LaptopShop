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
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class DeleteProductServlet extends HttpServlet {

   private final SanPhamDAO objectSanPhamDAO = new SanPhamDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	try {
            HttpSession session = request.getSession();
            TaiKhoan a = (TaiKhoan) session.getAttribute("taikhoan");
            if (a != null) {
            String id = request.getParameter("masp");
            objectSanPhamDAO.delete(id);
            response.sendRedirect("product");}
            else {
                RequestDispatcher rd = getServletContext().
                        getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }
        } 
        catch (SQLException ex) {
            Logger.getLogger(DeleteProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
