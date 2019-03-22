/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Dandy Huu
 */
public class MyCart {
   
    public  HashMap<String,Item> cart;
     
    public MyCart(){
        cart = new HashMap<>();
    }
    
    public MyCart(HashMap<String,Item> cart){
         this.cart = cart;
    }
   
    
    public void setCart(HashMap<String,Item> cart){
         this.cart = cart;
    }
    
     public HashMap<String,Item> getCart(){
         return cart;
    }
    
     
    
    public void ThemHang(String id , Item item){
        boolean check  = cart.containsKey(id);
        
        if (check) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cart.put(item.getProduct().getMamon(), item);
               
        }
        else{
             cart.put(item.getProduct().getMamon(), item);
        }
        
    }
    
     public void GiamHang(String id , Item item){
        boolean check  = cart.containsKey(id);
        
         if (check == true) {
            int quantity_old = item.getQuantity();
             if (quantity_old <= 1) {
                 cart.remove(id);;
             }
             else{
                 item.setQuantity(quantity_old - 1);
                 cart.put(item.getProduct().getMamon(), item);
             }
               
        }
        
        
        
    }
     
      public void XoaHang(String id){
        boolean check  = cart.containsKey(id);
        
        if (check == true) {
            cart.remove(id);
        }
        
      }
      
      public int CountHang(){
        int count = 0;
        count = cart.size();
        return count;
      }
     
//    public double Tongtien(){
//        double tien=0;
//        for (Map.Entry<String, Integer> entrySet : cart.entrySet()) {
//            String key = entrySet.getKey();
//            Integer value = entrySet.getValue();
//            
//            tien = 
//            
//        }
//        return tien;
//    }
     
    
    
}
