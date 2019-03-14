/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;
import Models.clsSlide;
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
public class tbSlide {
     public Vector<clsSlide> LayDSSlides()
    {
        Vector<clsSlide> ds = new Vector<clsSlide>();
        Connection cnn = Database.KetnoiCSDL();
        if(cnn!=null)
        {
            String sql = "SELECT * FROM slide";
            try {
                Statement stm = cnn.createStatement();
                ResultSet rs = stm.executeQuery(sql);
                while(rs.next())//duyệt từng bản ghi kết quả select
                {
                    clsSlide sl = new clsSlide();
                    sl.setid(rs.getInt("id"));
                    sl.setTitle(rs.getString("title"));
                    sl.setDiscription(rs.getString("discription"));
                    sl.setHinhanh(rs.getString("hinhanh"));
                    
                    ds.add(sl);
                }
            } catch (SQLException ex) {
                Logger.getLogger(tbSlide.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return ds;
    }
}
