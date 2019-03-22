/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsLoaimon;
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
public class tbLoaimon {
       public Vector<clsLoaimon> LayDSCate()
    {
        Vector<clsLoaimon> ds = new Vector<clsLoaimon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM loaimon ";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsLoaimon ma = new clsLoaimon();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setLoaimon(rs.getString("Loaimon"));
                  
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
         public Vector<clsLoaimon> LayDSCateById( String id)
    {
        Vector<clsLoaimon> ds = new Vector<clsLoaimon>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM loaimon WHERE Mamon = '"+id+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsLoaimon ma = new clsLoaimon();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setLoaimon(rs.getString("Loaimon"));
                  
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
       
        public String LayIdCate(String name)
    {
        String mamon = "";
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM loaimon WHERE Loaimon = '"+name+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                   mamon = rs.getString("Mamon");
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return mamon;
    }
        
           public String LayCateNameById(String id)
    {
        String mamon = "";
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM loaimon WHERE Mamon = '"+id+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                   mamon = rs.getString("Loaimon");
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return mamon;
    }
           
           
      public boolean updateLoaimon(clsLoaimon c ){
           Connection cnn = Database.KetnoiCSDL();
           String sql = "UPDATE loaimon SET Loaimon = ? WHERE Mamon = ?";
           try {
               PreparedStatement ps = cnn.prepareStatement(sql);
//               clsLoaimon c = new clsLoaimon();
               ps.setString(1, c.getLoaimon());
               ps.setString(2, c.getMamon());
               return ps.executeUpdate() == 1;
           } catch (SQLException ex) {
               Logger.getLogger(tbLoaimon.class.getName()).log(Level.SEVERE, null, ex);
           }
           return false;
       }
       public boolean insertMaLoai(clsLoaimon c){
        Connection cnn = Database.KetnoiCSDL();
        String sql = "INSERT INTO loaimon VALUES(?,?)";
         try {
             PreparedStatement ps = cnn.prepareStatement(sql);
             ps.setString(1, c.getMamon());
             ps.setString(2, c.getLoaimon());
             return ps.executeUpdate() == 1;
         } catch (SQLException ex) {
             Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
         }
         return false;
       }
       
       public boolean deleteLoaimon(String id){
        Connection cnn = Database.KetnoiCSDL();
        String sql = "DELETE FROM loaimon WHERE Mamon = ?";
           try {
               PreparedStatement ps = cnn.prepareStatement(sql);
               ps.setString(1, id);
               return ps.executeUpdate() == 1;
           } catch (SQLException ex) {
               Logger.getLogger(tbLoaimon.class.getName()).log(Level.SEVERE, null, ex);
           }
           return false;
        
       }     
}
