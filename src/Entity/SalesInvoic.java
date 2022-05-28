/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import Utilities.ConnectDB;
import Utilities.Tools;
import Utilities.invoice;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mosta
 */


public class SalesInvoic extends invoice{
    private Vector<ItemsOnSalesInvoice> Values;
    private Connection con;
    private PreparedStatement pstmt = null;
    private PreparedStatement pstItems = null;
     private PreparedStatement pstcasher = null;
    private ResultSet rs = null;
    public SalesInvoic() {
        super("salesinvoic");
    }

    @Override
    public boolean Save() {
        boolean isSaved = false;
      try{
        con = ConnectDB.getCon();
        con.setAutoCommit(false);
        String sqlInsert = "INSERT INTO `salesinvoic` (`id_salesInvoic`, `date_salesInvoic`, `type_salesInvoic`, `id_client`"
                + ", `totalAmount`, `discount`, `amountCash`, `amountLater`, `note`, `isFilltering`) "
                + "VALUES (?,?,?,?,?,?,?,?,?,?)";
        pstmt = con.prepareStatement(sqlInsert,Statement.RETURN_GENERATED_KEYS);
        pstmt.setString(1, getId_invoice());
        pstmt.setString(2, getDate_invoice());
        pstmt.setString(3, Tools.payMethod(getPaymentMethod()));
        pstmt.setString(4, getId_client());
        pstmt.setDouble(5, getAmount());
        pstmt.setDouble(6, getDiscont());
        pstmt.setDouble(7, getCashAmount());
        pstmt.setDouble(8, getRemainingAmount());
        pstmt.setString(9, getNote());
        pstmt.setBoolean(10, isIsFilter());
        int rowAffected = pstmt.executeUpdate();
        rs = pstmt.getGeneratedKeys();
        if(rowAffected == 1){
            rowAffected = 0 ;
           switch(getPaymentMethod()){  
               case cash:
                 String sqlInsertCasher ="INSERT INTO `casher` (`date_casher`, `Debit`, `note`) VALUES (?,?,?)";
                 pstcasher = con.prepareStatement(sqlInsertCasher, Statement.RETURN_GENERATED_KEYS);
                 pstcasher.setString(1, getDate_invoice());
                 pstcasher.setDouble(2, getCashAmount());
                 pstcasher.setString(3,getNote());
                 rowAffected = pstcasher.executeUpdate();
                   //System.out.println("Cash : " + rowAffected);
                 break;
               case deferred:
                   String sqlInserClientAccount = "INSERT INTO `clientaccount` (`date_ClientAccount`, `Debit`,`id_client`, `id_salesInvoic`, `note`) "
                           + "VALUES (?,?,?,?,?)";
                   pstcasher = con.prepareStatement(sqlInserClientAccount, Statement.RETURN_GENERATED_KEYS);
                   pstcasher.setString(1, getDate_invoice());
                   pstcasher.setDouble(2, getRemainingAmount());
                   pstcasher.setString(3, getId_client());
                   pstcasher.setString(4, getId_invoice());
                   pstcasher.setString(5, getNote());
                   rowAffected = pstcasher.executeUpdate();
                   //System.out.println("deferred : " + rowAffected);
                   break;
               case installments:
                 String sqlInsertCasherInsallmen ="INSERT INTO `casher` (`date_casher`, `Debit`, `note`) VALUES (?,?,?)";
                 pstcasher = con.prepareStatement(sqlInsertCasherInsallmen, Statement.RETURN_GENERATED_KEYS);
                 pstcasher.setString(1, getDate_invoice());
                 pstcasher.setDouble(2, getCashAmount());
                 pstcasher.setString(3,getNote());
                 rowAffected = pstcasher.executeUpdate();
                 //System.out.println("Installments Cash : " + rowAffected);
                 String sqlInserClientAccountInstallmen = "INSERT INTO `clientaccount` (`date_ClientAccount`, `Debit`,`id_client`, `id_salesInvoic`, `note`) "
                           + "VALUES (?,?,?,?,?)";
                 pstcasher = con.prepareStatement(sqlInserClientAccountInstallmen, Statement.RETURN_GENERATED_KEYS);
                 pstcasher.setString(1, getDate_invoice());
                 pstcasher.setDouble(2, getRemainingAmount());
                 pstcasher.setString(3, getId_client());
                 pstcasher.setString(4, getId_invoice());
                 pstcasher.setString(5, getNote());
                 rowAffected = pstcasher.executeUpdate();
                 //System.out.println("Installments ClientAccount : " + rowAffected);  
                 break;
           }
           
           Values.forEach((i)->getValuesFromVector(i));
           con.commit();
           isSaved = true;
        }else{
            con.rollback();
            isSaved = false;
        }
        
      }
      catch(SQLException ex){
           try{
              if(con != null)
                    con.rollback();
            }catch(SQLException e){
                System.out.println(e.getMessage());
            }
            isSaved =false;
            System.out.println(ex.getMessage());
      }
      finally {
            try {
                if(rs != null)  rs.close();
                if(pstmt != null) pstmt.close();
                if(con != null) con.close(); 
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return isSaved;
    }

    public Vector<ItemsOnSalesInvoice> getValues() {
        return Values;
    }
    public void setValues(Vector<ItemsOnSalesInvoice> Values) {
        this.Values = Values;
    }
    public void getValuesFromVector(ItemsOnSalesInvoice i){
        try {
           String Sql = "INSERT INTO `itemsonsalesinvoice` (`id`, `id_items`, `name_items`, `qyt`, `id_unit`,"
                      + " `price`, `discount`, `Amount`, `id_salesInvoic`)"
                      + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstItems = con.prepareStatement(Sql, Statement.RETURN_GENERATED_KEYS);
            pstItems.setInt(1,i.id);
            pstItems.setInt(2, i.id_items);
            pstItems.setString(3, i.name_items);
            pstItems.setDouble(4, i.qyt);
            pstItems.setInt(5, i.id_unit);
            pstItems.setDouble(6, i.price);
            pstItems.setDouble(7, i.discount);
            pstItems.setDouble(8, i.Amount);
            pstItems.setInt(9, i.id_salesInvoic);
            int rowAffect = pstItems.executeUpdate();
            //System.out.println(""+rowAffect+i.id);
        } catch (SQLException ex) {
            Logger.getLogger(SalesInvoic.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

    
    
}