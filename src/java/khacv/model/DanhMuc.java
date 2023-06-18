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
public class DanhMuc {
    private String madm;
    private String tendm;
    private boolean trangthai;
    private String dactinh;

    public DanhMuc() {
    }

    public DanhMuc(String madm, String tendm, boolean trangthai, String dactinh) {
        this.madm = madm;
        this.tendm = tendm;
        this.trangthai = trangthai;
        this.dactinh = dactinh;
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
     * @return the tendm
     */
    public String getTendm() {
        return tendm;
    }

    /**
     * @param tendm the tendm to set
     */
    public void setTendm(String tendm) {
        this.tendm = tendm;
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
     * @return the dactinh
     */
    public String getDactinh() {
        return dactinh;
    }

    /**
     * @param dactinh the dactinh to set
     */
    public void setDactinh(String dactinh) {
        this.dactinh = dactinh;
    }
    
}
