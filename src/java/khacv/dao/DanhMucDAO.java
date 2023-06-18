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
public class DanhMucDAO {

    private DBContext db;

    public DanhMucDAO() {
        db = new DBContext();
    }

    public DanhMucDAO(DBContext db) {
        this.db = db;
    }

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }

    public List<DanhMuc> read() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<DanhMuc> listItem = new ArrayList<>();

        try {
            String sql = "SELECT * FROM tblDanhMuc";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String madm = rs.getString("madm");
                String name = rs.getString("tendm");
                boolean trangthai = rs.getBoolean("trangthai");
                String dactinh = rs.getString("dactinh");
                DanhMuc dm = new DanhMuc(madm, name, trangthai,dactinh);
                listItem.add(dm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listItem;
    }
    public DanhMuc details(String id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {    
             
            String sql = "SELECT * FROM tblDanhMuc WHERE madm=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String name = rs.getString("tendm");
                boolean exist = rs.getBoolean("trangthai");
                String dactinh = rs.getString("dactinh");
               DanhMuc danhMuc = new DanhMuc(id, name, exist,dactinh);
               return danhMuc;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
        return null;
    }
     public void update(DanhMuc danhmuc) throws SQLException{
        
        try {
            String sql;
            sql = "update tblDanhMuc set tendm=?,trangthai=?, dactinh=? where madm=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            
            stmt.setString(1, danhmuc.getTendm());
            stmt.setBoolean(2, danhmuc.isTrangthai());
            stmt.setString(4, danhmuc.getMadm());
            stmt.setString(3, danhmuc.getDactinh());
            
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
     public boolean create(DanhMuc newDM) {
        boolean result = false;
        try {
            String sql = "INSERT INTO tblDanhMuc (madm, tendm, trangthai, dactinh) VALUES (?,?,?,?)";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, newDM.getMadm());
            stmt.setString(2, newDM.getTendm());
            stmt.setBoolean(3, newDM.isTrangthai());
            stmt.setString(4, newDM.getDactinh());
            int effectRow = stmt.executeUpdate();
            if (effectRow > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
      public void delete(String id) throws SQLException{
        
        try {
        
            String sql;
            sql = "delete from tblDanhMuc where madm=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
}
