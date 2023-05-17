/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DbDatabase.DBConnection;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell
 */
public class UserService {

    public void insertUser(User user) {
        String insertSql = "insert into user (Username,Email, Password)" + " Values(?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            System.out.println(preparedStatement);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteUser(int id) {
        String deleteSql = "delete from user where id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(deleteSql);

        try {
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    //EDIT USER
    public void editUser(int id, User user) throws SQLException {

        String editQuery = "update user set username=?, password=?," + "where id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(editQuery);

        preparedStatement.setString(1, user.getUsername());
        preparedStatement.setString(2, user.getEmail());
        preparedStatement.setString(3, user.getPassword());
        preparedStatement.setInt(4, id);
        preparedStatement.execute();
    }

    //LOGIN
    public User getUser(String Username, String Password) {

        User user = null;
        String query = "select * from user where username = ? and password=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setString(1, Username);
            preparedStatement.setString(2, Password);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));

                System.out.println("UserName is : " + Username + " Password is: " + Password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
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

    public void changePassword(String username, String password) {

        try {
            String editQuery = "update user set password=? where username=?;";
            PreparedStatement preparedStatement = new DBConnection().getStatement(editQuery);
            
            preparedStatement.setString(1,password);
            preparedStatement.setString(2, username);
            preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
        }
 }
}
