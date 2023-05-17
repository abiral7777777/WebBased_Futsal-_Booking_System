<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--<title>Sidebar Menu | Side Navigation Bar</title>-->
    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- Boxicons CSS -->
    <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet" />
</head>
<style>
    /* Google Fonts - Poppins */
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        min-height: 100%;
        background: #E9FFE8;
    }

    nav {
        position: fixed;
        top: 0;
        left: 0;
        height: 70px;
        width: 100%;
        display: flex;
        align-items: center;
        background: #33c575;
        box-shadow: 0 0 1px rgba(234, 224, 224, 0.1);
        justify-content: space-between;
    }

    nav .logo {
        display: flex;
        align-items: center;
        margin: 0 24px;
    }

    .logo .menu-icon {
        color: #333;
        font-size: 24px;
        margin-right: 14px;
        cursor: pointer;
    }

    .logo .logo-name {
        color: #333;
        font-size: 22px;
        font-weight: 500;
    }

    nav .sidebar {
        position: fixed;
        top: 0;
        left: -100%;
        height: 100%;
        width: 260px;
        padding: 20px 0;
        background-color: #fff;
        box-shadow: 0 5px 1px rgba(0, 0, 0, 0.1);
        transition: all 0.4s ease;
    }

    nav.open .sidebar {
        left: 0;
    }

    .sidebar .sidebar-content {
        display: flex;
        height: 100%;
        flex-direction: column;
        justify-content: space-between;
        padding: 30px 16px;
    }

    .sidebar-content .list {
        list-style: none;
    }

    .list .nav-link {
        display: flex;
        align-items: center;
        margin: 8px 0;
        padding: 14px 12px;
        border-radius: 8px;
        text-decoration: none;
    }

    .lists .nav-link:hover {
        background-color: #33c575;
    }

    .nav-link .icon {
        margin-right: 14px;
        font-size: 20px;
        color: #707070;
    }

    .nav-link .link {
        font-size: 16px;
        color: #707070;
        font-weight: 400;
    }

    .lists .nav-link:hover .icon,
    .lists .nav-link:hover .link {
        color: #fff;
    }

    .overlay {
        position: fixed;
        top: 0;
        left: -100%;
        height: 1000vh;
        width: 200%;
        opacity: 0;
        pointer-events: none;
        transition: all 0.4s ease;
        background: rgba(0, 0, 0, 0.3);
    }

    nav.open~.overlay {
        opacity: 1;
        left: 260px;
        pointer-events: auto;
    }
    .profile{
        margin-top: 120px;
     
    }
    
.myprofile-form {
    
  margin: auto;
  max-width: 400px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f9f9f9;
}



.myprofile-form input[type="text"],.myprofile-form input[type="email"],.myprofile-form input[type="integer"],
.myprofile-form input[type="password"] {
  width: 100%;
  padding: 5px 5px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.myprofile-form input[type="submit"] {
  background-color: #4CAF50;
  color:E9FFE8 ;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width: 100%;
  margin-top: 20px;
}

.myprofile-form input[type="submit"]:hover {
  background-color: #45a049;
}

.myprofile-form input[type="button"] {
    margin-left: 20px;
  background-color: #839a83;
  color:E9FFE8 ;
  padding: 12px ;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width: 40%;
  margin-top: 20px;
}

.myprofile-form input[type="button"]:hover {
  background-color: #45a049;
}
.myprofile-form a {
  color: #2196F3;
}

footer{
	/* position: fixed; */
margin-top: 100px;
}

.footer-distributed {
    background-color:  #33c575;
    box-shadow: 0 1px 1px 0 rgb(0 0 0 / 12%);
    box-sizing: border-box;
    width: 100%;
    text-align: left;
    font: bold 16px sans-serif;
    padding: 55px 50px;
}
 
.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}
 
.footer-distributed .footer-left{
	width: 40%;
}
 
.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}
 
.footer-distributed h3 span{
	color:  black;
}
 
 
.footer-distributed .footer-links{
	color:  black;
	margin: 0px 0 5px;
	padding: 0;
}
 
.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}
 
.footer-distributed .footer-company-name{
	color:  black;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}
 
 
.footer-distributed .footer-center{
	width: 35%;
}
 
.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: white;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}
 
.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}
 
.footer-distributed .footer-center p{
	display: inline-block;
	color: black;
	vertical-align: middle;
	margin:0;
}
 
.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}
 
.footer-distributed .footer-center p a{
	color:  black;
	text-decoration: none;
}

 
.footer-distributed .footer-right{
	width: 20%;
}
.footer-distributed .footer-bottom{
	float: left;
	width: 20%;
	
}
.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  black;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}
 
.footer-distributed .footer-company-about span{
	display: block;
	color:  black;
	font-size: 19px;
	font-weight: bold;
	margin-bottom: 20px;
}
 
.footer-distributed .footer-icons{
	margin-top: 25px;
}
 

