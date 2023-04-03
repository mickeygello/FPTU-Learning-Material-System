/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
             Class.forName("com.mysql.cj.jdbc.Driver");
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:mysql://localhost:3306/swp";
            
            String username = "root";
            String password = "123456";
            
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public static void main(String[] args) {
        DBContext d = new DBContext();
        System.out.println(d.connection);
    }
}




//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
///**
// *
// * @author TUF GAMING
// */
//public class DBContext {
//    protected Connection connection;
//    public DBContext(){
//        try{
//            String user = "sa";
//            String pass = "sa";
//            String url = "jdbc:sqlserver://localhost:1433;databaseName=SWP_G4_ITER1";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        }catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//}
