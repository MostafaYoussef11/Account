/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frams;

import Entity.goldClasses;
import Utilities.ConnectDB;
import Utilities.Tools;
import java.awt.Image;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author Mostafa Youssef 
 */
public class Imports extends javax.swing.JFrame {

    /**
     * Creates new form Imports
     */
    private goldClasses gold;
    public Imports() {
        initComponents();
        gold = new goldClasses();
    }
   
    private void SetNew(){
          
        txtPrice.getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void insertUpdate(DocumentEvent e) {
               // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                double wight , price , total;
                if(txtwight.getText().length()==0){
                    txtamount.setText("0.00");
                }
              else{
                    wight = Double.valueOf(txtwight.getText());
                    price = Double.valueOf(txtPrice.getText());
                    total = wight * price;
                    txtamount.setText(String.valueOf(total));
                }
            }

            @Override
            public void removeUpdate(DocumentEvent e) {
             //   throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                double wight , price , total;
                if(txtPrice.getText().length()==0){
                    txtamount.setText("0.00");
                }
              else{
                    wight = Double.valueOf(txtwight.getText());
                    price = Double.valueOf(txtPrice.getText());
                    total = wight * price;
                    txtamount.setText(String.valueOf(total));
                }
  
            }

            @Override
            public void changedUpdate(DocumentEvent e) {
                throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            }
        });
        // txt 
        txtPrice.setEnabled(true);
        txtWorkGroup.setEnabled(true);
        txtcaliber.setEnabled(true);
        txtdate.setEnabled(true);
        txtwight.setEnabled(true);
        txtPathFile.setText("");
        labimage.setIcon(null);
        txtId.setText(ConnectDB.LastId("imports", "id_import"));
        //pB.SetvalProgress(20);
        txtdate.setDate(new Date());
        txtPathFile.setText("");
        txtPrice.setText("");
        txtamount.setText("");
        txtcaliber.setText("");
        txtwight.setText("");
        gold.FillComboWorkGroup(txtWorkGroup);
