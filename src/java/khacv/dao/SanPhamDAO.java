/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import khacv.model.DanhMuc;
import khacv.model.SanPham;
import khacv.utils.DBContext;

/**
 *
 * @author LENOVO
 */
public class SanPhamDAO {

    private DBContext db;

    public SanPhamDAO() {
        db = new DBContext();
    }

    public SanPhamDAO(DBContext db) {
        this.db = db;
    }

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }

    public List<SanPham> read() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<SanPham> listItem = new ArrayList<>();

        try {
            String sql = "SELECT * FROM tblSanPham";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString("masp");
                String name = rs.getString("tensp");
                String decription = rs.getString("mota");
                int quantity = rs.getInt("soluong");
                float price = rs.getFloat("dongia");
                String image = rs.getString("hinhanh");
                boolean exist = rs.getBoolean("trangthai");
                String madm = rs.getString("madm");
                SanPham item = new SanPham(id, name, decription, quantity, price, image, exist, madm);
                listItem.add(item);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listItem;
    }

    public SanPham details(String id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {

            String sql = "SELECT * FROM tblSanPham WHERE masp=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String name = rs.getString("tensp");
                String decription = rs.getString("mota");
                int quantity = rs.getInt("soluong");
                float price = rs.getFloat("dongia");
                String image = rs.getString("hinhanh");
                boolean exist = rs.getBoolean("trangthai");
                String madm = rs.getString("madm");
                SanPham item = new SanPham(id, name, decription, quantity, price, image, exist, madm);
                return item;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<SanPham> searchByName(String tensp) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<SanPham> listItem = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tblSanPham WHERE tensp like ?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, "%" + tensp + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String masp = rs.getString("masp");
                String name = rs.getString("tensp");
                String decription = rs.getString("mota");
                int quantity = rs.getInt("soluong");
                float price = rs.getFloat("dongia");
                String image = rs.getString("hinhanh");
                boolean exist = rs.getBoolean("trangthai");
                String madm = rs.getString("madm");
                SanPham item = new SanPham(masp, name, decription, quantity, price, image, exist, madm);
                listItem.add(item);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listItem;
    }

    public List<SanPham> searchByDanhMuc(String madm) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<SanPham> listItem = new ArrayList<>();
        try {
            String sql = "SELECT * FROM tblSanPham WHERE madm=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, madm);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String masp = rs.getString("masp");
                String name = rs.getString("tensp");
                String decription = rs.getString("mota");
                int quantity = rs.getInt("soluong");
                float price = rs.getFloat("dongia");
                String image = rs.getString("hinhanh");
                boolean exist = rs.getBoolean("trangthai");
                SanPham item = new SanPham(masp, name, decription, quantity, price, image, exist, madm);
                listItem.add(item);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listItem;
    }

    public void delete(String id) throws SQLException {

        try {

            String sql;
            sql = "delete from tblSanPham where masp=?";

            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            stmt.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public void create(SanPham newItem) throws SQLException{
//       
//        try {
//            String sql;
//            sql = "INSERT INTO tblSanPham (masp, tensp, mota, soluong, dongia, hinhanh, trangthai, madm) VALUES (?,?,?,?,?,?,?,?)";
//            
//            PreparedStatement stmt = db.getConn().prepareStatement(sql);
//            
//            stmt.setString(1, newItem.getMasp());
//            stmt.setString(2, newItem.getTensp());
//            stmt.setString(3, newItem.getMota());
//            stmt.setInt(4, newItem.getSoluong());
//            stmt.setFloat(5, newItem.getDongia());
//            stmt.setString(6, newItem.getHinhanh());
//            stmt.setBoolean(7, newItem.isTrangthai());
//            stmt.setString(8, newItem.getMadm());
//            
//            stmt.executeUpdate();
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }     
//    }
    public void update(SanPham edittedItem) throws SQLException {

        try {
            String sql;
            sql = "update tblSanPham set tensp=?,mota=? ,soluong=? ,dongia=?,hinhanh=?, trangthai=?, madm=? where masp=?";

            PreparedStatement stmt = db.getConn().prepareStatement(sql);

            stmt.setString(1, edittedItem.getTensp());
            stmt.setString(2, edittedItem.getMota());
            stmt.setInt(3, edittedItem.getSoluong());
            stmt.setFloat(4, edittedItem.getDongia());
            stmt.setString(5, edittedItem.getHinhanh());
            stmt.setBoolean(6, edittedItem.isTrangthai());
            stmt.setString(7, edittedItem.getMadm());
            stmt.setString(8, edittedItem.getMasp());

            stmt.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean create(SanPham newSP) {
        boolean result = false;
        try {
            String sql = "INSERT INTO tblSanPham (masp, tensp, mota, soluong, dongia, hinhanh, trangthai, madm) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, newSP.getMasp());
            stmt.setString(2, newSP.getTensp());
            stmt.setString(3, newSP.getMota());
            stmt.setInt(4, newSP.getSoluong());
            stmt.setFloat(5, newSP.getDongia());
            stmt.setString(6, newSP.getHinhanh());
            stmt.setBoolean(7, newSP.isTrangthai());
            stmt.setString(8, newSP.getMadm());
            int effectRow = stmt.executeUpdate();
            if (effectRow > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public static void main(String[] args) throws SQLException {
        SanPham item = new SanPham("3", "2", "3", 3, 4, "5", true, "LAP05");
        SanPhamDAO dao = new SanPhamDAO();
        dao.create(item);
        System.out.println(dao);

    }

    public SanPham updateProduct(int quantity, String id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {

            String sql = "UPDATE tblSanPham SET soluong = ? WHERE masp = ?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setInt(1, quantity);
            stmt.setString(2, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String name = rs.getString("tensp");
                String decription = rs.getString("mota");
                float price = rs.getFloat("dongia");
                String image = rs.getString("hinhanh");
                boolean exist = rs.getBoolean("trangthai");
                String madm = rs.getString("madm");
                SanPham item = new SanPham(id, name, decription, quantity, price, image, exist, madm);
                return item;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
}
