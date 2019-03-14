/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class clsHoadon {
    private String mahoadon;
    private String maban;
    private String mabanthanhtoan;
    private Date thoigianmua;
    private double tongtien;
    private int dathanhtoan;
    public clsHoadon(){
    
    }
    public clsHoadon(String mahoadon, String maban, String mabanthanhtoan, Date thoigianmua, double tongtien, int dathanhtoan){
        this.mahoadon = mahoadon;
        this.maban = maban;
        this.mabanthanhtoan = mabanthanhtoan;
        this.thoigianmua = thoigianmua;
        this.tongtien = tongtien;
        this.dathanhtoan = dathanhtoan;
    }
        public void setMahoadon(String mahoadon ){
            this.mahoadon = mahoadon;
        }
        public String getMahoadon(){
            return mahoadon;
        }
        public void setMaban(String maban){
            this.maban = maban;
        }
        public String getMaban(){
            return maban;
        }
        public void setMabanthanhtoan(String mabanthanhtoan){
            this.mabanthanhtoan = mabanthanhtoan;
        }
        public String getMabanthanhtoan(){
            return mabanthanhtoan;
        }
        public void setThoigianmua(Date thoigianmua){
            this.thoigianmua = thoigianmua;
        }
        public Date getThoigianmua(){
            return thoigianmua;
        }
        public void setTongtien(double tongtien){
            this.tongtien = tongtien;
        }
        public double getTongtien(){
            return tongtien;
        }
        public void setDathanhtoan(int dathanhtoan ){
            this.dathanhtoan = dathanhtoan;
        }
        public int getDathanhtoan(){
            return dathanhtoan;
        }
    
}
