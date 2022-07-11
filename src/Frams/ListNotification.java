/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Utilities.Tools;
import java.awt.Color;
import javax.swing.BorderFactory;

/**
 *
 * @author mosta
 */
public class ListNotification extends javax.swing.JPanel {

    /**
     * Creates new form ListNotification
     */
    private final String note;
    public ListNotification(String note) {
        initComponents();
  
        txtNote.setText(note);
       // txtNote.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, Color.BLACK).paintBorder(txtNote, txtNote.getGraphics(), 0, 0, WIDTH, HEIGHT));
        this.note = note;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txtNote = new javax.swing.JLabel();

        setBackground(new java.awt.Color(0, 102, 255));
        setForeground(new java.awt.Color(0, 102, 255));
        setOpaque(false);
        addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                formMouseClicked(evt);
            }
        });
        setLayout(null);

        txtNote.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        txtNote.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        add(txtNote);
        txtNote.setBounds(0, 0, 320, 30);
    }// </editor-fold>//GEN-END:initComponents

    private void formMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMouseClicked
        // TODO add your handling code here:
        Tools.showErrorMsg(note);
    }//GEN-LAST:event_formMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel txtNote;
    // End of variables declaration//GEN-END:variables
}