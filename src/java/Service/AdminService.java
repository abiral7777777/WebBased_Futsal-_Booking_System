/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DbDatabase.DBConnection;
import Model.Admin;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Dell
 */
public class AdminService {
     public Admin getAdmin(String Username, String Password) {

        Admin admin = null;
        String query = "select * from admin where username = ? and password=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, Username);
            preparedStatement.setString(2, Password);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                admin = new Admin();
                admin.setUsername(resultSet.getString("username"));
                admin.setPassword(resultSet.getString("password"));

                System.out.println("UserName is : " + Username + " Password is: " + Password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }
     
    public boolean isUserExist(String username) {
        String query = "select * from user where username = ?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return true;
            }
        } catch (SQLException e) {

            return false;
        }
        return false;
    }

}
