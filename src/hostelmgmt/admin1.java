package hostelmgmt;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class admin1 extends javax.swing.JFrame {

    /**
     * Creates new form admin1
     */

    static String id="";
    public admin1(String loginid) {
        initComponents();
        id = loginid;
        DefaultTableModel model=(DefaultTableModel) stf.getModel();
        try{
            Class.forName("java.sql.Driver");
            String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
            String user = "root";
            String password = "root";
            Connection conn1 = DriverManager.getConnection(url1, user, password);
            Statement stmt=conn1.createStatement();
            String query="Select * from staff where id=\"" + id + "\"" + ";";
            ResultSet result=stmt.executeQuery(query);
            while(result.next())
            {
                String sid = result.getString("id");
                String fname = result.getString("firstname");
                String lname = result.getString("lastname");
                String block = result.getString("blockallotted");
                String tin = result.getString("timein");
                String tout = result.getString("timeout");
                model.addRow(new Object[] {sid,fname,lname,block,tin,tout});
                //System.out.printf("%s - %s - %s - %s - %s",sid,fname,lname,block,tin,tout);           
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"error");
        }

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        vbd = new javax.swing.JButton();
        jTextField2 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        abd = new javax.swing.JButton();
        vmd = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        stf = new javax.swing.JTable();
        jLabel4 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        sd = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        stud = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        blk = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        ms = new javax.swing.JTable();
        jTextField3 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Admin Portal");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowActivated(java.awt.event.WindowEvent evt) {
                formWindowActivated(evt);
            }
        });

        vbd.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        vbd.setText("VIEW BLOCK DETAILS");
        vbd.addContainerListener(new java.awt.event.ContainerAdapter() {
            public void componentAdded(java.awt.event.ContainerEvent evt) {
                vbdComponentAdded(evt);
            }
        });
        vbd.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                vbdMouseEntered(evt);
            }
        });
        vbd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                vbdActionPerformed(evt);
            }
        });

        jTextField2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel2.setText("ENTER BLOCK CODE");

        abd.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        abd.setText("ALL BLOCK DETAILS");
        abd.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                abdMouseEntered(evt);
            }
        });
        abd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                abdActionPerformed(evt);
            }
        });

        vmd.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        vmd.setText("VIEW MESS DETAILS");
        vmd.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                vmdMouseEntered(evt);
            }
        });
        vmd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                vmdActionPerformed(evt);
            }
        });

        stf.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "FIRSTNAME", "LAST NAME", "BLOCK", "TIME IN", "TIME OUT"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane3.setViewportView(stf);

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel4.setText("MY DETAILS");

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel1.setText("STUDENTS IN ROOM NO");

        jTextField1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        sd.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        sd.setText("FIND STUDENTS");
        sd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sdActionPerformed(evt);
            }
        });

        stud.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "FIRST NAME", "MIDDLE NAME", "LAST NAME", "DOB", "BRANCH", "SEX", "BLOCK", "ROOM", "MESS", "PHONE", "CGPA", "ROOM TYPE"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(stud);

        blk.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "NAME", "CODE", "6 AC", "6 NONAC", "4 AC", "4 NONAC", "2 AC", "2 NONAC", "1 AC", "1 NON AC", "WARDEN"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane4.setViewportView(blk);

        ms.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "TYPE", "CATERER", "FEES"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane2.setViewportView(ms);

        jTextField3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("ENTER MESS ID");

        jButton1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton1.setText("ALL MESS DETAILS");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel5.setText("BLOCK");

        jTextField4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N

        jButton2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jButton2.setText("CHANGE PASSWORD");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 784, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(126, 126, 126)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(vmd)
                                    .addComponent(jLabel3))
                                .addGap(40, 40, 40)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 239, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(11, 11, 11)
                                .addComponent(jLabel4))
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 516, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(158, 158, 158)
                                .addComponent(jButton2))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(93, 93, 93)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(vbd)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(abd))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel5)
                                .addGap(18, 18, 18)
                                .addComponent(jTextField4, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(sd)
                                .addGap(529, 529, 529))
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 1037, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(146, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(26, 26, 26)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(14, 14, 14)
                        .addComponent(jButton2)
                        .addGap(77, 77, 77))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(sd)
                            .addComponent(jLabel1)
                            .addComponent(jLabel5)
                            .addComponent(jTextField4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(29, 29, 29)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(23, 23, 23)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(abd)
                            .addComponent(vbd))
                        .addGap(48, 48, 48)
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 226, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(41, 41, 41)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addGap(9, 9, 9)
                                .addComponent(vmd))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(9, 9, 9)
                                .addComponent(jButton1)))
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 95, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(53, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowActivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowActivated
        // TODO add your handling code here:      
    }//GEN-LAST:event_formWindowActivated

    private void sdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sdActionPerformed
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) stud.getModel();
        String roomno=jTextField1.getText();
        model.setRowCount(0);
        String blockallotted = jTextField4.getText();
        try{
                    Class.forName("java.sql.Driver");

            
            String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
            String user = "root";
            String password = "root";
            Connection conn1 = DriverManager.getConnection(url1, user, password);
            Statement stmt=conn1.createStatement();
        String query="Select * from student where blockalloted=\"" + blockallotted + "\" and roomAlloted = \"" + roomno + "\";";
        ResultSet result=stmt.executeQuery(query);
        
        while(result.next())
        {
            String first = result.getString("FirstName");
            String middle = result.getString("MiddleName");
            String last = result.getString("LastName");
            String DOB = result.getString("DOB");
            String branch = result.getString("Branch");
            String Sex = result.getString("Sex");
            String mess = result.getString("MessAlloted");
            String phone = result.getString("PhoneNumber");
            float cgpa = result.getFloat("CGPA");
            String rtype = result.getString("RoomType");
            model.addRow (new Object[] {first,middle,last,DOB,branch,Sex,blockallotted,roomno,mess,phone,cgpa,rtype});
        }
        
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"error");
        }
    
        
       



        
    }//GEN-LAST:event_sdActionPerformed

    private void vmdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_vmdActionPerformed
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) ms.getModel();
        model.setRowCount(0);
        String mess=jTextField3.getText();
        try{
                Class.forName("java.sql.Driver");
                String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
                String user = "root";
                String password = "root";
                Connection conn1 = DriverManager.getConnection(url1, user, password);
                Statement stmt=conn1.createStatement();
                String query="Select * from mess where MessID=\"" + mess + "\"" + ";";
                ResultSet result=stmt.executeQuery(query);
                while(result.next())
                {
                    String mid = result.getString("MessID");
                    String caterer = result.getString("CatererName");
                    String type = result.getString("MessType");
                    String fee = result.getString("Fees");
                    model.addRow (new Object[] {mid,caterer,type,fee});
                }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(null,"error");
            }
    }//GEN-LAST:event_vmdActionPerformed

    private void vbdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_vbdActionPerformed
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) blk.getModel();
        model.setRowCount(0);
        String cd=jTextField2.getText();
        if(!cd.equals("")){
        try{
                Class.forName("java.sql.Driver");
                String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
                String user = "root";
                String password = "root";
                Connection conn1 = DriverManager.getConnection(url1, user, password);
                Statement stmt=conn1.createStatement();
                String query="Select * from block where BCode=\"" + cd + "\"" + ";";
                ResultSet result=stmt.executeQuery(query);

                while(result.next())
                {
                    String name = result.getString("Bname");
                    String code = result.getString("BCode");
                    String ac6 = result.getString("Beds6AC");
                    String nac6 = result.getString("Beds6NAC");
                    String ac4 = result.getString("Beds4AC");
                    String nac4 = result.getString("Beds4NAC");
                    String ac2 = result.getString("Beds2AC");
                    String nac2 = result.getString("Beds2NAC");
                    String ac1= result.getString("Beds1AC");
                    String nac1 = result.getString("Beds1NAC");
                    Statement statement  = conn1.createStatement();
                    String sqlquery = " select firstname,lastname,blockallotted from staff s, block b where b.bcode= s.blockallotted and b.bcode=\"" + cd + "\";";
                    ResultSet resultset1 = statement.executeQuery(sqlquery);
                    String fullname = "";
                    while(resultset1.next())
                    {
                        String fname = resultset1.getString("firstname");
                        String lname = resultset1.getString("lastname");
                        fullname = fname + " " + lname;
                    }
                    model.addRow (new Object[] {name,code,ac6,nac6,ac4,nac4,ac2,nac2,ac1,nac1,fullname});

                }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(null,"error");
            }
        }
        else
            JOptionPane.showMessageDialog(null,"Enter a block code to view it's details!");
    }//GEN-LAST:event_vbdActionPerformed

    private void abdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_abdActionPerformed
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) blk.getModel();
        model.setRowCount(0);
        try{
                    Class.forName("java.sql.Driver");

            
            String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
            String user = "root";
            String password = "root";
            Connection conn1 = DriverManager.getConnection(url1, user, password);
            Statement stmt=conn1.createStatement();
            String query="Select * from block;";
            ResultSet result=stmt.executeQuery(query);

            while(result.next())
            {
               String name = result.getString("Bname");
                        String code = result.getString("BCode");
                        String ac6 = result.getString("Beds6AC");
                        String nac6 = result.getString("Beds6NAC");
                        String ac4 = result.getString("Beds4AC");
                        String nac4 = result.getString("Beds4NAC");
                        String ac2 = result.getString("Beds2AC");
                        String nac2 = result.getString("Beds2NAC");
                        String ac1= result.getString("Beds1AC");
                        String nac1 = result.getString("Beds1NAC");
                        model.addRow (new Object[] {name,code,ac6,nac6,ac4,nac4,ac2,nac2,ac1,nac1});
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,"error");
        }
        

    }//GEN-LAST:event_abdActionPerformed

    private void vbdComponentAdded(java.awt.event.ContainerEvent evt) {//GEN-FIRST:event_vbdComponentAdded
        // TODO add your handling code here:
        
    }//GEN-LAST:event_vbdComponentAdded

    private void vmdMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_vmdMouseEntered
        // TODO add your handling code here:
    }//GEN-LAST:event_vmdMouseEntered

    private void vbdMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_vbdMouseEntered
        // TODO add your handling code here
    }//GEN-LAST:event_vbdMouseEntered

    private void abdMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_abdMouseEntered
        // TODO add your handling code here:
    }//GEN-LAST:event_abdMouseEntered

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) ms.getModel();
        model.setRowCount(0);
        String mess=jTextField3.getText();
        try{
                Class.forName("java.sql.Driver");
                String url1 = "jdbc:mysql://localhost:3306/hostel_management_system";
                String user = "root";
                String password = "root";
                Connection conn1 = DriverManager.getConnection(url1, user, password);
                Statement stmt=conn1.createStatement();
                String query="Select * from mess;";
                ResultSet result=stmt.executeQuery(query);
                while(result.next())
                {
                    String mid = result.getString("MessID");
                    String caterer = result.getString("CatererName");
                    String type = result.getString("MessType");
                    String fee = result.getString("Fees");
                    model.addRow (new Object[] {mid,caterer,type,fee});
                }
            }
            catch(Exception e)
            {
                JOptionPane.showMessageDialog(null,"error");
            }
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

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
            java.util.logging.Logger.getLogger(admin1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(admin1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(admin1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(admin1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new admin1(id).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton abd;
    private javax.swing.JTable blk;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTable ms;
    private javax.swing.JButton sd;
    private javax.swing.JTable stf;
    private javax.swing.JTable stud;
    private javax.swing.JButton vbd;
    private javax.swing.JButton vmd;
    // End of variables declaration//GEN-END:variables
}
