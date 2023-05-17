/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DbDatabase.DBConnection;
import Model.Booking;
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
public class BookingService {

    public void placeOrder(Booking booking) {
        String insertSql = "insert into booking (futsal,address, time, customer)" + " Values(?,?,?,?)";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            preparedStatement.setString(1, booking.getFutsal());
            preparedStatement.setString(2, booking.getAddress());
            preparedStatement.setString(3, booking.getTime());
            preparedStatement.setString(4, booking.getCustomer());
            System.out.println(preparedStatement);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<Booking> getOrders() {
        List<Booking> orders = new ArrayList<Booking>();
        Booking book = null;
        String insertSql = "select * from booking;";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()){
                book = new Booking();
                book.setB_id(rs.getInt("b_id"));
                book.setFutsal(rs.getString("futsal"));
                book.setAddress(rs.getString("address"));
                book.setTime(rs.getString("time"));
                book.setCustomer(rs.getString("customer"));
                orders.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
        
    }

    public void removeOrder(int b_id) {
         String insertSql = "delete from booking where b_id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            preparedStatement.setInt(1, b_id);
            System.out.println(preparedStatement);
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void confirmOrder(int b_id) {
 String insertSql = "update booking set status = '1' where b_id=?";
        PreparedStatement preparedStatement = new DBConnection().getStatement(insertSql);

        try {
            preparedStatement.setInt(1, b_id);
            System.out.println(preparedStatement);
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }    }
}
