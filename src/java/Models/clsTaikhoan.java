
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
public class clsTaikhoan {
    private String user;
    private String password;
     private String name;
      private String phone;
    private String maphanquyen;
    public clsTaikhoan(){
    
    }
    public clsTaikhoan(String user, String password, String name ,String phone,String maphanquyen){
        this.user = user;
        this.password = password;
        this.maphanquyen = maphanquyen;
        this.name = name;
        this.phone = phone;
    }
    public void setUser(String user){
        this.user = user;
    }
    public String getUser(){
        return user;
    }
      public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
      public void setPhone(String phone){
        this.phone = phone;
    }
    public String getPhone(){
        return phone;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return password;
    }
    public void setMaphanquyen(String maphanquyen){
        this.maphanquyen = maphanquyen;  
    }
    public String getMaphanquyen(){
        return maphanquyen;
    }
}
