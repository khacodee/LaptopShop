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
import khacv.model.Cart;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class DeleteProductMyCartServlet extends HttpServlet {

     private final SanPhamDAO objectSanPhamDAO = new SanPhamDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        int index = Integer.parseInt(request.getParameter("index"));
        HttpSession session = request.getSession();
        Cart myCart = (Cart) session.getAttribute("giohang");
        myCart.getListCartItem().remove(index);
        
        response.sendRedirect("checkout");

    }
}
