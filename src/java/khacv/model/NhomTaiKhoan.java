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
public class NhomTaiKhoan {
    private String nhomtk;
    private String mota;
    private boolean trangthai;

    public NhomTaiKhoan() {
    }

    public NhomTaiKhoan(String nhomtk, String mota, boolean trangthai) {
        this.nhomtk = nhomtk;
        this.mota = mota;
        this.trangthai = trangthai;
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

    /**
     * @return the mota
     */
    public String getMota() {
        return mota;
    }

    /**
     * @param mota the mota to set
     */
    public void setMota(String mota) {
        this.mota = mota;
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
    
    
}
