/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Entity.purchaseInvoice;
import Utilities.Tafqeet;
import Utilities.Tools;
import java.awt.Font;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.HashMap;

/**
 *
 * @author mosta
 */
public class SearchPurchaseFrame extends javax.swing.JFrame {

    /**
     * Creates new form SearchPurchaseFrame
     */
    public SearchPurchaseFrame() {
        initComponents();
        txt_titel.setFont(Tools.font(24f));
        purchaseInvoice.fillTable(jTable1);
        setSize(700, 660);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txt_titel = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        background = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("بحث عن فاتورة مشتريات");
        getContentPane().setLayout(null);

        txt_titel.setFont(new Font("VIP Hala Bold", Font.BOLD, 24));
        txt_titel.setForeground(new java.awt.Color(255, 255, 255));
        txt_titel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_titel.setText("بحث عن فاتورة مشتريات");
        getContentPane().add(txt_titel);
        txt_titel.setBounds(130, 11, 426, 60);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "الباقي", "المبلغ المدفوع", "الخصم", "الاجمالي", "المورد", "نوع الفاتورة", "التاريخ", "م"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);
        if (jTable1.getColumnModel().getColumnCount() > 0) {
            jTable1.getColumnModel().getColumn(0).setResizable(false);
            jTable1.getColumnModel().getColumn(1).setResizable(false);
            jTable1.getColumnModel().getColumn(2).setResizable(false);
            jTable1.getColumnModel().getColumn(3).setResizable(false);
            jTable1.getColumnModel().getColumn(4).setResizable(false);
            jTable1.getColumnModel().getColumn(5).setResizable(false);
            jTable1.getColumnModel().getColumn(6).setResizable(false);
            jTable1.getColumnModel().getColumn(7).setResizable(false);
        }

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(10, 77, 666, 533);

        background.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        background.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/6649006.jpg"))); // NOI18N
        getContentPane().add(background);
        background.setBounds(0, 0, 690, 620);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        int row = jTable1.getSelectedRow();
        String id_invoicBil = jTable1.getValueAt(row, 7).toString();
        double Total_amount = Double.parseDouble(jTable1.getValueAt(row, 3).toString());
        double discont = Double.parseDouble(jTable1.getValueAt(row, 2).toString());
        System.out.println(id_invoicBil +" " + Total_amount +" "+discont);
       String sql = "SELECT ps.id_purchaseInvoice , ps.date_purchaseInvoice , ps.type_purchaseInvoic , s.name_Suppliers , ps.totalAmount , ps.discount , ps.amountCash , ps.amountLater , ps.note"
                  + " FROM purchaseinvoice ps INNER JOIN suppliers s on ps.id_Suppliers = s.id_Suppliers where ps.id_purchaseInvoice=$P{id_purchaseInvoice}";//where ps.id_purchaseInvoice=1
        HashMap para = new HashMap();
        para.put("id_purchaseInvoice", id_invoicBil);
        double amount = Total_amount - discont;
        para.put("Tafqeet", Tafqeet.doTafqeet(new BigDecimal(amount)));
        InputStream stream =getClass().getResourceAsStream("/Reborts/PurchaseInvoicReport.jrxml");
        Tools.Printer(sql, stream, para);
    }//GEN-LAST:event_jTable1MouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(SearchPurchaseFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SearchPurchaseFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SearchPurchaseFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SearchPurchaseFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SearchPurchaseFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel background;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JLabel txt_titel;
    // End of variables declaration//GEN-END:variables
}
