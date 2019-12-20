/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author BRAYAN LIPE
 */
public class Conexion {
         
         private String username = "root";
         private String password = "volcanrojo87";
         private String hostname = "localhost";
         private String port= "3306";
         private String database = "aprire_database";
         private String classname = "com.mysql.cj.jdbc.Driver";
         private String url = "jdbc:mysql://"+hostname+":"+port+"/"+database+"?serverTimezone=UTC";
         private Connection conn;

    
          public Conexion() {
   
                    try {
                              Class.forName(classname);
   
                              this.conn = DriverManager.getConnection(url, username, password);

                    }
                    catch (ClassNotFoundException | SQLException e)
                    {
                              System.err.println(e.getMessage());
                    }
          }
    
          public Connection getConnection(){
                    return this.conn;
          }
    
}
