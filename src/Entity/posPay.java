/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import Utilities.ConnectDB;
//import com.mysql.jdbc.PreparedStatement;
//import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JTable;
import javax.swing.ListModel;
import javax.swing.event.ListDataListener;

/**
 *
 * @author mosta
 */
public abstract class posPay {
    
    private Connection con;
    private PreparedStatement pstmt;
    private double newbalance ;
    private double pay ;
    private double sell ;
    private double firstbalance ;
    private int id_utility_masary;
    private String utility_masary;
    private double price_masary_pay;  //القيمة  - عدد الكروت - صافي الشحن
    private int id_client; 
    private double discount_of_balance; // المخصوم من الرصيد Discount of Balance
    private double amount_masary_pay; // المطلوب من العميل 
    private String phone;
    private int id_pos;
    private boolean is_requer_phone_num;
   
    
    //constractor Method
    public posPay(int id_pos){
        this.id_pos = id_pos;
    }

    public boolean isIs_requer_phone_num() {
        return is_requer_phone_num;
    }

    public void setIs_requer_phone_num(boolean is_requer_phone_num) {
        this.is_requer_phone_num = is_requer_phone_num;
    }
    
    public enum charage{ cash , mob};
    //Abstract Method
    public void fillTable(JTable jTable){
        String sql_select_masary = "SELECT mp.balance , mp.amount_masary_pay , mp.discount_of_balance , c.name_client , mp.price_masary_pay , ifnull(mp.phone,u.note_utility), u.name_utility_masary, mp.time_masary_pay ,mp.date_masary_pay , mp.id_masary_pay FROM masary_pay AS mp INNER JOIN client AS c on mp.id_client = c.id_client LEFT JOIN utility_masary AS u ON mp.id_utility_masary = u.id_utility_masary WHERE mp.id_pos = "+id_pos+" ORDER BY mp.id_masary_pay DESC";
        String ColumnName[] = {"الرصيد", "المدفوع", "م الرصيد", "العميل", "القيمة", "البيان", "الخدمة","الوقت", "التاريخ", "م"};
        ConnectDB.fillAndCenterTable(sql_select_masary, jTable, ColumnName);

    };
    
    //Save Methods
    