.footer-distributed .footer-icons a {
    display: inline-block;
    width: 35px;
    height: 35px;
    cursor: pointer;
    /* background-color: #3f7b49; */
    border-radius: 2px;
    font-size: 20px;
    color: black;
    text-align: center;
    line-height: 35px;
    margin-right: 3px;
    margin-bottom: 5px;
}
	

</style>

<body>
    <nav>
       
        <div class="logo">
            <i class="bx bx-menu menu-icon"></i>
            <span class="logo-name">MeroFutsal</span>
            
        </div>
        
        <div class="sidebar">
            <div class="logo">
                <i class="bx bx-menu menu-icon"></i>
                <span class="logo-name">MeroFutsal</span>
            </div>

            <div class="sidebar-content">
                <ul class="lists">
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-home-alt icon"></i>
                            <span class="link">Dashboard</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-user icon"></i>
                            <span class="link">My Profile</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-group icon"></i>
                            <span class="link">Create Team</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-search icon"></i>
                            <span class="link">Explore</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-book icon"></i>
                            <span class="link">History</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-calendar-event icon"></i>
                            <span class="link">Events</span>
                        </a>
                    </li>



                </ul>

                <div class="bottom-cotent">
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-cog icon"></i>
                            <span class="link">Settings</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="nav-link">
                            <i class="bx bx-log-out icon"></i>
                            <span class="link">Logout</span>
                        </a>
                    </li>
                </div>
            </div>
        </div>
    </nav>

   <div class="profile">
    
        <div class="myprofile-form">
           <div class="find">
                <input type="button" value="Find player" > 
                <input type="button" value="Challange Team">
            </div>
          
                <br>
                
            
            <form action="" method="post">
              <label for="uname">Team Name:</label> 
              <input type="text" id="username" name="username" placeholder="">
              <label for="uname">Time:</label> 
              <input type="text" id="username" name="username" placeholder="">
              
              <label for="contact">Contact number:</label>
              <input type="integer" id="contact" name="contact" placeholder="">
             
              <label for="venue">Venue:</label> 
              <input type="text" id="venue" name="venue" placeholder="">
            
            

              <input type="button" value="Find Today" > 
              <input type="button" value="Tomorrow">
            
              <input type="submit" value="Explore">
          
             
            </form>
          </div>
    </div>
</div>
<footer class="footer-distributed">
    <div class="footer-left">

        <p class="footer-links" style="font-size: 1.1em;">
            <a  href="frontpage.jsp">Log In</a>
        
        <!-- <a href="balance">Contact Us</a>
        .
            <a href="deposit.jsp"> About Us</a> -->
            .
            <a href="">FAQ</a>
            .
            <a href="">CONTACT US </a>
            .
            <a href="">ABOUT US</a>
        </p>
        <p class="footer-company-name" style="font-size: 1.1em;">MeroFutsal PVT.LTD</p>
    </div>

    <div class="footer-center">
        <div>
            <i class="fa fa-map-marker"></i>
            <p style="font-size: 1.1em;"><span>Kumaripati</span> LALITPUR, NEPAL</p>
        </div>

        <div>
            <i class="fa fa-phone"></i>
            <p>9800000000</p>
        </div>

        <div>
            <i class="fa fa-envelope"></i>
            <p><a href="mailto:someone@gmail.com">infomerofutsal@gmail.com</a></p>
        </div>
    </div>
    <div class="footer-right">
        <p class="footer-company-about">
            <span>About the company</span>
            This is an online futsal booking system developed by Abiral Shrestha.
        </p>
        <!-- <div class="footer-icons">
            <p><a href="http://facebook.com"><i class="fa fa-facebook-official"></i></a>
            <a href="http://twitter.com"><i class="fa fa-twitter"></i></a>
            <a href="http://linkedin.com"><i class="fa fa-linkedin"></i></a>
            <a href="http://instagram.com"><i class="fa fa-instagram"></i></a><br>
            <p>WE ACCEPT</p>
            <a href="https://paypal.com"><i class="fa fa-cc-paypal"></i></a>
            <a href="https://visa.com"><i class="fa fa-cc-visa"></i></a>
            <a href="https://stripe.com"><i class="fa fa-cc-stripe"></i></a>
            <a href="https://jcb.com"><i class="fa fa-cc-jcb"></i></a>
            <a href="https://discover.com"><i class="fa fa-cc-discover"></i></a>
            </p>
        </div> -->
    </div>
</footer>

    <section class="overlay"></section>

    <script>
        const navBar = document.querySelector("nav"),
            menuBtns = document.querySelectorAll(".menu-icon"),
            overlay = document.querySelector(".overlay");

        menuBtns.forEach((menuBtn) => {
            menuBtn.addEventListener("click", () => {
                navBar.classList.toggle("open");
            });
        });

        overlay.addEventListener("click", () => {
            navBar.classList.remove("open");
        });
    </script>
</body>

</html>