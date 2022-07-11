/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Entity.Send_receiveCash;
import Entity.VFCashClass;
import Utilities.Tools;
import java.awt.Dimension;
import java.awt.Window;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import javax.swing.JLabel;
import javax.swing.plaf.basic.BasicComboPopup;

/**
 *
 * @author mosta
 */
public class FastCashSendPanel extends javax.swing.JPanel {

    /**
     * Creates new form FastCashSendPanel
     */
    Dimension dim = new Dimension(475, 125);
    VFCashClass vf;
    double balanceWallet;
    public FastCashSendPanel() {
        initComponents();
        setSize(dim);
        Tools.setBackground(background, dim, "bg4.jpg");
        vf = new VFCashClass();
        vf.fillCombo(comVFNumber);
       String numberVf = comVFNumber.getSelectedItem().toString();
       String stBalance1 = vf.getNowBalanceWalletFromTable(numberVf);
       balanceWallet = Double.parseDouble(stBalance1);
        comVFNumber.setToolTipText("الرصيد الحالي للمحفظة : " + stBalance1);
        comVFNumber.addActionListener((ActionEvent e) -> {
           String numberVf1 = comVFNumber.getSelectedItem().toString();
           String stBalance = vf.getNowBalanceWalletFromTable(numberVf1);
           balanceWallet = Double.parseDouble(stBalance);
            comVFNumber.setToolTipText("الرصيد الحالي للمحفظة : " + stBalance);
        });
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        comVFNumber = new javax.swing.JComboBox<>();
        txtNumberClient = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        txtValue = new javax.swing.JTextField();
        txtAmount = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        txtDiscount = new javax.swing.JTextField();
        background = new javax.swing.JLabel();

        setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        setLayout(null);

        comVFNumber.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        add(comVFNumber);
        comVFNumber.setBounds(227, 14, 224, 30);

        txtNumberClient.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtNumberClient.setToolTipText("رقم العميل");
        txtNumberClient.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtNumberClientKeyTyped(evt);
            }
        });
        add(txtNumberClient);
        txtNumberClient.setBounds(13, 14, 190, 30);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/previous.png"))); // NOI18N
        add(jLabel1);
        jLabel1.setBounds(207, 50, 16, 30);

        txtValue.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        txtValue.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtValue.setText("0.00");
        txtValue.setToolTipText("قيمة التحويل");
        txtValue.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtValueKeyReleased(evt);
            }
        });
        add(txtValue);
        txtValue.setBounds(227, 50, 224, 30);

        txtAmount.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        txtAmount.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtAmount.setText("0.00");
        txtAmount.setToolTipText("المبلغ المدفوع");
        add(txtAmount);
        txtAmount.setBounds(13, 50, 190, 30);

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setText("تحويل");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        add(jButton1);
        jButton1.setBounds(13, 86, 190, 31);

        txtDiscount.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtDiscount.setText("0.00");
        txtDiscount.setToolTipText("القيمة التي يتم خصمها من المحفظة");
        add(txtDiscount);
        txtDiscount.setBounds(227, 86, 224, 31);
        add(background);
        background.setBounds(0, 0, 0, 0);
    }// </editor-fold>//GEN-END:initComponents

    private void txtNumberClientKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNumberClientKeyTyped
        // TODO add your handling code here:
        
    }//GEN-LAST:event_txtNumberClientKeyTyped

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
        double value = Double.parseDouble(txtDiscount.getText());
        double amount = Double.parseDouble(txtAmount.getText());
        String Number_client = txtNumberClient.getText();
        String NmberVF = comVFNumber.getSelectedItem().toString();
        if(balanceWallet < value){
            Tools.showErrorMsg("رصيد المحفظة غير كافي للتحويل");
        }else{
            Send_receiveCash send = new Send_receiveCash();
            send.SetDataSend(value, amount, NmberVF,Number_client, "عميل نقدي");
            if(send.SaveSendTransaction()){
                txtAmount.setText("0.00");
                txtDiscount.setText("0.00");
                txtNumberClient.setText("");
                txtValue.setText("0.00");
            }        
        
        }

    }//GEN-LAST:event_jButton1ActionPerformed

    private void txtValueKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtValueKeyReleased
        // TODO add your handling code here:
        double value = Double.parseDouble(txtValue.getText());
        double cost = 0;
        String NumberClient = txtNumberClient.getText();
        String ClientNetwork = NumberClient.substring(0, 3);
        String NumberVF = comVFNumber.getSelectedItem().toString();
        String Network = NumberVF.substring(0, 3);
        if(ClientNetwork.equals(Network)){
            cost = 1;
        }else{
            cost = value * 0.005;
            if(cost > 10){
                cost = 10;
            }
        }
        //txt_cost.setText(cost+"");
        double discount_from_balance = value + cost;
        txtDiscount.setText(discount_from_balance+"");
       double amount = discount_from_balance + (discount_from_balance*0.010);
        DecimalFormat format = new DecimalFormat("0");
        String st_amount = format.format(amount);
        txtAmount.setText(st_amount);
    }//GEN-LAST:event_txtValueKeyReleased


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel background;
    private javax.swing.JComboBox<String> comVFNumber;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JTextField txtAmount;
    private javax.swing.JTextField txtDiscount;
    private javax.swing.JTextField txtNumberClient;
    private javax.swing.JTextField txtValue;
    // End of variables declaration//GEN-END:variables
}