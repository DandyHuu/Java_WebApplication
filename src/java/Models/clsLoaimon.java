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
public class clsLoaimon {
    private String mamon;
    private String loaimon;
    public clsLoaimon(){
    
    }
    public clsLoaimon(String mamon, String loaimon){
        this.mamon = mamon;
        this.loaimon = loaimon;
    }
    public void setLoaimon(String loaimon){
        this.loaimon = loaimon;
    }
    public String getLoaimon(){
        return loaimon;
    }
    public void setMamon(String mamon){
        this.mamon = mamon;
    }
    public String getMamon(){
        return mamon;
    }
}
