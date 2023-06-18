/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.model.Cart;

/**
 *
 * @author LENOVO
 */
public class CheckOutServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart myCart = null;

        if (session.getAttribute("giohang") != null) {

            myCart = (Cart) session.getAttribute("giohang");
            System.out.println(myCart.getListCartItem());
        }
        
        request.setAttribute("listItem", myCart);
        RequestDispatcher rd = getServletContext().
                getRequestDispatcher("/checkout.jsp");
        rd.forward(request, response);

    }
}
