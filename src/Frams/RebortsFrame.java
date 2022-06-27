/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Utilities.Tools;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Image;
import java.awt.Toolkit;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.border.Border;

/**
 *
 * @author mosta
 */
public class RebortsFrame extends javax.swing.JFrame {

    /**
     * Creates new form RebortsFrame
     */
    final Font font = Tools.font(24f);
    public RebortsFrame() {
        initComponents();
        setSize(725, 530);
        background.setSize(725, 530);
        background.setLocation(0, 0);
        ImageIcon bg = new ImageIcon(new ImageIcon(Toolkit.getDefaultToolkit().getClass().getResource("/icons/bg_reports.jpg")).getImage().getScaledInstance(725, 530, Image.SCALE_DEFAULT));
        background.setIcon(bg);
        btn_report_all_client.setFont(font);
        btn_report_one_items.setFont(font);
        btn_report_all_supllires.setFont(font);
        btn_report_casher_day.setFont(font);
        btn_report_one_client.setFont(font);
        btn_report_one_suplier.setFont(font);
        btn_report_all_items.setFont(font);
        btn_report_casher.setFont(font);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_report_all_client = new javax.swing.JLabel();
        btn_report_one_client = new javax.swing.JLabel();
        btn_report_all_supllires = new javax.swing.JLabel();
        btn_report_one_suplier = new javax.swing.JLabel();
        btn_report_one_items = new javax.swing.JLabel();
        btn_report_casher_day = new javax.swing.JLabel();
        btn_report_all_items = new javax.swing.JLabel();
        btn_report_casher = new javax.swing.JLabel();
        background = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        getContentPane().setLayout(null);

        btn_report_all_client.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_all_client.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_all_client.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_1.png"))); // NOI18N
        btn_report_all_client.setText("تقرير العملاء");
        btn_report_all_client.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_all_client.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_all_client.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseMoved(java.awt.event.MouseEvent evt) {
                btn_report_all_clientMouseMoved(evt);
            }
        });
        btn_report_all_client.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_all_clientMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_report_all_clientMouseExited(evt);
            }
        });
        getContentPane().add(btn_report_all_client);
        btn_report_all_client.setBounds(370, 40, 300, 100);

        btn_report_one_client.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_one_client.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_one_client.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_2.png"))); // NOI18N
        btn_report_one_client.setText("تقرير عن عميل");
        btn_report_one_client.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_one_client.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_one_client.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_one_clientMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_report_one_clientMouseExited(evt);
            }
        });
        getContentPane().add(btn_report_one_client);
        btn_report_one_client.setBounds(50, 40, 300, 100);

        btn_report_all_supllires.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_all_supllires.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_all_supllires.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_3.png"))); // NOI18N
        btn_report_all_supllires.setText("تقرير الموردين");
        btn_report_all_supllires.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_all_supllires.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_all_supllires.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_all_suplliresMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_report_all_suplliresMouseExited(evt);
            }
        });
        getContentPane().add(btn_report_all_supllires);
        btn_report_all_supllires.setBounds(370, 150, 300, 100);

        btn_report_one_suplier.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_one_suplier.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_one_suplier.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_4.png"))); // NOI18N
        btn_report_one_suplier.setText("تقرير عن مورد");
        btn_report_one_suplier.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_one_suplier.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_one_suplier.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_one_suplierMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_report_one_suplierMouseExited(evt);
            }
        });
        getContentPane().add(btn_report_one_suplier);
        btn_report_one_suplier.setBounds(50, 150, 300, 100);

        btn_report_one_items.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_one_items.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_one_items.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_2.png"))); // NOI18N
        btn_report_one_items.setText("تقرير عن صنف");
        btn_report_one_items.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_one_items.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_one_items.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_one_itemsMouseClicked(evt);
            }
        });
        getContentPane().add(btn_report_one_items);
        btn_report_one_items.setBounds(50, 260, 300, 100);

        btn_report_casher_day.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_casher_day.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_casher_day.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_5.png"))); // NOI18N
        btn_report_casher_day.setText("تقرير اليوم");
        btn_report_casher_day.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_casher_day.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_casher_day.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_casher_dayMouseClicked(evt);
            }
        });
        getContentPane().add(btn_report_casher_day);
        btn_report_casher_day.setBounds(50, 380, 300, 100);

        btn_report_all_items.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_all_items.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_all_items.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_2.png"))); // NOI18N
        btn_report_all_items.setText("تقرير الاصناف");
        btn_report_all_items.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_all_items.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_all_items.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_all_itemsMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_report_all_itemsMouseExited(evt);
            }
        });
        getContentPane().add(btn_report_all_items);
        btn_report_all_items.setBounds(370, 260, 300, 100);

        btn_report_casher.setForeground(new java.awt.Color(0, 51, 153));
        btn_report_casher.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btn_report_casher.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/report_5.png"))); // NOI18N
        btn_report_casher.setText("تقرير الخزينة");
        btn_report_casher.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btn_report_casher.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btn_report_casher.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btn_report_casherMouseClicked(evt);
            }
        });
        getContentPane().add(btn_report_casher);
        btn_report_casher.setBounds(370, 380, 300, 100);
        getContentPane().add(background);
        background.setBounds(0, 0, 0, 0);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_report_all_clientMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_clientMouseClicked
        // TODO add your handling code here:
        btn_report_all_client.setBorder(BorderFactory.createLoweredBevelBorder());
        InputStream strem = getClass().getResourceAsStream("/Reborts/AllClientReport.jrxml");
        String sql = "SELECT client.id_client , c.name_client , client.firstBalance ,sum(c.Debit) as Debit , sum(c.Creditor) as Creditor FROM debitandcreditorclient c "
                + "INNER JOIN client on c.id_client = client.id_client where client.isActive = 1 GROUP by c.name_client";
        Tools.Printer(sql, strem, null);
    }//GEN-LAST:event_btn_report_all_clientMouseClicked

    private void btn_report_one_clientMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_one_clientMouseClicked
        // TODO add your handling code here:
        btn_report_one_client.setBorder(BorderFactory.createLoweredBevelBorder());
        chooseClient choose = new chooseClient();
        Tools.openJFram(choose);
    }//GEN-LAST:event_btn_report_one_clientMouseClicked

    private void btn_report_all_suplliresMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_suplliresMouseClicked
        // TODO add your handling code here:
        btn_report_all_supllires.setBorder(BorderFactory.createLoweredBevelBorder());
        String sql = "";
        InputStream stream ;
        HashMap para = new HashMap();
        sql = "SELECT sup.id_Suppliers id, SUM(sup.Debit) debit , SUM(sup.Creditor) creditor , sup.name_Suppliers , s.firstBalance FROM debitandcreditorsupplier sup"
            + " INNER JOIN suppliers s ON sup.id_Suppliers = s.id_Suppliers";
        stream = getClass().getResourceAsStream("/Reborts/AllSuppliersReport.jrxml");///Reborts/AllClientReport.jrxml
        Tools.Printer(sql, stream, para);
    
    }//GEN-LAST:event_btn_report_all_suplliresMouseClicked

    private void btn_report_one_suplierMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_one_suplierMouseClicked
        // TODO add your handling code here:
        btn_report_one_suplier.setBorder(BorderFactory.createLoweredBevelBorder());
        chooseSuppliers ch = new chooseSuppliers();
        Tools.openJFram(ch);
    }//GEN-LAST:event_btn_report_one_suplierMouseClicked

    private void btn_report_one_suplierMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_one_suplierMouseExited
        // TODO add your handling code here:
        btn_report_one_suplier.setBorder(BorderFactory.createRaisedBevelBorder());
    }//GEN-LAST:event_btn_report_one_suplierMouseExited

    private void btn_report_all_clientMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_clientMouseExited
        // TODO add your handling code here:
        btn_report_all_client.setBorder(BorderFactory.createRaisedBevelBorder());
    }//GEN-LAST:event_btn_report_all_clientMouseExited

    private void btn_report_one_clientMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_one_clientMouseExited
        // TODO add your handling code here:
        btn_report_one_client.setBorder(BorderFactory.createRaisedBevelBorder());
    }//GEN-LAST:event_btn_report_one_clientMouseExited

    private void btn_report_all_suplliresMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_suplliresMouseExited
        // TODO add your handling code here:
        btn_report_all_supllires.setBorder(BorderFactory.createRaisedBevelBorder());
    }//GEN-LAST:event_btn_report_all_suplliresMouseExited

    private void btn_report_all_itemsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_itemsMouseClicked
        // TODO add your handling code here:
        btn_report_all_items.setBorder(BorderFactory.createLoweredBevelBorder());
        String sql = "SELECT * FROM `calcbalanceitems`";
        InputStream stream = getClass().getResourceAsStream("/Reborts/itemReport.jrxml");
        Tools.Printer(sql, stream, null);
    }//GEN-LAST:event_btn_report_all_itemsMouseClicked

    private void btn_report_all_itemsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_itemsMouseExited
        // TODO add your handling code here:
        btn_report_all_items.setBorder(BorderFactory.createRaisedBevelBorder());
        
    }//GEN-LAST:event_btn_report_all_itemsMouseExited

    private void btn_report_all_clientMouseMoved(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_all_clientMouseMoved
        // TODO add your handling code here:
       

    }//GEN-LAST:event_btn_report_all_clientMouseMoved

    private void btn_report_one_itemsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_one_itemsMouseClicked
        // TODO add your handling code here:
        chooseitems item = new chooseitems();
        Tools.openJFram(item);
    }//GEN-LAST:event_btn_report_one_itemsMouseClicked

    private void btn_report_casherMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_casherMouseClicked
        // TODO add your handling code here:
        String sql = "SELECT * FROM `casher`";
        InputStream stream = getClass().getResourceAsStream("/Reborts/CasherReport.jrxml");
        Tools.Printer(sql, stream, null);
        
    }//GEN-LAST:event_btn_report_casherMouseClicked

    private void btn_report_casher_dayMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_report_casher_dayMouseClicked
        // TODO add your handling code here:
        String sql = " SELECT * FROM `casher` where date_casher = $P{date_day}";
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date_cahser = sdf.format(new Date());
        InputStream streem = getClass().getResourceAsStream("/Reborts/CasherReport_day.jrxml");
        HashMap para = new HashMap();
        System.out.println(date_cahser);
        para.put("date_day", date_cahser);
        Tools.Printer(sql, streem, para);
    }//GEN-LAST:event_btn_report_casher_dayMouseClicked

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
            java.util.logging.Logger.getLogger(RebortsFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RebortsFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RebortsFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RebortsFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RebortsFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel background;
    private javax.swing.JLabel btn_report_all_client;
    private javax.swing.JLabel btn_report_all_items;
    private javax.swing.JLabel btn_report_all_supllires;
    private javax.swing.JLabel btn_report_casher;
    private javax.swing.JLabel btn_report_casher_day;
    private javax.swing.JLabel btn_report_one_client;
    private javax.swing.JLabel btn_report_one_items;
    private javax.swing.JLabel btn_report_one_suplier;
    // End of variables declaration//GEN-END:variables
}