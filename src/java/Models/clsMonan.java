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
public class clsMonan {
    public String mamon;
    public String tenmon;
    public String hinhanh;
     public String mota;
    public double dongia;
    public int hot;
    public int spnew;
    public String maloai;
    public clsMonan() {
    }
    public clsMonan(String mamon, String tenmon,String mota, String hinhanh,int hot,int spnew, double dongia, String maloai){
        this.mamon= mamon;
        this.tenmon = tenmon;
        this.hinhanh = hinhanh;
        this.mota= mota;
        this.hot = hot;
        this.spnew = spnew;
        this.dongia = dongia;
        this.maloai = maloai;
    }
    public void setMamon(String mamon){
        this.mamon = mamon;
    }
    public String getMamon(){
        return mamon;
    }
    public void setTenmon(String tenmon){
        this.tenmon = tenmon;
    }
    public String getTenmon(){
        return tenmon;
    }
    public void setHinhanh(String hinhanh){
         this.hinhanh = hinhanh;
    }
    public String getHinhanh(){
         return hinhanh;
    }
     public void setMota(String mota){
        this.mota = mota;
    }
    public String getMota(){
        return mota;
    }
    public void setDongia(double dongia){
        this.dongia = dongia;
    }
    public double getDongia(){
        return dongia;
    }
    public void setMaloai(String maloai){
        this.maloai = maloai;
    }
    public String getMaloai(){
        return maloai;
    }
    
      public void setSpHot(int hot){
        this.hot = hot;
    }
    public int getSpHot(){
        return hot;
    }
     public void setSpNew(int spnew){
        this.spnew = spnew;
    }
    public int getSpNew(){
        return spnew;
    }
}