    //this method when cash money transaction thie id_client = 1
    public boolean SaveCasher(){
        boolean isSave = false;
        try{
         con = ConnectDB.getCon();
         con.setAutoCommit(false);
         String sql_insert_masaryPay;
         sql_insert_masaryPay = "INSERT INTO masary_pay "
                 + "( `id_utility_masary`, `price_masary_pay`, `id_client`, "
                 + "`discount_of_balance`, `amount_masary_pay`, `id_pos` ,`balance`,`phone`) VALUES (?,?,?,?,?,?,?,?)";
         pstmt = (PreparedStatement) con.prepareStatement(sql_insert_masaryPay, Statement.RETURN_GENERATED_KEYS);
         pstmt.setInt(1, id_utility_masary);
         pstmt.setDouble(2, price_masary_pay);
         pstmt.setInt(3, 1);
         pstmt.setDouble(4, discount_of_balance);
         pstmt.setDouble(5, amount_masary_pay);
         newbalance = getfirstBalance() - discount_of_balance;
         pstmt.setInt(6, id_pos);
         pstmt.setDouble(7, newbalance);
         pstmt.setString(8, utility_masary);
         int rowAffact = pstmt.executeUpdate();  
         ResultSet rst = pstmt.getGeneratedKeys();
         if(rst.next()){
            int id_masary_pay = rst.getInt(1);
            if(rowAffact == 1){
                 String sql_insert_casher = "INSERT INTO `casher` (`Debit`, `note`,`id_masary_pay`) VALUES (?,?,?)";
                 pstmt = (PreparedStatement) con.prepareStatement(sql_insert_casher);
                 pstmt.setDouble(1,amount_masary_pay);
                 pstmt.setString(2, utility_masary);
                 pstmt.setInt(3, id_masary_pay);
                 if(pstmt.executeUpdate() == 1){
                    if(is_requer_phone_num){
                        String sql_inser_num = "INSERT INTO `phone_numbers` (`numbers`) VALUES(?)";
                        PreparedStatement pst = con.prepareStatement(sql_inser_num);
                        pst.setString(1, phone);
                        pst.executeUpdate();
                    }
                    con.commit();
                    isSave = true;
                    con.close();
                 }
            }
         }

     }catch(SQLException ex){
         try {
             con.rollback();
             con.close();
         } catch (SQLException ex1) {
             Logger.getLogger(MasaryPay.class.getName()).log(Level.SEVERE, null, ex1);
         }
         isSave = false;
         Logger.getLogger(MasaryPay.class.getName()).log(Level.SEVERE, null, ex);
     }
        return isSave;
    }
    //Save when id_clien not equal 1 it's mean this transaction is client depit not casher
    public boolean SaveClients(){
 boolean isSave = false;
    try{
         con = ConnectDB.getCon();
         con.setAutoCommit(false);
         String sql_insert_masaryPay;
         sql_insert_masaryPay = "INSERT INTO masary_pay "
                 + "( `id_utility_masary`, `price_masary_pay`, `id_client`, "
                 + "`discount_of_balance`, `amount_masary_pay`, `id_pos` ,`balance`,`phone`) VALUES (?,?,?,?,?,?,?,?)";
         pstmt = (PreparedStatement) con.prepareStatement(sql_insert_masaryPay, Statement.RETURN_GENERATED_KEYS);
         pstmt.setInt(1, id_utility_masary);
         pstmt.setDouble(2, price_masary_pay);
         pstmt.setInt(3, 1);
         pstmt.setDouble(4, discount_of_balance);
         pstmt.setDouble(5, amount_masary_pay);
         newbalance = getfirstBalance() - discount_of_balance;
         pstmt.setInt(6, id_pos);
         pstmt.setDouble(7, newbalance);
         pstmt.setString(8, utility_masary);
         int rowAffact = pstmt.executeUpdate();  
         ResultSet rst = pstmt.getGeneratedKeys();
         if(rst.next()){
            int id_masary_pay = rst.getInt(1);
            if(rowAffact == 1){
                 String sql_insert_clientAccount = "INSERT INTO `clientaccount` (`Debit`,`id_client`,id_masary_pay`, `note`) VALUES (?,?,?,?)";
                 pstmt = (PreparedStatement) con.prepareStatement(sql_insert_clientAccount);
                 pstmt.setDouble(1,amount_masary_pay);
                 pstmt.setInt(2, id_client);
                 pstmt.setInt(3, id_masary_pay);
                 pstmt.setString(4, utility_masary);
                 if(pstmt.executeUpdate() == 1){
                    if(is_requer_phone_num){
                        String sql_inser_num = "INSERT INTO `phone_numbers` (`numbers`) VALUES(?)";
                        PreparedStatement pst = con.prepareStatement(sql_inser_num);
                        pst.setString(1, phone);
                        pst.executeUpdate();
                    }
                    con.commit();
                    isSave = true;
                    con.close();
                 }
            }
     }

    }
    catch(SQLException ex){
      try {
            con.rollback();
            con.close();
         } 
      catch (SQLException ex1) {
            Logger.getLogger(MasaryPay.class.getName()).log(Level.SEVERE, null, ex1);
        }
        isSave = false;
        Logger.getLogger(MasaryPay.class.getName()).log(Level.SEVERE, null, ex);
    }
    return isSave;    
 }
    
    
    // get Balance Machein befor transaction
    public double getfirstBalance(){
        String sql_get_sum_pay = "SELECT SUM(discount_of_balance) AS id FROM masary_pay WHERE id_pos="+id_pos;
        String sum_pay = ConnectDB.getIdFromName(sql_get_sum_pay);
        String sql_get_sum_sell = "SELECT SUM(amount_masary_sell) AS id FROM masary_sell WHERE id_pos="+id_pos;
        String sum_sell = ConnectDB.getIdFromName(sql_get_sum_sell);
        if (sum_pay != null) {
            pay = Double.parseDouble(sum_pay);
        } else {
            pay = 0;
            System.out.print("pay = null");
        }
        if(sum_sell != null) {
            sell = Double.parseDouble(sum_sell);
        } else {
            sell = 0;
            System.out.print("sell = null");
        }
        firstbalance = sell - pay;
        return firstbalance;
    }
    
