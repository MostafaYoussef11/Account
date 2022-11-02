/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Utilities.Tools;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Image;
import java.awt.Toolkit;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JLabel;

/**
 *
 * @author mosta
 */
public class menuCashFrame extends javax.swing.JFrame {

    /**
     * Creates new form menuCashFrame
     */
    Dimension dim = new Dimension(600, 500);
    Font font = Tools.font(16f);
    public menuCashFrame() {
        initComponents();
        setSize(dim);
        addSim.setFont(font);
        Send.setFont(font);
        cridetAtm.setFont(font);
        Receive.setFont(font);
        charging.setFont(font);
        cridetAtm.setFont(font);
        debit_atm.setFont(font);
        toPos.setFont(font);
        background.setLocation(0, 0);
        background.setSize(dim);
        background.setPreferredSize(dim);
        ImageIcon bg = new ImageIcon(new ImageIcon(Toolkit.getDefaultToolkit().getClass().getResource("/icons/wave_1.png")).getImage().getScaledInstance(dim.width, dim.height, Image.SCALE_DEFAULT));
        background.setIcon(bg);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        addSim = new javax.swing.JLabel();
        Send = new javax.swing.JLabel();
        Receive = new javax.swing.JLabel();
        cridetAtm = new javax.swing.JLabel();
        charging = new javax.swing.JLabel();
        debit_atm = new javax.swing.JLabel();
        toPos = new javax.swing.JLabel();
        background = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        getContentPane().setLayout(null);

        addSim.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        addSim.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/sim-card.png"))); // NOI18N
        addSim.setText("اضافة خط");
        addSim.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        addSim.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        addSim.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        addSim.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                addSimMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                addSimMouseExited(evt);
            }
        });
        getContentPane().add(addSim);
        addSim.setBounds(400, 20, 180, 130);

        Send.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Send.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/online-banking.png"))); // NOI18N
        Send.setText(" ارسال");
        Send.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        Send.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        Send.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        Send.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                SendMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                SendMouseExited(evt);
            }
        });
        getContentPane().add(Send);
        Send.setBounds(210, 170, 180, 130);

        Receive.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        Receive.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/wallet_1.png"))); // NOI18N
        Receive.setText("استقبال");
        Receive.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        Receive.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        Receive.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        Receive.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ReceiveMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                ReceiveMouseExited(evt);
            }
        });
        getContentPane().add(Receive);
        Receive.setBounds(400, 170, 180, 130);

        cridetAtm.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        cridetAtm.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/atm.png"))); // NOI18N
        cridetAtm.setText("سحب من - ATM");
        cridetAtm.setToolTipText("");
        cridetAtm.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        cridetAtm.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        cridetAtm.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        cridetAtm.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                cridetAtmMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                cridetAtmMouseExited(evt);
            }
        });
        getContentPane().add(cridetAtm);
        cridetAtm.setBounds(20, 170, 180, 130);

        charging.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        charging.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/wallet_mob_1.png"))); // NOI18N
        charging.setText("ايداع");
        charging.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        charging.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        charging.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        charging.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                chargingMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                chargingMouseExited(evt);
            }
        });
        getContentPane().add(charging);
        charging.setBounds(210, 20, 180, 130);

        debit_atm.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        debit_atm.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/atm.png"))); // NOI18N
        debit_atm.setText("ايداع من - ATM");
        debit_atm.setToolTipText("");
        debit_atm.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        debit_atm.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        debit_atm.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        debit_atm.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                debit_atmMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                debit_atmMouseExited(evt);
            }
        });
        getContentPane().add(debit_atm);
        debit_atm.setBounds(400, 320, 180, 130);

        toPos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        toPos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/pos2.png"))); // NOI18N
        toPos.setText("سحب");
        toPos.setToolTipText("");
        toPos.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        toPos.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        toPos.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        toPos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                toPosMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                toPosMouseExited(evt);
            }
        });
        getContentPane().add(toPos);
        toPos.setBounds(20, 20, 180, 130);
        getContentPane().add(background);
        background.setBounds(0, 0, 0, 0);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void addSimMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_addSimMouseClicked
        // TODO add your handling code here:
        clickPanel(addSim);
        VFCashFrame vf = new VFCashFrame();
        Tools.openJFram(vf);
