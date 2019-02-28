/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dandy Huu
 */
public class tbTaikhoan {
    public boolean check_login(String user, String pass){
        Connection cnn = Database.KetnoiCSDL();
        boolean kq = false;
        if (cnn != null) {
            try {
                String sql = "SELECT Username, Password, Maphanquyen FROM taikhoan WHERE Username = ? and Password = ?";
                
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, user);
                stm.setString(2, pass);
                ResultSet rs = stm.executeQuery();
                if (rs.next()) {
                    kq = true;
                    
                }
                else{
                    kq = false;
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbTaikhoan.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else{
            kq = false;
        }
        
        return kq;
    }
}
