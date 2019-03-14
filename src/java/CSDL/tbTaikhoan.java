/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsSlide;
import Models.clsTaikhoan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
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
                String sql = "SELECT * FROM taikhoan WHERE Username = ? and Password = ?";
                
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
//    check_user
    
    public boolean check_user(String user){
        Connection cnn = Database.KetnoiCSDL();
        boolean kq = false;
        if (cnn != null) {
            try {
                String sql = "SELECT * FROM taikhoan WHERE Username = ? ";
                
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, user);
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
    
      public Vector<clsTaikhoan> LayDSUsers()
    {
        Vector<clsTaikhoan> ds = new Vector<clsTaikhoan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM taikhoan";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsTaikhoan sl = new clsTaikhoan();
                    sl.setUser(rs.getString("Username"));
                    sl.setPassword(rs.getString("Password"));
                    ds.add(sl);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbTaikhoan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
}
