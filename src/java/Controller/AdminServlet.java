/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Admin;
import Model.Booking;
import Model.Futsal;
import Model.User;
import Programs.SaltedMD5;
import Service.AdminService;
import Service.BookingService;
import Service.FutsalService;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
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
@WebServlet(name = "AdminServlet", urlPatterns = {"/AdminServlet"})
public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("login")) {
            try {
                Admin u = new Admin();
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                String hashPassword = get_hash(password);

                Admin us = new AdminService().getAdmin(username, hashPassword);
                if (us == null) {
                    System.out.println("f");

                    RequestDispatcher d = request.getRequestDispatcher("Pages/adminlogin.jsp");
                    d.include(request, response);
                } else {

                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);

                    RequestDispatcher d = request.getRequestDispatcher("Pages/admindashboard.jsp");
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

        if (page.equalsIgnoreCase("booking")) {
            List<Booking> orders = new BookingService().getOrders();

            request.setAttribute("orders", orders);
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/bookingadmin.jsp");
            rd.forward(request, response);

        }
        
         if (page.equalsIgnoreCase("cancel")) {
             int b_id = Integer.parseInt(request.getParameter("id"));
             
             new BookingService().removeOrder(b_id);
             
            List<Booking> orders = new BookingService().getOrders();

            request.setAttribute("orders", orders);
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/bookingadmin.jsp");
            rd.forward(request, response);

        }
         
         if (page.equalsIgnoreCase("confirm")) {
             int b_id = Integer.parseInt(request.getParameter("id"));
             
             new BookingService().confirmOrder(b_id);
             
            List<Booking> orders = new BookingService().getOrders();

            request.setAttribute("orders", orders);
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/bookingadmin.jsp");
            rd.forward(request, response);

        }
        
        
         if (page.equalsIgnoreCase("add")) {
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/addfutsal.jsp");
            rd.forward(request, response);

        }

        if (page.equalsIgnoreCase("addfutsal")) {
            String name = request.getParameter("name");
            String address = request.getParameter("location");
            String image = request.getParameter("image");
            
            System.out.println(name + address + image);
            
            Futsal futsal = new Futsal();
            futsal.setName(name);
            futsal.setAddress(address);
            futsal.setPhoto(image);

            new FutsalService().insertFutsal(futsal);

            String status = "New Futsal Added Successfully";
            request.setAttribute("status", status);

            RequestDispatcher rd = request.getRequestDispatcher("/Pages/addfutsal.jsp");
            rd.forward(request, response);

        }

        //LOGOUT PROCESS
        if (page.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/adminlogin.jsp");
            rd.forward(request, response);
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
