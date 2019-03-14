/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author ADMIN
 */
public class clsChitietHoadon {
    public String macthoadon;
    public String mahoadon;
    public String mamonan;
    public int soluong;
    public String ghichu;
    public clsChitietHoadon(){
    
    }
    public clsChitietHoadon(String macthoadon, String mahoadon, String mamonan, int soluong, String ghichu){
        this.macthoadon = macthoadon;
        this.mahoadon = mahoadon;
        this.mamonan = mamonan;
        this.soluong = soluong;
        this.ghichu = ghichu;
    }
    public void setMacthoadon(String macthoadon){
        this.macthoadon = macthoadon;
    }
    public String getMacthoadon(){
        return macthoadon;
    }
    public void setMahoadon(String mahoadon){
        this.mahoadon = mahoadon;
    }
    public String getMahoadon(){
        return mahoadon;
    }
    public void setMamonan(String mamonan){
        this.mamonan = mamonan;
    }
    public String getMamonan(){
        return mamonan;
    }
    public void setSoluong(int soluong){
        this.soluong = soluong;
    }
    public int getSoluong(){
        return soluong;
    }
    public void setGhichu(String ghichu){
        this.ghichu = ghichu;
    }
    public String getGhichu(){
        return ghichu;
    }
}
