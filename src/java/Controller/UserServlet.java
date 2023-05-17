/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DbDatabase.DBConnection;
import Model.Booking;
import Model.Futsal;
import Model.User;
import Programs.SaltedMD5;
import Service.BookingService;
import Service.FutsalService;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");
        if (page.equalsIgnoreCase("newUser")) {
            try {
                User u = new User();
                u.setUsername(request.getParameter("username"));
                u.setEmail(request.getParameter("email"));
                u.setPassword(get_hash(request.getParameter("password")));
                System.out.println(request.getParameter("username"));
                new UserService().insertUser(u);
                RequestDispatcher d = request.getRequestDispatcher("Pages/login.jsp");
                d.include(request, response);
            } catch (NoSuchAlgorithmException | NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        if (page.equalsIgnoreCase("login")) {
            try {
                User u = new User();
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                String hashPassword = get_hash(password);

                User us = new UserService().getUser(username, hashPassword);
                if (us == null) {
                    System.out.println("f");

                    RequestDispatcher d = request.getRequestDispatcher("Pages/register.jsp");
                    d.include(request, response);
                } else {

                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);

                    List<Futsal> futsals = new FutsalService().getFutsalList();
                    request.setAttribute("futsals", futsals);

                    RequestDispatcher d = request.getRequestDispatcher("Pages/home.jsp");
                    d.forward(request, response);
                }
            } catch (NoSuchAlgorithmException | NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        //FORGOT PASSWORD PROCESS
        if (page.equalsIgnoreCase("forgotPassword")) {

            RequestDispatcher d = request.getRequestDispatcher("Pages/forgotpassword.jsp");
            d.forward(request, response);
        }

        if (page.equalsIgnoreCase("CheckUsername")) {
            String username = request.getParameter("username");
            boolean status = new UserService().isUserExist(username);

            if (!status) {
                String statusMessage = "No user Found";

                request.setAttribute("statusMessage", statusMessage);

                RequestDispatcher rd = request.getRequestDispatcher("/Pages/forgotpassword.jsp");
                rd.forward(request, response);
            }

            request.setAttribute("username", username);

            RequestDispatcher rd = request.getRequestDispatcher("/Pages/resetpassword.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("resetPassword")) {
            try {
                String username = request.getParameter("name");
                String password = request.getParameter("Confirmpassword");

                String hashPassword = get_hash(password);

                new UserService().changePassword(username, hashPassword);

                RequestDispatcher rd = request.getRequestDispatcher("/Pages/login.jsp");
                rd.forward(request, response);
            } catch (NoSuchAlgorithmException | NoSuchProviderException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        //Booking process
        if (page.equalsIgnoreCase("book")) {
            int f_id = Integer.parseInt(request.getParameter("f_id"));

            Futsal futsal = new FutsalService().getFutsalByID(f_id);
            request.setAttribute("futsal", futsal);

            RequestDispatcher rd = request.getRequestDispatcher("/Pages/confirm.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("placeorder")) {
            String futsal = request.getParameter("name");
            String address = request.getParameter("location");
            String time = request.getParameter("time");
            HttpSession session = request.getSession();

            Booking booking = new Booking();
            booking.setTime(time);
            booking.setAddress(address);
            booking.setCustomer((String) session.getAttribute("username"));
            booking.setFutsal(futsal);

            new BookingService().placeOrder(booking);

            List<Futsal> futsals = new FutsalService().getFutsalList();
            request.setAttribute("futsals", futsals);

            RequestDispatcher rd = request.getRequestDispatcher("/Pages/home.jsp");
            rd.forward(request, response);
        }

        //LOGOUT PROCESS
        if (page.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/login.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("profile")) {

            RequestDispatcher d = request.getRequestDispatcher("Pages/myprofile.jsp");
            d.forward(request, response);
        }
        if (page.equalsIgnoreCase("explore")) {

            RequestDispatcher d = request.getRequestDispatcher("Pages/explore.jsp");
            d.forward(request, response);
        }
         if (page.equalsIgnoreCase("home")) {

            RequestDispatcher d = request.getRequestDispatcher("Pages/home.jsp");
            d.forward(request, response);
        }
        if (page.equalsIgnoreCase("notify")) {
            HttpSession session = request.getSession(false);

            try {
                String statement = "Select * from booking where customer ='" + (String) session.getAttribute("username") + "' limit 1";
                PreparedStatement ps = new DBConnection().getStatement(statement);
                ResultSet rs = ps.executeQuery();
                Booking booking = new Booking();
                System.out.println(ps);
                while (rs.next()) {
                    booking.setFutsal(rs.getString("futsal"));
                    booking.setAddress(rs.getString("address"));
                    booking.setTime(rs.getString("time"));
                    booking.setCustomer(rs.getString("customer"));

                    request.setAttribute("notification", booking);
                }
                RequestDispatcher d = request.getRequestDispatcher("Pages/notification.jsp");
                d.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    // Hash Password function
    private static String get_hash(String password) throws NoSuchAlgorithmException, NoSuchProviderException {
        String hash = new SaltedMD5().getHash(password);
        return hash;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
