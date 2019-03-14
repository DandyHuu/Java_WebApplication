
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
    private String maphanquyen;
    public clsTaikhoan(){
    
    }
    public clsTaikhoan(String user, String password, String maphanquyen){
        this.user = user;
        this.password = password;
        this.maphanquyen = maphanquyen;
    }
    public void setUser(String user){
        this.user = user;
    }
    public String getUser(){
        return user;
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
