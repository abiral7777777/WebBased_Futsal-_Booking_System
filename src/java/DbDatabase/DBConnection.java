/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DbDatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Dell
 */
public class DBConnection {

    Connection con = null;

//    public DBConnection() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/futsal", "root", "");
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//    }
     public DBConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String dbUrl = "jdbc:mysql://localhost:3306/futsal";
            String name = "root";
            String password = "";
            this.con = DriverManager.getConnection(dbUrl, name, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public PreparedStatement getStatement(String query) {
        PreparedStatement preparedStatement = null;

        try {
            preparedStatement = con.prepareStatement(query);
            System.out.println(preparedStatement);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;
    }
    
     public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
    }
}
