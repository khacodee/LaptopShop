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
import khacv.model.SanPham;
import khacv.model.TaiKhoan;
import khacv.utils.DBContext;

/**
 *
 * @author LENOVO
 */
public class TaiKhoanDAO {

    private DBContext db;

    public TaiKhoanDAO() {
        db = new DBContext();
    }

    public TaiKhoanDAO(DBContext db) {
        this.db = db;
    }

    public DBContext getDb() {
        return db;
    }

    public void setDb(DBContext db) {
        this.db = db;
    }

    public TaiKhoan checkLogin(String userID, String password){
        try {    
             
            String sql = "SELECT * FROM tblTaiKhoan WHERE tentk=? and matkhau=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, userID);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                boolean status = rs.getBoolean("trangthai");
                String email = rs.getString("email");
                String role = rs.getString("nhomtk");
                TaiKhoan item = new TaiKhoan(userID, password, status, email, role);
                return item;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
        
        return null;
    }

    public List<TaiKhoan> read() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<TaiKhoan> listItem = new ArrayList<>();

        try {
            String sql = "SELECT * FROM tblTaiKhoan";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String userID = rs.getString("tentk");
                String password = rs.getString("matkhau");
                boolean status = rs.getBoolean("trangthai");
                String email = rs.getString("email");
                String role = rs.getString("nhomtk");
                TaiKhoan item = new TaiKhoan(userID, password, status, email, role);
                listItem.add(item);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listItem;
    }

public boolean create(TaiKhoan newSP) {
        boolean result = false;
        try {
            String sql = "INSERT INTO tblTaiKhoan(tentk, matkhau, trangthai, email, nhomtk) VALUES (?,?,?,?,?)";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, newSP.getTentk());
            stmt.setString(2, newSP.getMatkhau());
            stmt.setBoolean(3, newSP.isTrangthai());
            stmt.setString(4, newSP.getEmail());
            stmt.setString(5, newSP.getNhomtk());
            int effectRow = stmt.executeUpdate();
            if (effectRow > 0) {
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
 public TaiKhoan details(String id) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try {    
             
            String sql = "SELECT * FROM tblTaiKhoan WHERE tentk=?";
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String matkhau = rs.getString("matkhau");
                boolean exist = rs.getBoolean("trangthai");
                String email = rs.getString("email");
                String nhomtk = rs.getString("nhomtk");
                TaiKhoan taiKhoan = new TaiKhoan(id, matkhau, exist, email, nhomtk);
                return taiKhoan;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
        return null;
    }
 
 public void update(TaiKhoan taiKhoan) throws SQLException{
        
        try {
            String sql;
            sql = "update tblTaiKhoan set matkhau=? ,trangthai=? ,email=?,nhomtk=? where tentk=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            
            stmt.setString(1, taiKhoan.getMatkhau());
            stmt.setBoolean(2, taiKhoan.isTrangthai());
            stmt.setString(3, taiKhoan.getEmail());
            stmt.setString(4, taiKhoan.getNhomtk());
            stmt.setString(5, taiKhoan.getTentk());
            
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
 
 public void delete(String id) throws SQLException{
        
        try {
        
            String sql;
            sql = "delete from tblTaiKhoan where tentk=?";
            
            PreparedStatement stmt = db.getConn().prepareStatement(sql);
            stmt.setString(1, id);
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
}
