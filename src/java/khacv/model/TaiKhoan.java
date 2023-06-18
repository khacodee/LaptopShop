/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.model;

/**
 *
 * @author LENOVO
 */
public class TaiKhoan {
    private String tentk;
    private String matkhau;
    private boolean trangthai;
    private String email;
    private String nhomtk;

    public TaiKhoan() {
    }

    public TaiKhoan(String tentk, String matkhau, boolean trangthai, String email, String nhomtk) {
        this.tentk = tentk;
        this.matkhau = matkhau;
        this.trangthai = trangthai;
        this.email = email;
        this.nhomtk = nhomtk;
    }

    /**
     * @return the tentk
     */
    public String getTentk() {
        return tentk;
    }

    /**
     * @param tentk the tentk to set
     */
    public void setTentk(String tentk) {
        this.tentk = tentk;
    }

    /**
     * @return the matkhau
     */
    public String getMatkhau() {
        return matkhau;
    }

    /**
     * @param matkhau the matkhau to set
     */
    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    /**
     * @return the trangthai
     */
    public boolean isTrangthai() {
        return trangthai;
    }

    /**
     * @param trangthai the trangthai to set
     */
    public void setTrangthai(boolean trangthai) {
        this.trangthai = trangthai;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the nhomtk
     */
    public String getNhomtk() {
        return nhomtk;
    }

    /**
     * @param nhomtk the nhomtk to set
     */
    public void setNhomtk(String nhomtk) {
        this.nhomtk = nhomtk;
    }
    
}