//        dispose();
    }//GEN-LAST:event_addSimMouseClicked

    private void addSimMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_addSimMouseExited
        // TODO add your handling code here:
        exitPanel(addSim);
    }//GEN-LAST:event_addSimMouseExited

    private void SendMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_SendMouseClicked
        // TODO add your handling code here:
       // clickPanel(receive);
        clickPanel(Send);
        SendCashFrame sent = new SendCashFrame();
        Tools.openJFram(sent, "ارسال كاش");
        
    }//GEN-LAST:event_SendMouseClicked

    private void SendMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_SendMouseExited
        // TODO add your handling code here:
        exitPanel(Send);
    }//GEN-LAST:event_SendMouseExited

    private void ReceiveMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ReceiveMouseClicked
        // TODO add your handling code here:
        clickPanel(Receive);
        RecieveFrame recieve = new RecieveFrame();
        Tools.openJFram(recieve, "استقبال أموال");
    }//GEN-LAST:event_ReceiveMouseClicked

    private void ReceiveMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ReceiveMouseExited
        // TODO add your handling code here:
        exitPanel(Receive);
    }//GEN-LAST:event_ReceiveMouseExited

    private void cridetAtmMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_cridetAtmMouseClicked
        // TODO add your handling code here:
          clickPanel(cridetAtm);
          WithdrawATMFrame wAtm = new WithdrawATMFrame();
          Tools.openJFram(wAtm, "سحب من ال ATM");
//        chargingWalletFrame chwallet = new chargingWalletFrame();
//        Tools.openJFram(chwallet, "ايداع - سحب ");
    }//GEN-LAST:event_cridetAtmMouseClicked

    private void cridetAtmMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_cridetAtmMouseExited
        // TODO add your handling code here:
        exitPanel(cridetAtm);
    }//GEN-LAST:event_cridetAtmMouseExited

    private void chargingMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_chargingMouseClicked
            clickPanel(charging);
        chargingWalletFrame chwallet = new chargingWalletFrame(1);
        Tools.openJFram(chwallet, "شحن محفظة"); 
       
    }//GEN-LAST:event_chargingMouseClicked

    private void chargingMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_chargingMouseExited
        // TODO add your handling code here:
        exitPanel(charging);
    }//GEN-LAST:event_chargingMouseExited

    private void debit_atmMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_debit_atmMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_debit_atmMouseClicked

    private void debit_atmMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_debit_atmMouseExited
        // TODO add your handling code here:
    }//GEN-LAST:event_debit_atmMouseExited

    private void toPosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_toPosMouseClicked
        // TODO add your handling code here:
        clickPanel(toPos);
        withdrawWalletFrame withd = new withdrawWalletFrame(1);
        Tools.openJFram(withd, "سحب من محفظة");
    }//GEN-LAST:event_toPosMouseClicked

    private void toPosMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_toPosMouseExited
        // TODO add your handling code here:
        exitPanel(toPos);
    }//GEN-LAST:event_toPosMouseExited

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
            java.util.logging.Logger.getLogger(menuCashFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(menuCashFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(menuCashFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(menuCashFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new menuCashFrame().setVisible(true);
            }
        });
    }
    private void clickPanel(JLabel lable){
        lable.setBorder(BorderFactory.createLoweredBevelBorder());
    }
    private void exitPanel(JLabel lable){
        lable.setBorder(BorderFactory.createRaisedSoftBevelBorder());
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Receive;
    private javax.swing.JLabel Send;
    private javax.swing.JLabel addSim;
    private javax.swing.JLabel background;
    private javax.swing.JLabel charging;
    private javax.swing.JLabel cridetAtm;
    private javax.swing.JLabel debit_atm;
    private javax.swing.JLabel toPos;
    // End of variables declaration//GEN-END:variables
}