//ConnectDB.fillCombo("workgroup WHERE isActive = 0 ", "name_workgroup", txtWorkGroup);
        //pB.SetvalProgress(50);
        txtwight.requestFocus();
        String sql = "Select workgroup.name_workgroup , imports.amount_imports , imports.price_imports , imports.caliber , imports.wight_imports , imports.date_imports , imports.id_import FROM imports INNER JOIN workgroup ON imports.id_workgroup = workgroup.id_workgroup where isRelay = 0 ORDER BY id_import DESC;";
        String[] coulmnName = new String[]{"المجموعة", "الاجمالي", "سعر الجرام", "العيار", "الوزن", "التاريخ", "رقم"};
        ConnectDB.fillAndCenterTable(sql, tableImport, coulmnName);
        //pB.SetvalProgress(70);
        //btn
        btnDImage.setEnabled(false);
        btnDelete.setEnabled(false);
        btnEdit.setEnabled(false);
        btnSave.setEnabled(true);
        btnNew.setEnabled(false);
        btnUpdate.setEnabled(false);
        btnchanage.setEnabled(false);
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFileChooser1 = new javax.swing.JFileChooser();
        jPanel1 = new javax.swing.JPanel();
        labimage = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtId = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtdate = new com.toedter.calendar.JDateChooser();
        jLabel5 = new javax.swing.JLabel();
        txtwight = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtcaliber = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtPrice = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtamount = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        txtWorkGroup = new javax.swing.JComboBox<String>();
        btnSelect = new javax.swing.JButton();
        btnchanage = new javax.swing.JButton();
        btnDImage = new javax.swing.JButton();
        jToggleButton2 = new javax.swing.JToggleButton();
        txtPathFile = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tableImport = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        btnNew = new javax.swing.JButton();
        btnSave = new javax.swing.JButton();
        btnEdit = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnDelete = new javax.swing.JButton();
        btnExit = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("فواتير الوارد");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        labimage.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("رقم الفاتورة");
        jLabel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtId.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txtId.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("التاريخ");
        jLabel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("الوزن");
        jLabel5.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtwight.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtwight.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtwightKeyPressed(evt);
            }
        });

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("العيار");
        jLabel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtcaliber.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("سعر الجرام");
        jLabel7.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtPrice.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtPrice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtPriceKeyPressed(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtPriceKeyTyped(evt);
            }
        });

        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("الاجمالي");
        jLabel8.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtamount.setEditable(false);
        txtamount.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setText("المجموعة");
        jLabel9.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        txtWorkGroup.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        btnSelect.setText("اختيار الصورة");
        btnSelect.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSelectActionPerformed(evt);
            }
        });

        btnchanage.setText("تغيير الصورة");
        btnchanage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnchanageActionPerformed(evt);
            }
        });

        btnDImage.setText("حذف الصورة");

        jToggleButton2.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\pencil (1).png")); // NOI18N
        jToggleButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButton2ActionPerformed(evt);
            }
        });

        txtPathFile.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(labimage, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txtdate, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtcaliber, javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(jToggleButton2)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtamount)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txtId, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtwight)
                                    .addComponent(txtPrice, javax.swing.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)))
                            .addComponent(txtWorkGroup, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
                            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(1, 1, 1)
                        .addComponent(btnDImage, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(34, 34, 34)
                        .addComponent(btnchanage, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(45, 45, 45)
                        .addComponent(btnSelect, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(txtPathFile, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(labimage, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtId, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtdate, javax.swing.GroupLayout.DEFAULT_SIZE, 25, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtwight, javax.swing.GroupLayout.DEFAULT_SIZE, 25, Short.MAX_VALUE)
                            .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtcaliber))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtPrice)
                            .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtamount)
                            .addComponent(jToggleButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtWorkGroup, javax.swing.GroupLayout.DEFAULT_SIZE, 25, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnSelect, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                            .addComponent(btnchanage, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                            .addComponent(btnDImage, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtPathFile, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(5, 5, 5))
        );

        tableImport.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "المجموعة", "الاجمالي", "سعر الجرام", "العيار", "الوزن", "التاريخ", "رقم"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tableImport.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tableImportMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tableImport);
        if (tableImport.getColumnModel().getColumnCount() > 0) {
            tableImport.getColumnModel().getColumn(0).setResizable(false);
            tableImport.getColumnModel().getColumn(0).setPreferredWidth(200);
            tableImport.getColumnModel().getColumn(1).setResizable(false);
            tableImport.getColumnModel().getColumn(1).setPreferredWidth(100);
            tableImport.getColumnModel().getColumn(2).setResizable(false);
            tableImport.getColumnModel().getColumn(2).setPreferredWidth(75);
            tableImport.getColumnModel().getColumn(3).setResizable(false);
            tableImport.getColumnModel().getColumn(3).setPreferredWidth(75);
            tableImport.getColumnModel().getColumn(4).setResizable(false);
            tableImport.getColumnModel().getColumn(4).setPreferredWidth(75);
            tableImport.getColumnModel().getColumn(5).setResizable(false);
            tableImport.getColumnModel().getColumn(5).setPreferredWidth(100);
            tableImport.getColumnModel().getColumn(6).setResizable(false);
            tableImport.getColumnModel().getColumn(6).setPreferredWidth(50);
        }

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        btnNew.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\dollar.png")); // NOI18N
        btnNew.setText("جديد");
        btnNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNewActionPerformed(evt);
            }
        });

        btnSave.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\diskette (1).png")); // NOI18N
        btnSave.setText("حفظ");
        btnSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSaveActionPerformed(evt);
            }
        });

        btnEdit.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\pencil.png")); // NOI18N
        btnEdit.setText("تعديل");
        btnEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditActionPerformed(evt);
            }
        });

        btnUpdate.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\exchange.png")); // NOI18N
        btnUpdate.setText("تحديث");
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        btnDelete.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\delete.png")); // NOI18N
        btnDelete.setText("حذف");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        btnExit.setIcon(new javax.swing.ImageIcon("E:\\Masrawy\\Account\\src\\Icons\\exit.png")); // NOI18N
        btnExit.setText("خروج");
        btnExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnExitActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnExit, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnEdit, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnNew, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnNew, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSave, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnEdit, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnExit, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane1)
                    .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(5, 5, 5)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(5, 5, 5))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtPriceKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPriceKeyTyped

    }//GEN-LAST:event_txtPriceKeyTyped

    
    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        SetNew();
    }//GEN-LAST:event_formWindowOpened

    private void txtwightKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtwightKeyPressed
      
    }//GEN-LAST:event_txtwightKeyPressed

    private void txtPriceKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPriceKeyPressed
     
    }//GEN-LAST:event_txtPriceKeyPressed

    private void jToggleButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButton2ActionPerformed
        if(txtamount.isEditable()){
            txtamount.setEditable(false);
         }else{
            txtamount.setEditable(true);
        }      
    }//GEN-LAST:event_jToggleButton2ActionPerformed

    private void btnExitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnExitActionPerformed
        // TODO add your handling code here:
        dispose();
    }//GEN-LAST:event_btnExitActionPerformed

    private void btnSelectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSelectActionPerformed
        JFileChooser fileChooser = new JFileChooser();
      //  //E:\xampp\htdocs\masrawyuploads
        fileChooser.setCurrentDirectory(new File("E:\\xampp\\htdocs\\masrawy\\uploads"));
  //      fileChooser.setCurrentDirectory(new File(System.getProperty("user.home")));
        FileFilter filter = new FileNameExtensionFilter(
            "Image files", ImageIO.getReaderFileSuffixes());
        fileChooser.setFileFilter(filter);
        int result = fileChooser.showOpenDialog(this);
        if (result == JFileChooser.APPROVE_OPTION) {
           File selectedFile = fileChooser.getSelectedFile(); 
           txtPathFile.setText(selectedFile.getAbsolutePath());
         //  URL imageUrl = Imports.class.getResource(selectedFile.getAbsolutePath());
            ImageIcon icon = new ImageIcon(selectedFile.getAbsolutePath());
            Image img = icon.getImage(); 
            Image newimg = img.getScaledInstance(labimage.getWidth(), labimage.getHeight(),  java.awt.Image.SCALE_SMOOTH);
            icon = new ImageIcon(newimg);
            labimage.setIcon(icon);
           
        }
        
    }//GEN-LAST:event_btnSelectActionPerformed

    private void btnNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNewActionPerformed
        // TODO add your handling code here:
        SetNew();
    }//GEN-LAST:event_btnNewActionPerformed

    private void btnSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSaveActionPerformed
       double wight = Double.parseDouble(txtwight.getText());
       int caliber = Integer.parseInt(txtcaliber.getText());
       double price = Double.parseDouble(txtPrice.getText());
       double amount = Double.parseDouble(txtamount.getText());
       String idwork = gold.getIdWorkGroup(txtWorkGroup.getSelectedItem().toString());
       int id_workGroup = Integer.parseInt(idwork);
       int id_imports = Integer.parseInt(txtId.getText());
       String pathImage = txtPathFile.getText();
       boolean isSave = gold.SaveImportGold(wight, caliber, price, amount, id_workGroup, pathImage, id_imports);
       if(isSave){
           Tools.showInfoMsg("تم الحفظ", "حفظ");
           SetNew();
       }else{
           Tools.showErrorMsg("خطأ");
       }
       
    }//GEN-LAST:event_btnSaveActionPerformed

    private void tableImportMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tableImportMouseClicked
        int row = tableImport.getSelectedRow();
        String id_imports =tableImport.getValueAt(row, 6).toString(); 
        txtId.setText(id_imports);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = format.parse(tableImport.getValueAt(row, 5).toString());
        } catch (ParseException ex) {
            Logger.getLogger(Imports.class.getName()).log(Level.SEVERE, null, ex);
        }
        txtdate.setDate(date);
        txtwight.setText(tableImport.getValueAt(row,4).toString());
        txtcaliber.setText(tableImport.getValueAt(row, 3).toString());
        txtPrice.setText(tableImport.getValueAt(row, 2).toString());
        txtamount.setText(tableImport.getValueAt(row, 1).toString());
        txtWorkGroup.setSelectedItem(tableImport.getValueAt(row,0));
        ImageIcon icon = new ImageIcon(gold.getPathImage(id_imports));
        Image img = icon.getImage(); 
        Image newimg = img.getScaledInstance(labimage.getWidth(), labimage.getHeight(),  java.awt.Image.SCALE_SMOOTH);
        icon = new ImageIcon(newimg);
        labimage.setIcon(icon);
        btnDImage.setEnabled(true);
        btnchanage.setEnabled(true);
        btnSelect.setEnabled(false);
        btnNew.setEnabled(true);
        btnSave.setEnabled(false);
        btnEdit.setEnabled(true);
        btnUpdate.setEnabled(false);
        btnDelete.setEnabled(true); 
        txtId.setEnabled(false);
        txtPathFile.setText("");
        txtPrice.setEnabled(false);
        txtWorkGroup.setEnabled(false);
        txtamount.setEnabled(false);
        txtcaliber.setEnabled(false);
        txtdate.setEnabled(false);
        txtwight.setEnabled(false);
        
    }//GEN-LAST:event_tableImportMouseClicked

    private void btnEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditActionPerformed
       
    }//GEN-LAST:event_btnEditActionPerformed

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
      
        
    }//GEN-LAST:event_btnUpdateActionPerformed

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
     
    }//GEN-LAST:event_btnDeleteActionPerformed

    private void btnchanageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnchanageActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnchanageActionPerformed

    
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
            java.util.logging.Logger.getLogger(Imports.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Imports.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Imports.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Imports.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Imports().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDImage;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnEdit;
    private javax.swing.JButton btnExit;
    private javax.swing.JButton btnNew;
    private javax.swing.JButton btnSave;
    private javax.swing.JButton btnSelect;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JButton btnchanage;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JToggleButton jToggleButton2;
    private javax.swing.JLabel labimage;
    private javax.swing.JTable tableImport;
    private javax.swing.JLabel txtId;
    private javax.swing.JLabel txtPathFile;
    private javax.swing.JTextField txtPrice;
    private javax.swing.JComboBox<String> txtWorkGroup;
    private javax.swing.JTextField txtamount;
    private javax.swing.JTextField txtcaliber;
    private com.toedter.calendar.JDateChooser txtdate;
    private javax.swing.JTextField txtwight;
    // End of variables declaration//GEN-END:variables
}
