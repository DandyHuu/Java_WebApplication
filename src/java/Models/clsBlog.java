/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;

/**
 *
 * @author Dandy Huu
 */
public class clsBlog {
    private String mablog;
    private String tieude;
    private String noidung;
    private String hinhanh;
    private String nguoidang;
    private Date thoigian;
    public clsBlog(){
    
    }
    public clsBlog(String mablog, String tieude, String noidung, String hinhanh,String nguoidang,Date thoigian){
        this.mablog = mablog;
        this.tieude = tieude;
        this.noidung = noidung;
        this.hinhanh = hinhanh;
         this.nguoidang = nguoidang;
          this.thoigian = thoigian;
    }
    public void setMablog(String mablog){
        this.mablog = mablog;
    }
    public String getMablog(){
        return mablog;
    }
    public void setTieude(String tieude){
        this.tieude = tieude;
    }
    public String getTieude(){
        return tieude;
    }
    public void setNoidung(String noidung){
        this.noidung = noidung;
    }
    public String getNoidung(){
        return noidung;
    }
    public void setHinhanh(String hinhanh){
        this.hinhanh = hinhanh;
    }
    public String getHinhanh(){
        return hinhanh;
    }
    public void setNguoidang(String nguoidang){
        this.nguoidang = nguoidang;
    }
    public String getNguoidang(){
        return nguoidang;
    }
     public void setThoigian(Date thoigian){
        this.thoigian = thoigian;
    }
    public Date getThoigian(){
        return thoigian;
    }
}
