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
import khacv.model.NhomTaiKhoan;
import khacv.utils.DBContext;

/**
 *
 * @author LENOVO
 */
public class NhomTaiKhoanDAO {
    private DBContext db;

    public NhomTaiKhoanDAO() {
        db = new DBContext();
    }

    public NhomTaiKhoanDAO(DBContext db) {
        this.db = db;
    }

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }
    
    public List<NhomTaiKhoan> read() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<NhomTaiKhoan> listItem = new ArrayList<>();
        
        try {    
            String sql = "SELECT * FROM tblNhomTaiKhoan";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String nhomtk  = rs.getString("nhomtk");
                String mota = rs.getString("mota");
                boolean trangthai = rs.getBoolean("trangthai");
                NhomTaiKhoan tk = new NhomTaiKhoan(nhomtk, mota, trangthai);
                listItem.add(tk);
            }
        } catch (SQLException ex) {
            Logger.getLogger(NhomTaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
        
        return listItem;
    }
    
    public NhomTaiKhoan details(String id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {    
             
            String sql = "SELECT * FROM tblNhomTaiKhoan WHERE nhomtk=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String mota = rs.getString("mota");
                boolean trangthai = rs.getBoolean("trangthai");
                NhomTaiKhoan nhomTaiKhoan = new NhomTaiKhoan(id , mota, trangthai);
                return nhomTaiKhoan;
            }
        } catch (SQLException ex) {
            Logger.getLogger(NhomTaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
        return null;
    }
     public void update(NhomTaiKhoan nhomTaiKhoan) throws SQLException{
        
        try {
            String sql;
            sql = "update tblNhomTaiKhoan set mota=?,trangthai=? where nhomtk=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            
            stmt.setString(1, nhomTaiKhoan.getMota());
            stmt.setBoolean(2, nhomTaiKhoan.isTrangthai());
            stmt.setString(3, nhomTaiKhoan.getNhomtk());
            
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(NhomTaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
     public boolean create(NhomTaiKhoan nhomTaiKhoan) {
        boolean result = false;
        try {
            String sql = "INSERT INTO tblNhomTaiKhoan (nhomtk, mota, trangthai) VALUES (?,?,?)";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, nhomTaiKhoan.getNhomtk());
            stmt.setString(2, nhomTaiKhoan.getMota());
            stmt.setBoolean(3, nhomTaiKhoan.isTrangthai());
            int effectRow = stmt.executeUpdate();
            if (effectRow > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(NhomTaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
      public void delete(String id) throws SQLException{
        
        try {
        
            String sql;
            sql = "delete from tblNhomTaiKhoan where nhomtk=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(NhomTaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
}
