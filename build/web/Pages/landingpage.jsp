<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futsal Booking System</title>
    <link rel="stylesheet" href="style.css">
    <style>
      * {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial, sans-serif;
    font-size: 16px;
    line-height: 1.5;
    background-color:#E9FFE8;
}

header {
    background-color:#E9FFE8;
   
    padding: 10px;
}

nav ul {
    margin: 0;
    padding: 0;
    list-style: none;
    text-align: right;
}

nav ul li {
    display: inline-block;
    margin-left:20px;
}

nav ul li a {
display: block;
padding: 10px;
color: #1a1717;
text-decoration: none;
}

nav ul li a:hover {
background-color:  #e1ffba;
}

.main {
max-width: 1200px;
margin: 0 auto;
padding: 20px;
}

.hero {
background-image: url(../image/backg.jpg);
background-size: cover;
background-position: center;
color: #fff;
text-align: center;
padding: 100px 0;
}

.hero h1 {
font-size: 48px;
margin-bottom: 20px;
}

.hero p {
font-size: 24px;
margin-bottom: 40px;
}

.button {
display: inline-block;
padding: 10px 20px;
background-color:#25A94A;
color: #333;
text-decoration: none;
border-radius: 4px;
font-size: 18px;
}

.button:hover {
background-color: #333;
color: #fff;
}

.features {
display: flex;
/* justify-content: space-between; */
align-items: center;
/* flex-wrap: wrap; */
margin-top: 50px;
}

.feature {
flex-basis: calc(33.33% - 20px);
background-color: #fff;
border-radius: 4px;
padding: 20px;
text-align: center;
/* margin-bottom: 20px; */
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
margin: 20px;
}

.feature img {
width: 80px;
margin-bottom: 20px;
}

.feature h2 {
font-size: 24px;
margin-bottom: 10px;
}

.feature p {
font-size: 18px;
margin-bottom: 20px;
}

.testimonials {
margin-top: 50px;
text-align: center;
display: flex;
/* justify-content: space-between; */
}

.testimonial {
background-color: #fff;
border-radius: 4px;
padding: 40px;
width: 30%;
margin-bottom: 20px;
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
margin-left: 15%;
}

.testimonial img {
width: 200px;
border-radius: 50%;
margin-bottom: 20px;
}

.testimonial p {
font-size: 18px;
margin-bottom: 20px;
}

.testimonial cite {
font-size: 16px;
font-weight: bold;
}

footer {
background-color: #44b358;
color: #fff;
text-align: center;
padding: 20px;
}
    </style>
</head>
<body>
    <header>
        <nav>
            <ul>
                  
              <li><a href="login.jsp">Login</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section class="hero">
            <strong style="color: whitesmoke;"> <h1>Futsal Booking Made Easy</h1></strong>
           
          <strong style="color: greenyellow;">   <p>Book your futsal court online today and start playing!</p> </strong>
            <a href="register.jsp" class="button">Register Now!</a>
        </section>
        <h2 style="color:#25A94A ; margin-left: 40%;">What the system provides</h2>
        <section class="features">
            <div class="feature">
                <img src="../image/book.jpg" alt="Icon 1">
                <h2>Easy to Book</h2>
                <p>Our booking system is quick and easy to use, so you can book your futsal court in no time.</p>
            </div>
            <div class="feature">
                <img src="../image/date.jpg" alt="Icon 2">
                <h2>Flexible Scheduling</h2>
                <p>With our flexible scheduling options, you can book a futsal court that fits your schedule.</p>
            </div>
            <div class="feature">
                <img src="../image/team.jpg" alt="Icon 3">
                <h2>Create Your Own Team</h2>
                <p>You can create your team with friends and challange with the other teams..</p>
            </div>
        </section>
         <h2 style="color:#25A94A ; margin-left: 40%;">What Our Customers Say</h2>
        <section class="testimonials">
            <!-- <h2>What Our Customers Say</h2> -->
            <div class="testimonial">
                <img src="../image/profile.jpg" alt="Avatar">
                <p>"I love this futsal booking system! It's so easy to use and the courts are always in great condition."</p>
                <cite>Kp Oli</cite>
            </div>
            <div class="testimonial">
                <img src="../image/profile1.jpg" alt="Avatar 2">
                <p>"I've been using this booking system for a year now and I couldn't be happier with it. Highly recommend!"</p>
                <cite>Ram Neupane</cite>
            </div>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Futsal Booking System (MeroFutsal). All rights reserved.</p>
    </footer>
</body>
</html>
