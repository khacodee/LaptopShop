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
import khacv.dao.DanhMucDAO;
import khacv.dao.SanPhamDAO;
import khacv.model.DanhMuc;
import khacv.model.SanPham;

/**
 *
 * @author LENOVO
 */
public class SearchByDanhMuc extends HttpServlet {

    private final SanPhamDAO objectSanPhamDAO = new SanPhamDAO();
    private final DanhMucDAO objectDanhMucDAO = new DanhMucDAO();
    

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try {
            List<DanhMuc> ListDanhMucs = objectDanhMucDAO.read();
            request.setAttribute("listDanhMuc", ListDanhMucs);
            String id = request.getParameter("madm");
            List<SanPham> listItemSearch = objectSanPhamDAO.searchByDanhMuc(id);
            if (listItemSearch != null) {
                if (request.getAttribute("listItem") != null) {
                    request.removeAttribute("listItem");
                }
                 request.setAttribute("listItem", listItemSearch);
            }
            RequestDispatcher rd = getServletContext().
                    getRequestDispatcher("/homepage.jsp");
            rd.forward(request, response);
        } catch (IOException | ServletException ex) {
            Logger.getLogger(SearchByDanhMuc.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
    }
}
