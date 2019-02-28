/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import com.sun.jndi.cosnaming.CNNameParser;
import java.sql.Connection;

/**
 *
 * @author Dandy Huu
 */
public class CheckConnect {
   
   public boolean check(){
       Connection cnn = Database.KetnoiCSDL();
       if (cnn!=null) {
          return true;
          
       }
       else return false;
   }
    
}
