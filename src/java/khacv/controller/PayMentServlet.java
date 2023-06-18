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
import khacv.dao.SanPhamDAO;
import khacv.model.Cart;
import khacv.model.CartItem;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class PayMentServlet extends HttpServlet {

     private final SanPhamDAO productDao = new SanPhamDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String msg= "";
        boolean quantityValidate = true;
// Lấy danh sách mục trong giỏ hàng từ session
        Cart cartItems = (Cart) session.getAttribute("giohang");
        for (CartItem item : cartItems.getListCartItem()) {
            SanPham product = item.getProduct();
            int newQuantity = product.getSoluong() - item.getAmount();
            if(newQuantity < 0){
                    quantityValidate = false;
                    msg = "Payment Fail!!!";
            }// cập nhật số lượng sản phẩm trong cơ sở dữ liệu
        }

// Cập nhật số lượng sản phẩm trong cơ sở dữ liệu và giỏ hàng
        if(quantityValidate){
        for (CartItem item : cartItems.getListCartItem()) {
            SanPham product = item.getProduct();
            int newQuantity = product.getSoluong() - item.getAmount();
            product.setSoluong(newQuantity);
            productDao.updateProduct(newQuantity, item.getProduct().getMasp());
            msg = "Payment success!!";// cập nhật số lượng sản phẩm trong cơ sở dữ liệu
        }
        }
        session.removeAttribute("giohang");
        request.setAttribute("msg", msg);

        RequestDispatcher rd = getServletContext().
                getRequestDispatcher("/home");
        rd.forward(request, response);
        
    }
}
