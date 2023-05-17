<%-- 
    Document   : About
    Created on : Apr 27, 2023, 3:35:30 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, sans-serif;
}

header {
  background-color: #333;
  color: #fff;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
}

nav a {
  color: #fff;
  text-decoration: none;
}

nav ul {
  list-style: none;
  display: flex;
}

nav li {
  margin-right: 20px;
}

nav li:last-child {
  margin-right: 0;
}

nav a:hover {
  text-decoration: underline;
}

nav li.active a {
  text-decoration: underline;
}

main {
  margin: 20px;
}

.banner {
  background-image: url("aboutus-banner.jpg");
  background-size: cover;
  background-position: center;
  height: 300px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.banner h1 {
  font-size: 48px;
  color: #fff;
  text-shadow: 2px 

        </style>
    </head>
    
    <body>

    <header>
      <nav>
        <a href="index.html"><img src="logo.png" alt="Futsal Booking Logo"></a>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="bookings.html">Bookings</a></li>
          <li class="active"><a href="aboutus.html">About Us</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <section class="banner">
        <h1>About Us</h1>
      </section>
      <section class="content">
        <div class="image">
          <img src="aboutus-image.jpg" alt="About Us Image">
        </div>
        <div class="text">
          <h2>Who We Are</h2>
          <p>Futsal Booking is a platform that aims to make it easy for people to find and book futsal courts in their area. Our mission is to promote futsal and make it accessible to everyone.</p>
          <h2>What We Offer</h2>
          <p>We work with futsal court owners to provide them with an easy-to-use booking system, and help them increase their bookings and revenue. Our platform allows users to search for available courts, compare prices, and book them online with just a few clicks.</p>
          <h2>Our Team</h2>
          <ul>
            <li>John Doe - Founder & CEO</li>
            <li>Jane Smith - Marketing Manager</li>
            <li>Mike Johnson - Technical Director</li>
            <li>Emily Brown - Customer Support</li>
          </ul>
        </div>
      </section>
    </main>
    <footer>
      <p>&copy; 2023 Futsal Booking. All rights reserved.</p>
    </footer>
  </body>
</html>

    </body>
</html>
