/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Utilities.Tools;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Event;
import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.embed.swing.JFXPanel;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.util.Duration;

/**
 *
 * @author mosta
 */
public class CounterFrame extends javax.swing.JFrame {

    /**
     * Creates new form CounterFrame
     */
    
    private double casher ;
    private final MediaPlayer media;
    public CounterFrame() {
        initComponents();
        
        setBackground(new Color(0.564f, 0.960f, 0.478f, 0.5f));

        String bip = "src/Sound/money_counter.mp3";
        JFXPanel jfx = new JFXPanel();
        String uri = new File(bip).toURI().toString();
         media =  new MediaPlayer(new Media(uri));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txt_200 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_100 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        txt_50 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txt_20 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txt_10 = new javax.swing.JLabel();
        txt_5 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        txt_1 = new javax.swing.JLabel();
        jx200 = new javax.swing.JFormattedTextField();
        jx100 = new javax.swing.JFormattedTextField();
        jx50 = new javax.swing.JFormattedTextField();
        jx_20 = new javax.swing.JFormattedTextField();
        jx_10 = new javax.swing.JFormattedTextField();
        jx_5 = new javax.swing.JFormattedTextField();
        jxOne = new javax.swing.JFormattedTextField();
        txtTotal = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        setPreferredSize(new java.awt.Dimension(400, 460));
        setResizable(false);

        txt_200.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_200.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_200.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("200");
        jLabel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("100");
        jLabel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_100.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_100.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_100.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("50");
        jLabel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_50.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_50.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_50.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("20");
        jLabel7.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_20.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_20.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_20.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("10");
        jLabel9.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_10.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_10.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_10.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_5.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel12.setText("5");
        jLabel12.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel13.setText("1");
        jLabel13.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txt_1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        txt_1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txt_1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jx200.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx200.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx200.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jx100.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx100.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx100.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jx50.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx50.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx50.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jx_20.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx_20.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx_20.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jx_10.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx_10.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx_10.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jx_5.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jx_5.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jx_5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        jxOne.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        jxOne.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jxOne.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N

        txtTotal.setFont(new java.awt.Font("Times New Roman", 3, 36)); // NOI18N
        txtTotal.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txtTotal.setText("0.00");
        txtTotal.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        txtTotal.setOpaque(true);

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setText("احسب");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtTotal, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(txt_50, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_100, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_200, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_20, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_10, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_5, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_1, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 8, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel12, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel13, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jx200, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jx100, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jx50, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jx_20, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jx_10, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jx_5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jxOne, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(16, 16, 16))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx200, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_200, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(6, 6, 6)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx100, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_100, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(6, 6, 6)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx50, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_50, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(6, 6, 6)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx_20, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_20, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(6, 6, 6)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx_10, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_10, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jx_5, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_5, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jxOne, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 57, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        //media.setStartTime(Duration.seconds(2));
       // Tools.showErrorMsg(media.getStatus().name());|| media.getStatus() == MediaPlayer.Status.STOPPED
        if(media.getStatus() == MediaPlayer.Status.READY ){
            new Thread(() -> {
                media.setStartTime(Duration.seconds(2));
                media.play();
            }).start();
            
        }
        
        double f_200 = 0 , f_100 = 0 , f_50 = 0 ,f_20 = 0, f_10 =0 ,f_5=0,f_1=0;
        String one = jxOne.getText();
        if(one.isEmpty()) one = "0";
        String five = jx_5.getText();
        if(five.isEmpty()) five = "0";
        String ten = jx_10.getText();
        if(ten.isEmpty()) ten = "0";
        String twenty = jx_20.getText() ;
        if(twenty.isEmpty()) twenty ="0";
        String st50 = jx50.getText();
        if(st50.isEmpty()) st50 = "0";
        String st100 = jx100.getText();
        if(st100.isEmpty()) st100 = "0";
        String st200 = jx200.getText();
        if(st200.isEmpty()) st200 = "0";
        f_1 = Double.parseDouble(one) ;
        f_5 = Double.parseDouble(five)  * 5;
        f_10 = Double.parseDouble(ten) * 10 ;
        f_20 = Double.parseDouble(twenty) * 20 ;
        f_50 = Double.parseDouble(st50) * 50 ;
        f_100 = Double.parseDouble(st100) * 100;
        f_200 = Double.parseDouble(st200) * 200;
        
        try {
            txt_1.setText(f_1+"");
            Thread.sleep(500);
            txt_10.setText(f_10+"");
            Thread.sleep(500);
            txt_100.setText(f_100+"");
            Thread.sleep(500);
            txt_20.setText(f_20+"");
            Thread.sleep(500);
            txt_200.setText(f_200+"");
            Thread.sleep(500);
            txt_5.setText(f_5+"");
            Thread.sleep(500);
            txt_50.setText(f_50+"");
            Thread.sleep(1000);
            double balance = f_1 + f_10 + f_5 + f_20 + f_50 + f_100 + f_200;
            txtTotal.setText(""+balance);
            double disability = casher - balance;
            String msg;
            if(balance == casher){
                msg = "صحيح";
                txtTotal.setBackground(Color.GREEN);
                Tools.showInfoMsg(msg,msg);
            }else if(balance > casher){
                msg = "زيادة : " +  disability; 
                txtTotal.setBackground(Color.BLUE);
                Tools.showErrorMsg(msg);
            }else{
                msg = "عجز : " + disability ;
                txtTotal.setBackground(Color.red);
                Tools.showErrorMsg(msg);
            }
            media.stop();
               
            
        } catch (InterruptedException ex) {
            Logger.getLogger(CounterFrame.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }//GEN-LAST:event_jButton1ActionPerformed

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
            java.util.logging.Logger.getLogger(CounterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CounterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CounterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CounterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CounterFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JFormattedTextField jx100;
    private javax.swing.JFormattedTextField jx200;
    private javax.swing.JFormattedTextField jx50;
    private javax.swing.JFormattedTextField jxOne;
    private javax.swing.JFormattedTextField jx_10;
    private javax.swing.JFormattedTextField jx_20;
    private javax.swing.JFormattedTextField jx_5;
    private javax.swing.JLabel txtTotal;
    private javax.swing.JLabel txt_1;
    private javax.swing.JLabel txt_10;
    private javax.swing.JLabel txt_100;
    private javax.swing.JLabel txt_20;
    private javax.swing.JLabel txt_200;
    private javax.swing.JLabel txt_5;
    private javax.swing.JLabel txt_50;
    // End of variables declaration//GEN-END:variables

    public double getCasher() {
        return casher;
    }
    public void setCasher(double casher){
        this.casher = casher;
    }
}