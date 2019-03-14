/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Dandy Huu
 */
public class clsSlide {
    public int id;
    public String title;
    public  String discription;
    public String hinhanh;
    
    public clsSlide(){}
    
     public clsSlide(int id , String title, String discription , String hinhanh){
         this.id = id;
         this.title = title;
         this.discription=discription;
         this.hinhanh = hinhanh;
     }
     public void setid(int id){
        this.id = id;
    }
    public int getid(){
        return id;
    }
     public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return title;
    }
     public void setDiscription(String discription){
        this.discription = discription;
    }
    public String getDiscription(){
        return discription;
    }
     public void setHinhanh(String hinhanh){
        this.hinhanh = hinhanh;
    }
    public String getHinhanh(){
        return hinhanh;
    }
}
