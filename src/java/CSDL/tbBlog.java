/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsBlog;
import java.sql.Connection;
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
public class tbBlog {
      public Vector<clsBlog> LayDSBlog()
    {
        Vector<clsBlog> ds = new Vector<clsBlog>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM blog ";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsBlog ma = new clsBlog();
                    ma.setMablog(rs.getString("Mablog"));
                    ma.setTieude(rs.getString("Tieude"));
                    ma.setNoidung(rs.getString("Noidung"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setNguoidang(rs.getString("Nguoidang"));
                    ma.setThoigian(rs.getDate("Thoigian"));
                  
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
      
        public Vector<clsBlog> LayDSBlogLimit(int limit)
    {
        Vector<clsBlog> ds = new Vector<clsBlog>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM blog ORDER BY RAND() Limit "+limit;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsBlog ma = new clsBlog();
                    ma.setMablog(rs.getString("Mablog"));
                    ma.setTieude(rs.getString("Tieude"));
                    ma.setNoidung(rs.getString("Noidung"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setNguoidang(rs.getString("Nguoidang"));
                    ma.setThoigian(rs.getDate("Thoigian"));
                  
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
           public Vector<clsBlog> LayDSBlogByID(String id)
    {
        Vector<clsBlog> ds = new Vector<clsBlog>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM blog WHERE MAblog = "+id;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsBlog ma = new clsBlog();
                    ma.setMablog(rs.getString("Mablog"));
                    ma.setTieude(rs.getString("Tieude"));
                    ma.setNoidung(rs.getString("Noidung"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setNguoidang(rs.getString("Nguoidang"));
                    ma.setThoigian(rs.getDate("Thoigian"));
                  
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbBlog.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
}
