<html>
  <meta charset="UTF-8">
    <!--<title> Responsive Footer | CodingLab </title>-->
    <link rel="stylesheet" href="style.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

.login-form {
  margin: auto;
  max-width: 400px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f9f9f9;
}

.login-form h2 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
  Color:#4CAF50;
}

.login-form input[type="text"],
.login-form input[type="password"] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.login-form input[type="submit"] {
  background-color: #4CAF50;
  color:E9FFE8 ;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width: 100%;
  margin-top: 20px;
}

.login-form input[type="submit"]:hover {
  background-color: #45a049;
}

.login-form a {
  color: #2196F3;
}
</style>
</head>
<body>

<ul>
 
  <li><a href="landingpage.jsp">Home</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="aboutus.jsp">About us</a></li>
  <li><a class="active" href="#">Login</a></li>
</ul>

<div style="padding:180px;margin-top:0px;background-color:E9FFE8;height:1500px;">
    <div class="login-form">
        <h2>Login to MeroFutsal</h2>
        <form action="${pageContext.request.contextPath}/UserServlet?page=login" method="post">
          <label for="username">Username:</label>
          <input type="text" id="username" name="username" placeholder="Enter your username" required>
      
          <label for="password">Password:</label>
          <input type="password" id="password" name="password" placeholder="Enter your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
      
          <input type="submit" value="Login">
      
          <p>Don't have an account? <a href="register.jsp">Sign up</a></p>
          <p>Don't remember your password? <a href="../UserServlet?page=forgotPassword">Forgot password</a></p>
        </form>
      </div>
      
</div>

</body>
</html>

