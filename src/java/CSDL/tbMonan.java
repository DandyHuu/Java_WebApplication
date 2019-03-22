/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import Models.clsMonan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Dandy Huu
 */
public class tbMonan {
     public Vector<clsMonan> LayDSMonAn()
    {
        Vector<clsMonan> ds = new Vector<clsMonan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM monan ";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsMonan ma = new clsMonan();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setTenmon( rs.getString("Tenmon"));
                    ma.setDongia(rs.getDouble("Dongia"));
                    ma.setSpHot(rs.getInt("Hot"));
                    ma.setSpNew(rs.getInt("New"));
                    ma.setMota(rs.getString("Mota"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setMaloai( rs.getString("Maloaimon"));
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
     public Vector<clsMonan> LayMonAnByID(String id)
    {
        Vector<clsMonan> ds = new Vector<clsMonan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM monan WHERE Mamon = '"+id+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsMonan ma = new clsMonan();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setTenmon( rs.getString("Tenmon"));
                    ma.setDongia(rs.getDouble("Dongia"));
                     ma.setSpHot(rs.getInt("Hot"));
                    ma.setSpNew(rs.getInt("New"));
                    ma.setMota(rs.getString("Mota"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setMaloai( rs.getString("Maloaimon"));
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
     
      public clsMonan LayMonAnByID_cls(String id)
    {
        clsMonan ds = new clsMonan();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM monan WHERE Mamon = '"+id+"'";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    
                    String mamon = rs.getString("Mamon");
                    String Tenmon =  rs.getString("Tenmon");
                   double Dongia = rs.getDouble("Dongia");
                   int Hot = rs.getInt("Hot");
                    int _New = rs.getInt("New");
                   String Mota = rs.getString("Mota");
                   String Hinhanh = rs.getString("Hinhanh");
                   String Maloaimon =  rs.getString("Maloaimon");
                    ds = new clsMonan(mamon, Tenmon, Mota, Hinhanh, Hot, _New, Dongia, mamon);
//                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
      
      public Vector<clsMonan> LayDSMonAnHot(int limit)
    {
        Vector<clsMonan> ds = new Vector<clsMonan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM monan Where Hot = 1 ORDER BY RAND() Limit "+limit;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsMonan ma = new clsMonan();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setTenmon( rs.getString("Tenmon"));
                     ma.setSpHot(rs.getInt("Hot"));
                    ma.setSpNew(rs.getInt("New"));
                    ma.setDongia(rs.getDouble("Dongia"));
                    ma.setMota(rs.getString("Mota"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setMaloai( rs.getString("Maloaimon"));
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
      
        public Vector<clsMonan> LayDSMonAnNew(String loaimon ,int limit)
    {
        Vector<clsMonan> ds = new Vector<clsMonan>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM monan Where Maloaimon = '"+loaimon+"' and New = 0 Limit "+limit;
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsMonan ma = new clsMonan();
                    ma.setMamon(rs.getString("Mamon"));
                    ma.setTenmon( rs.getString("Tenmon"));
                    ma.setDongia(rs.getDouble("Dongia"));
                     ma.setSpHot(rs.getInt("Hot"));
                    ma.setSpNew(rs.getInt("New"));
                    ma.setMota(rs.getString("Mota"));
                    ma.setHinhanh(rs.getString("Hinhanh"));
                    ma.setMaloai( rs.getString("Maloaimon"));
                    
                    ds.add(ma);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbMonan.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
    public boolean ThemMonAn(clsMonan ma)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "INSERT INTO monan VALUES(?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, ma.mamon);
                stm.setString(2, ma.tenmon);
                 stm.setString(3, ma.mota);
                  stm.setInt(4, ma.hot);
                stm.setInt(5, ma.spnew);
                stm.setString(6, ma.hinhanh);
                stm.setDouble(7, ma.dongia);
               
                stm.setString(8, ma.maloai);
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
    public boolean XoaMonAn(String id)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "DELETE FROM monan WHERE Mamon=?";
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
    public boolean SuaMonAn(clsMonan ma)
    {
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = 
             "UPDATE monan SET Mamon=?,Tenmon=?,Mota=?,Hot=?,New=?,Hinhanh=?,Dongia=?,Maloaimon=? WHERE Mamon=?";
            try {
                PreparedStatement stm = cnn.prepareStatement(sql);
                stm.setString(1, ma.mamon);
                stm.setString(2, ma.tenmon);
                 stm.setString(3, ma.mota);
                  stm.setInt(4, ma.hot);
                stm.setInt(5, ma.spnew);
                stm.setString(6, ma.hinhanh);
                stm.setDouble(7, ma.dongia);
               
                stm.setString(8, ma.maloai);
                 stm.setString(9, ma.mamon);
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
