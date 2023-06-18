/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.controller;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import khacv.dao.DanhMucDAO;
import khacv.dao.SanPhamDAO;
import khacv.model.DanhMuc;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class HomePage extends HttpServlet {

    private final SanPhamDAO objectSanPhamDAO = new SanPhamDAO();
    private final DanhMucDAO objectDanhMucDAO = new DanhMucDAO();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            List<SanPham> listItem = objectSanPhamDAO.read();
            request.setAttribute("listItem", listItem);

            List<DanhMuc> ListDanhMucs = objectDanhMucDAO.read();
            request.setAttribute("listDanhMuc", ListDanhMucs);
            RequestDispatcher rd = getServletContext().
                    getRequestDispatcher("/homepage.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException ex) {
            Logger.getLogger(HomePage.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
    }
}