    //method Fill JList phoneNumber
    public List<String> Phoneslist(charage charahe){
         List<String> model = null;
        try {
            con = ConnectDB.getCon();
            Statement stm = (Statement) con.createStatement();
            model = new ArrayList<>();
            String sql = "";
            switch(charahe){
                case cash:
                    sql = "Select number_VF_cash from VF_cash";
                    break;
                case mob:
                    sql = "SELECT phone FROM masary_pay GROUP BY phone";
                    break;
            }
            ResultSet rst = stm.executeQuery(sql);
            String value;
            while (rst.next()) {
                value = rst.getString(1);
                model.add(value);
            }
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(posPay.class.getName()).log(Level.SEVERE, null, ex);
        }
        return model;
    }
    
    // Geter and Setter Methods
    //this method set id utility by note
    public void setId_utility_masary(String note) {
        this.id_utility_masary = new masary_Utilites(id_pos).getIdByNote(note);
    }
    public double getNewbalance() {
        return newbalance;
    }
    public void setNewbalance(double newbalance) {
        this.newbalance = newbalance;
    }
    public double getPay() {
        return pay;
    }
    public void setPay(double pay) {
        this.pay = pay;
    }
    public double getSell() {
        return sell;
    }
    public void setSell(double sell) {
        this.sell = sell;
    }
    public double getFirstbalance() {
        return firstbalance;
    }
    public void setFirstbalance(double firstbalance) {
        this.firstbalance = firstbalance;
    }
    public int getId_utility_masary() {
        return id_utility_masary;
    }
    public void setId_utility_masary(int id_utility_masary) {
        this.id_utility_masary = id_utility_masary;
    }
    public String getUtility_masary() {
        return utility_masary;
    }
    public void setUtility_masary(String utility_masary) {
        this.utility_masary = utility_masary;
    }
    public double getPrice_masary_pay() {
        return price_masary_pay;
    }
    public void setPrice_masary_pay(double price_masary_pay) {
        this.price_masary_pay = price_masary_pay;
    }
    public int getId_client() {
        return id_client;
    }
    public void setId_client(int id_client) {
        this.id_client = id_client;
    }
    public double getDiscount_of_balance() {
        return discount_of_balance;
    }
    public void setDiscount_of_balance(double discount_of_balance) {
        this.discount_of_balance = discount_of_balance;
    }
    public double getAmount_masary_pay() {
        return amount_masary_pay;
    }
    public void setAmount_masary_pay(double amount_masary_pay) {
        this.amount_masary_pay = amount_masary_pay;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public int getId_pos() {
        return id_pos;
    }
    public void setId_pos(int id_pos) {
        this.id_pos = id_pos;
    }
    
    public List<String> PhoneNumberList(){
       List<String> Utilities = new ArrayList<String>();
        try {
            con = ConnectDB.getCon();
            Statement stmt = (com.mysql.jdbc.Statement) con.createStatement();
            String sql = "SELECT numbers FROM `phone_numbers`";
            //String sql = "SELECT name_items FROM `items`";
            //int i = 0;
            ResultSet rst = stmt.executeQuery(sql);
            String elment;
            while (rst.next()) {
                elment = rst.getString(1);
                Utilities.add(elment);
            }
           
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(PosClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Utilities;
    }
    
}
