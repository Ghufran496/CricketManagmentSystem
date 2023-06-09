/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.cricketms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ghufr
 */
public class TeamNames1 extends javax.swing.JFrame {

    /**
     * Creates new form TeamNames1
     */
    public TeamNames1() {
        initComponents();
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
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jButton3 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(0, 153, 51));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton1.setBackground(new java.awt.Color(153, 153, 153));
        jButton1.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 14)); // NOI18N
        jButton1.setIcon(new javax.swing.ImageIcon("G:\\Semester_5\\prj\\Apache img\\go back.png")); // NOI18N
        jButton1.setText("Go Back");
        jButton1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 51, 204), 2, true));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 134, 50));

        jButton2.setBackground(new java.awt.Color(0, 51, 51));
        jButton2.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 14)); // NOI18N
        jButton2.setForeground(new java.awt.Color(204, 51, 255));
        jButton2.setText("Show All Team Info");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, 180, 50));

        jTable1.setFont(new java.awt.Font("Franklin Gothic Demi", 0, 14)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Team", "Owner", "Price", "Province", "Media Partner", "Captain", "Coach", "Team level"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 350, 770, 200));

        jLabel2.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 2, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 0, 0));
        jLabel2.setText("Home/Menu/Team Information");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(480, 290, -1, -1));

        jLabel3.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 36)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 0, 204));
        jLabel3.setText("Team Informations");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(480, 300, -1, -1));

        jButton3.setBackground(new java.awt.Color(0, 51, 51));
        jButton3.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 14)); // NOI18N
        jButton3.setForeground(new java.awt.Color(204, 51, 205));
        jButton3.setText("View TeamManager Details");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 300, 180, 40));

        jLabel1.setIcon(new javax.swing.ImageIcon("G:\\Semester_5\\Pictures\\resize-1673680701748357109teamsInfo.jpg")); // NOI18N
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 760, 350));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        login f2 = new login();
        f2.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        
        try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                      
                                       Statement st = conn.createStatement();
                                
	    			String sql="select * from Team_v";
                                ResultSet rs=st.executeQuery(sql);
					
	    			
	    			while(rs.next()) {
	    				String team = String.valueOf(rs.getString("TEAMName"));
                                        String Owner = String.valueOf(rs.getString("OWNERName"));
                                        String price = String.valueOf(rs.getInt("Amount"));
                                        String Province = String.valueOf(rs.getString("TeamPROVIENCE"));
                                        String mp = String.valueOf(rs.getString("PlayerMEDIA_PARTNER"));
                                        String CAP = String.valueOf(rs.getString("TeamCAPTAIN"));
                                        String COA = String.valueOf(rs.getString("TeamCOACH"));
                                        String TeamL = String.valueOf(rs.getString("OverallTeamLevel"));
                                        
                                        
                                        String tbData[]= {team,Owner,price,Province,mp,CAP,COA,TeamL};
                                        DefaultTableModel tb1Model = (DefaultTableModel) jTable1.getModel();
                                        
                                        tb1Model.addRow(tbData);
	    			}
	    			
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
        
        /*
        try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                      
                                       Statement st = conn.createStatement();
                                
	    			String sql="select * from team";
                                ResultSet rs=st.executeQuery(sql);
					
	    			
	    			while(rs.next()) {
	    				String team = String.valueOf(rs.getString("TEAM"));
                                        String Owner = String.valueOf(rs.getString("OWNER"));
                                        String price = String.valueOf(rs.getInt("PRICE"));
                                        String Province = String.valueOf(rs.getString("PROVIENCE"));
                                        String mp = String.valueOf(rs.getString("MEDIA_PARTNER"));
                                        String CAP = String.valueOf(rs.getString("CAPTAIN"));
                                        String COA = String.valueOf(rs.getString("COACH"));
                                        String TeamL = String.valueOf(rs.getString("TEAMLEVEL"));
                                        
                                        
                                        String tbData[]= {team,Owner,price,Province,mp,CAP,COA,TeamL};
                                        DefaultTableModel tb1Model = (DefaultTableModel) jTable1.getModel();
                                        
                                        tb1Model.addRow(tbData);
	    			}
	    			
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
        */
        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
         Teammanagers f2 = new Teammanagers();
        f2.setVisible(true);
        
        this.setVisible(false);
    }//GEN-LAST:event_jButton3ActionPerformed

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
            java.util.logging.Logger.getLogger(TeamNames1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TeamNames1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TeamNames1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TeamNames1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TeamNames1().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
}
