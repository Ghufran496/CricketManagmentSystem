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
import javax.swing.JOptionPane;

/**
 *
 * @author ghufr
 */
public class MatchD1 extends javax.swing.JFrame {

    /**
     * Creates new form MatchD1
     */
    public MatchD1() {
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
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        t1 = new javax.swing.JTextField();
        t2 = new javax.swing.JTextField();
        t3 = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(800, 600));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(800, 510));
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
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(18, 23, 134, 50));

        jLabel1.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 255, 204));
        jLabel1.setText("Enter Match No : ");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 280, -1, -1));

        jLabel2.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(204, 255, 204));
        jLabel2.setText("Match New Type: ");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 340, -1, -1));

        jLabel3.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(204, 255, 204));
        jLabel3.setText("Enter New Venue : ");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 400, -1, -1));
        jPanel1.add(t1, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 280, 170, -1));
        jPanel1.add(t2, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 340, 170, -1));
        jPanel1.add(t3, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 400, 170, -1));

        jButton2.setBackground(new java.awt.Color(153, 204, 0));
        jButton2.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 14)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon("G:\\Semester_5\\prj\\Apache img\\update.png")); // NOI18N
        jButton2.setText("Update");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 460, 170, 35));

        jPanel2.setBackground(new java.awt.Color(0, 102, 102));

        jLabel4.setFont(new java.awt.Font("Franklin Gothic Demi Cond", 0, 36)); // NOI18N
        jLabel4.setText("Updating Match Details");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(78, Short.MAX_VALUE)
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 356, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(56, 56, 56))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(32, Short.MAX_VALUE)
                .addComponent(jLabel4)
                .addGap(27, 27, 27))
        );

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(162, 100, -1, -1));

        jLabel5.setIcon(new javax.swing.ImageIcon("G:\\Semester_5\\Pictures\\backker.jpg")); // NOI18N
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 750, -1));

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
        admin1 f2 = new admin1();
        f2.setVisible(true);
        this.setVisible(false);
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        
        // TODO add your handling code here:
                                String Matchno = t1.getText();
                                String typem = t2.getText();
                                String veneu = t3.getText();
                                
                                
                                
if(Matchno.equals("") && typem.equals("") && veneu.equals("") )
{
        JOptionPane.showMessageDialog(null,"Cannot update Null. Please Enter valid.");
}
else if(typem.equals("") && veneu.equals("")){
    
    JOptionPane.showMessageDialog(null,"Cannot update Match type and Venue to Null.Please Enter valid.");
}
else if(typem.equals("")){
    
    try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                  
                                 
                                 String sql="UPDATE MATCH SET VENUE = '"+t3.getText()+"' WHERE M_NO='"+t1.getText()+"'";
                                     
					
	    			PreparedStatement ps=conn.prepareStatement(sql); 
	    			ResultSet rs=ps.executeQuery();
	    			if(rs.next()) {
	    				JOptionPane.showMessageDialog(null,"Match Venue Updated Successfully...");
                                       admin1 f2 = new admin1();
                                         f2.setVisible(true);
                                         this.setVisible(false);
	    			}
	    			else {
	    				JOptionPane.showMessageDialog(null,"Error in Update of Match_Venue...");
	    			}
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
    
    
}else if(veneu.equals("")){
    
    try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                  
                                 
                                 String sql="UPDATE MATCH SET matchtype = '"+t2.getText()+"' WHERE M_NO='"+t1.getText()+"'";
                                     
					
	    			PreparedStatement ps=conn.prepareStatement(sql); 
	    			ResultSet rs=ps.executeQuery();
	    			if(rs.next()) {
	    				JOptionPane.showMessageDialog(null,"Match Type Updated Successfully...");
                                       admin1 f2 = new admin1();
                                         f2.setVisible(true);
                                         this.setVisible(false);
	    			}
	    			else {
	    				JOptionPane.showMessageDialog(null,"Error in Update of Match Type...");
	    			}
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
    
    
}else{
    
     try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                  
                                 
                                 String sql="UPDATE MATCH SET matchtype = '"+t2.getText()+"' WHERE M_NO='"+t1.getText()+"'";
                                     //String sql="insert into Signinn(Admin_ID,Passwordd)  values('"+t1.getText()+"','"+t2.getText()+"')";
					
	    			PreparedStatement ps=conn.prepareStatement(sql); 
	    			ResultSet rs=ps.executeQuery();
	    			if(rs.next()) {
	    				JOptionPane.showMessageDialog(null,"Match Type and Venue Updated Successfully...");
                                       /* admin1 f2 = new admin1();
                                         f2.setVisible(true);
                                         this.setVisible(false);*/
	    			}
	    			
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
        
        try {
	    			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:gc123","system","tiger");
	    			@SuppressWarnings("deprecation")
                                  
                                 
                                 String sql="UPDATE MATCH SET VENUE = '"+t3.getText()+"' WHERE M_NO='"+t1.getText()+"'";
                                     
					
	    			PreparedStatement ps=conn.prepareStatement(sql); 
	    			ResultSet rs=ps.executeQuery();
	    			if(rs.next()) {
	    				//JOptionPane.showMessageDialog(null,"Updated Successfully...");
                                       /* admin1 f2 = new admin1();
                                         f2.setVisible(true);
                                         this.setVisible(false);*/
	    			}
	    			else {
	    				JOptionPane.showMessageDialog(null,"Error in Update of Match_Type and Venue...");
	    			}
	    		}catch (SQLException ex) {System.out.println(ex);
	    	}
}
        


       
        
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
            java.util.logging.Logger.getLogger(MatchD1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MatchD1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MatchD1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MatchD1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MatchD1().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTextField t1;
    private javax.swing.JTextField t2;
    private javax.swing.JTextField t3;
    // End of variables declaration//GEN-END:variables
}
