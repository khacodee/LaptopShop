/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;

/**
 *
 * @author LENOVO
 */
public class SanPham {
    private String masp;
    private String tensp;
    private String mota;
    private int soluong;
    private float dongia;
    private String hinhanh;
    private boolean trangthai;
    private String madm;

    public SanPham() {
    }

    public SanPham(String masp, String tensp, String mota, int soluong, float dongia, String hinhanh, boolean trangthai, String madm) {
        this.masp = masp;
        this.tensp = tensp;
        this.mota = mota;
        this.soluong = soluong;
        this.dongia = dongia;
        this.hinhanh = hinhanh;
        this.trangthai = trangthai;
        this.madm = madm;
    }
    

    /**
     * @return the masp
     */
    public String getMasp() {
        return masp;
    }

    /**
     * @param masp the masp to set
     */
    public void setMasp(String masp) {
        this.masp = masp;
    }

    /**
     * @return the tensp
     */
    public String getTensp() {
        return tensp;
    }

    /**
     * @param tensp the tensp to set
     */
    public void setTensp(String tensp) {
        this.tensp = tensp;
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
     * @return the soluong
     */
    public int getSoluong() {
        return soluong;
    }

    /**
     * @param soluong the soluong to set
     */
    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    /**
     * @return the dongia
     */
    public float getDongia() {
        return dongia;
    }

    /**
     * @param dongia the dongia to set
     */
    public void setDongia(float dongia) {
        this.dongia = dongia;
    }

    /**
     * @return the hinhanh
     */
    public String getHinhanh() {
        return hinhanh;
    }

    /**
     * @param hinhanh the hinhanh to set
     */
    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
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
     * @return the madm
     */
    public String getMadm() {
        return madm;
    }

    /**
     * @param madm the madm to set
     */
    public void setMadm(String madm) {
        this.madm = madm;
    }
    /**
     * @return the donGiaStr
     */
    public String getDonGiaStr() {
        BigDecimal donGiaB = BigDecimal.valueOf(dongia);
        donGiaB = donGiaB.setScale(0, RoundingMode.HALF_UP);
        DecimalFormat df = new DecimalFormat("#,###");
        return df.format(donGiaB) + "₫";
    }
}
