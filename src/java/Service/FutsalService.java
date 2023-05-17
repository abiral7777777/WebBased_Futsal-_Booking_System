/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DbDatabase.DBConnection;
import Model.Futsal;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class FutsalService {

    public List<Futsal> getFutsalList() {
        List<Futsal> futsals = new ArrayList<Futsal>();
        Futsal futsal = null;
        String query = "select * from futsal;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                futsal = new Futsal();
                futsal.setF_id(rs.getInt("f_id"));
                futsal.setName(rs.getString("name"));
                futsal.setAddress(rs.getString("address"));
                futsal.setPhoto(rs.getString("photo"));
                futsals.add(futsal);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return futsals;
    }

    public Futsal getFutsalByID(int f_id) {
        Futsal futsal = null;
        String query = "select * from futsal where f_id=?;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(query);
        try {
            preparedStatement.setInt(1, f_id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                futsal = new Futsal();
                futsal.setF_id(rs.getInt("f_id"));
                futsal.setName(rs.getString("name"));
                futsal.setAddress(rs.getString("address"));
                futsal.setPhoto(rs.getString("photo"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return futsal;
    }

    public void insertFutsal(Futsal futsal) {
        String insertSql = "insert into futsal (name, address, photo) Values(?,?,?);";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            preparedStatement.setString(1, futsal.getName());
            preparedStatement.setString(2, futsal.getAddress());
            preparedStatement.setString(3, futsal.getPhoto());
            System.out.println(preparedStatement);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
