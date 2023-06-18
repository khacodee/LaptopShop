/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.SanPhamDAO;
import khacv.model.Cart;
import khacv.model.CartItem;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class BuyProductServlet extends HttpServlet {

    private final SanPhamDAO productDao = new SanPhamDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
//        Cart myCart1 = new Cart();
//        CartItem myCartItem = new CartItem(productDao.details("P0001"), 1);
//        myCart1.getListCartItem().add(myCartItem);
//        session.setAttribute("giohang", myCart1);
        if (session.getAttribute("giohang") == null) {
            Cart myCart = new Cart();

            CartItem item = new CartItem();

            String pid = request.getParameter("id");
            SanPham p = productDao.details(pid);

            item.setProduct(p);
            item.setAmount(1);

            myCart.getListCartItem().add(item);

            session.setAttribute("giohang", myCart);
        } else {
            Cart myCart = (Cart) session.getAttribute("giohang");
            String pid = request.getParameter("id");

            CartItem item = new CartItem();
            SanPham p = productDao.details(pid);
            item.setProduct(p);
            item.setAmount(1);
            // myCart.getListCartItem().add(item);

            boolean exist = false;
            for (CartItem itemInList : myCart.getListCartItem()) {
                if (p.getMasp().equals(itemInList.getProduct().getMasp())) {
                    itemInList.setAmount(itemInList.getAmount() + 1);
                    exist = true;
                }
            }
            if (!exist) {
                myCart.getListCartItem().add(item);

            }
            session.setAttribute("giohang", myCart);

        }

        response.sendRedirect("home");
    }
}
