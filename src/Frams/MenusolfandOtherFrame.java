/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Utilities.Tools;
import com.sun.org.apache.bcel.internal.generic.AALOAD;
import java.awt.Dimension;

/**
 *
 * @author mosta
 */
public class MenusolfandOtherFrame extends javax.swing.JFrame {

    /**
     * Creates new form MenusolfandOtherFrame
     *///570, 467
    Dimension dim = new Dimension(600, 470);
    public MenusolfandOtherFrame() {
        initComponents();
        setSize(dim);
        Tools.setBackground(background, dim, "2116.jpg");
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        solfa_new_btn = new javax.swing.JButton();
        solfa_delay_btn = new javax.swing.JButton();
        solfa_pay_btn = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        care_new_btn = new javax.swing.JButton();
        care_filter_btn = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        loan_new_btn = new javax.swing.JButton();
        loan_pay_btn = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        association_new_btn = new javax.swing.JButton();
        association_pay_btn = new javax.swing.JButton();
        jPanel5 = new javax.swing.JPanel();
        newBank_btn = new javax.swing.JButton();
        association_pay_btn1 = new javax.swing.JButton();
        association_pay_btn2 = new javax.swing.JButton();
        background = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setOpacity(1.0f);
        setResizable(false);
        setSize(new java.awt.Dimension(570, 315));
        getContentPane().setLayout(null);

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "سلف", javax.swing.border.TitledBorder.RIGHT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12))); // NOI18N
        jPanel1.setOpaque(false);

        solfa_new_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        solfa_new_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/borrow.png"))); // NOI18N
        solfa_new_btn.setText("سلفة جديدة");
        solfa_new_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solfa_new_btnActionPerformed(evt);
            }
        });

        solfa_delay_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        solfa_delay_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/payday.png"))); // NOI18N
        solfa_delay_btn.setText("تأجيل");

        solfa_pay_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        solfa_pay_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/income.png"))); // NOI18N
        solfa_pay_btn.setText("سداد");
        solfa_pay_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                solfa_pay_btnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(solfa_new_btn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(solfa_delay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(solfa_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(solfa_new_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solfa_delay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(solfa_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        getContentPane().add(jPanel1);
        jPanel1.setBounds(328, 11, 232, 165);

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "عهد", javax.swing.border.TitledBorder.RIGHT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12))); // NOI18N
        jPanel2.setOpaque(false);

        care_new_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        care_new_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/loan2.png"))); // NOI18N
        care_new_btn.setText("عهدة جديدة");
        care_new_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                care_new_btnActionPerformed(evt);
            }
        });

        care_filter_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        care_filter_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/loan (5).png"))); // NOI18N
        care_filter_btn.setText("تصفية");
        care_filter_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                care_filter_btnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(care_new_btn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(care_filter_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(care_new_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(care_filter_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel2);
        jPanel2.setBounds(328, 182, 232, 125);

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "قروض", javax.swing.border.TitledBorder.RIGHT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12))); // NOI18N
        jPanel3.setOpaque(false);

        loan_new_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        loan_new_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/loan1.png"))); // NOI18N
        loan_new_btn.setText("جديد");
        loan_new_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                loan_new_btnActionPerformed(evt);
            }
        });

        loan_pay_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        loan_pay_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/loan_pay.png"))); // NOI18N
        loan_pay_btn.setText("سداد");
        loan_pay_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                loan_pay_btnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(loan_new_btn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(loan_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(loan_new_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(loan_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        getContentPane().add(jPanel3);
        jPanel3.setBounds(10, 11, 232, 122);

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "جمعيات", javax.swing.border.TitledBorder.RIGHT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12))); // NOI18N
        jPanel4.setOpaque(false);

        association_new_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        association_new_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/team.png"))); // NOI18N
        association_new_btn.setText("جديدة");

        association_pay_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        association_pay_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/borrow (1).png"))); // NOI18N
        association_pay_btn.setText("سداد");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(association_new_btn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(association_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(association_new_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(association_pay_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        getContentPane().add(jPanel4);
        jPanel4.setBounds(330, 310, 230, 125);

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "بنوك", javax.swing.border.TitledBorder.RIGHT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Tahoma", 1, 12))); // NOI18N
        jPanel5.setOpaque(false);

        newBank_btn.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        newBank_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/team.png"))); // NOI18N
        newBank_btn.setText("حساب بنكي");
        newBank_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                newBank_btnActionPerformed(evt);
            }
        });

        association_pay_btn1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        association_pay_btn1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/borrow (1).png"))); // NOI18N
        association_pay_btn1.setText("ايداع");
        association_pay_btn1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                association_pay_btn1ActionPerformed(evt);
            }
        });

        association_pay_btn2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        association_pay_btn2.setForeground(new java.awt.Color(255, 0, 0));
        association_pay_btn2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/borrow (1).png"))); // NOI18N
        association_pay_btn2.setText("سحب");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(newBank_btn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(association_pay_btn1, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(association_pay_btn2, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(newBank_btn, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(association_pay_btn1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(association_pay_btn2, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        getContentPane().add(jPanel5);
        jPanel5.setBounds(10, 140, 232, 170);
        getContentPane().add(background);
        background.setBounds(0, 0, 0, 0);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void solfa_new_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solfa_new_btnActionPerformed
        // TODO add your handling code here:
        SolfaFrame solfa = new SolfaFrame();
        Tools.openJFram(solfa, "سلفة جديدة", "payment");
    }//GEN-LAST:event_solfa_new_btnActionPerformed

    private void solfa_pay_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_solfa_pay_btnActionPerformed
        // TODO add your handling code here:
        paydebtFrame p = new paydebtFrame();
        Tools.openJFram(p);
    }//GEN-LAST:event_solfa_pay_btnActionPerformed

    private void care_new_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_care_new_btnActionPerformed
        // TODO add your handling code here:
        OhdaFrame o = new OhdaFrame();
        Tools.openJFram(o, "عهد");
    }//GEN-LAST:event_care_new_btnActionPerformed

    private void loan_new_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_loan_new_btnActionPerformed
        // TODO add your handling code here:
        LoansFrame lf = new LoansFrame();
        Tools.openJFram(lf);
    }//GEN-LAST:event_loan_new_btnActionPerformed

    private void loan_pay_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_loan_pay_btnActionPerformed
        // TODO add your handling code here:
        InstallmentPayFrame ipf = new InstallmentPayFrame();
        Tools.openJFram(ipf);
    }//GEN-LAST:event_loan_pay_btnActionPerformed

    private void care_filter_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_care_filter_btnActionPerformed
        // TODO add your handling code here:
        FilterOhdaFrame fof = new FilterOhdaFrame();
        Tools.openJFram(fof);
    }//GEN-LAST:event_care_filter_btnActionPerformed

    private void newBank_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_newBank_btnActionPerformed
        // TODO add your handling code here:
        BankAcount bank = new BankAcount();
        Tools.openJFram(bank);
    }//GEN-LAST:event_newBank_btnActionPerformed

    private void association_pay_btn1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_association_pay_btn1ActionPerformed
        // TODO add your handling code here:
        BankTransactionFrame bankDebit = new BankTransactionFrame();
        Tools.openJFram(bankDebit);
    }//GEN-LAST:event_association_pay_btn1ActionPerformed

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
            java.util.logging.Logger.getLogger(MenusolfandOtherFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MenusolfandOtherFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MenusolfandOtherFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MenusolfandOtherFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MenusolfandOtherFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton association_new_btn;
    private javax.swing.JButton association_pay_btn;
    private javax.swing.JButton association_pay_btn1;
    private javax.swing.JButton association_pay_btn2;
    private javax.swing.JLabel background;
    private javax.swing.JButton care_filter_btn;
    private javax.swing.JButton care_new_btn;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JButton loan_new_btn;
    private javax.swing.JButton loan_pay_btn;
    private javax.swing.JButton newBank_btn;
    private javax.swing.JButton solfa_delay_btn;
    private javax.swing.JButton solfa_new_btn;
    private javax.swing.JButton solfa_pay_btn;
    // End of variables declaration//GEN-END:variables
}
