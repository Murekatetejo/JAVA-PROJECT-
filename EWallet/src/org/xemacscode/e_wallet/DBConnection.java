/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.xemacscode.e_wallet;
import java.sql.*;

/**
 *
 * @author MAX
 */
public class DBConnection {
   ///we need to set connection first
    
    static final String DB_URL = "jdbc:mysql://localhost/e_wallet";
    static final String USER = "root";
    static final String PASS = "";
    public static Connection connectDB(){
         Connection conn = null;
    try{
//        register jdbc driver , not required for newer versions of jdk
         Class.forName("com.mysql.jdbc.Driver");
//         open a connection 
          conn = DriverManager.getConnection(DB_URL,USER,PASS);
         return conn;
       }catch(Exception ex){
       System.out.println("There were errors while conncection to db.");
       return null;
       }
    }
}
 