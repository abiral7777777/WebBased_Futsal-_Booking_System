<html>
<head>
<style>
body {margin:0;}


ul {
  list-style-type: none;
  margin: 0;
  padding: 5;
  overflow: hidden;
  position: fixed;
  top: 0;
  width: 100%;
}

li {
  float: right;
}

li a {
  display: block;
  color: rgb(11, 8, 8);
  text-align: center;
  padding: 14px 50px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #e1ffba;
}

.active {
  background-color:1BCC4D;
}

img {
  border-radius: 25px;
  width: 100%;
   height:600px;
 
}
main {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
}

section {
	margin-bottom: 20px;
}

h1 {
	font-size: 36px;
	margin-bottom: 20px;
}

p {
	line-height: 1.5;
	margin-bottom: 10px;
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

<ul>
         <li><a href="contact.jsp">Contact Us</a></li>
 <li><a href="login.jsp">Login</a></li>
 <li><a href="landingpage.jsp">Home</a></li>
         <li><a class="active" href="#">About Us</a></li>
</ul>

<div style="padding:180px;margin-top:0px;background-color:E9FFE8;height:1500px;">
    <h1>About Us</h1>
 <div class="aboutus"> <img  src="../image/aboutus.jpg" alt=""  >
  
</div> 
     <main>
		<section>
			
			<p>We are a Futsal Booking System dedicated to making it easy for you to find and book futsal courts in your area.</p>
			<p>Our platform allows you to quickly and easily search for available courts, compare prices, and make a reservation with just a few clicks.</p>
			<p>Whether you're a seasoned player or just starting out, our system makes it easy to find the perfect court for your needs.</p>
		</section>
	</main> 
  </div>  
    
 
 <footer>
        <p>&copy; 2023 Futsal Booking System (MeroFutsal). All rights reserved.</p>
    </footer>
</body>
</html>


