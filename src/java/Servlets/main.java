/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import CSDL.tbMonan;
import CSDL.tbTaikhoan;

/**
 *
 * @author Dandy Huu
 */
public class main {
    public static void main(String[] args) {
//        tbTaikhoan tk = new tbTaikhoan();
//        String username = "admin";
//        if (tk.check_user(username)== true) {
//            System.out.println("ok!");
//        }
//        else{
//             System.out.println("no ok!");
//        }
        
        tbMonan mn = new tbMonan();
        String id ="MA001";
        if (mn.LayMonAnByID(id).size() >0) {
           System.out.println("ok!");
        }
        else{
             System.out.println("no ok!");
        }
    }
}
