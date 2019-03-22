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
        public Vector<clsTaikhoan> check_login(String user, String pass)
    {
        Vector<clsTaikhoan> ds = new Vector<clsTaikhoan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            try {
            String sql = "SELECT * FROM taikhoan WHERE Username = ? and Password = ?";
                
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, user);
                stm.setString(2, pass);
                ResultSet rs = stm.executeQuery();
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsTaikhoan sl = new clsTaikhoan();
                    sl.setUser(rs.getString("Username"));
                    sl.setPassword(rs.getString("Password"));
                    sl.setName(rs.getString("Ten"));
                    sl.setPhone(rs.getString("Sodienthoai"));
                    sl.setMaphanquyen(rs.getString("maphanquyen"));
                    ds.add(sl);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbTaikhoan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
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
                    sl.setName(rs.getString("Ten"));
                    sl.setPhone(rs.getString("Sodienthoai"));
                    sl.setMaphanquyen(rs.getString("maphanquyen"));
                    ds.add(sl);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbTaikhoan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
      
       public Vector<clsTaikhoan> LayDSUsersByUser( String name)
    {
        Vector<clsTaikhoan> ds = new Vector<clsTaikhoan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM taikhoan WHERE Username = '"+name+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsTaikhoan sl = new clsTaikhoan();
                    sl.setUser(rs.getString("Username"));
                    sl.setPassword(rs.getString("Password"));
                    sl.setName(rs.getString("Ten"));
                    sl.setPhone(rs.getString("Sodienthoai"));
                    sl.setMaphanquyen(rs.getString("maphanquyen"));
                    ds.add(sl);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbTaikhoan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
       
       public boolean ThemTaikhoan(clsTaikhoan ma)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "INSERT INTO taikhoan VALUES(?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, ma.getUser());
                stm.setString(2, ma.getName());
               stm.setString(3, ma.getPhone());
                 stm.setString(4, ma.getPassword());
                stm.setString(5, ma.getMaphanquyen());
                int n = stm.executeUpdate();
                if(n<=0)
                    return false;
                else
                    return true;
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
        }
        else
            return false;
    }
       
       public boolean XoaNguoidung(String id)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "DELETE FROM taikhoan WHERE Username=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, id);
                int n = stm.executeUpdate();
                if(n<=0)
                    return false;
                else
                    return true;
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
        }
        else
            return false;
    }
}
