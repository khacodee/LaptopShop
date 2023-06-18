/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.TaiKhoanDAO;
import khacv.model.TaiKhoan;

/**
 *
 * @author LENOVO
 */
public class LoginServlet extends HttpServlet {

    private final TaiKhoanDAO dao = new TaiKhoanDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            String remember = request.getParameter("remember");
            TaiKhoan result = dao.checkLogin(username, password);
            if (result != null) {
                 HttpSession session = request.getSession();
                    session.setAttribute("taikhoan", result);
                    //setting session to expiry in 30 mins
                    session.setMaxInactiveInterval(1000);
                if (remember != null) {
                    Cookie loginCookie = new Cookie("USER", username);
                    loginCookie.setMaxAge(60 * 60 * 24 * 7);
                    response.addCookie(loginCookie);
                    response.sendRedirect("product");//set 1 week
                } else{
                    

                    response.sendRedirect("product");
                }

            } else {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
                PrintWriter out = response.getWriter();
                out.println("<font color=red>Either user name or password is wrong.</font>");
                rd.include(request, response);

                //RequestDispatcher rd = getServletContext().
                //            getRequestDispatcher("/login.jsp");
                //rd.forward(request, response);
            }
        } catch (IOException ex) {
            Logger.getLogger(LoginServlet.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("USER")) {
                    username = cookie.getValue();
                    break;
                }
            }
        }
        // Nếu cookie tồn tại, chuyển hướng đến trang Details
        if (username != null) {
            HttpSession session = request.getSession();
            session.setAttribute("taikhoan", dao.details(username));
            response.sendRedirect("product");
        } else {
            // Nếu cookie không tồn tại, hiển thị trang đăng nhập
            response.sendRedirect("login.jsp");
        }
    }
}
