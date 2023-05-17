<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
            margin-top: 100px;

        }
        .myprofile-form {

            margin: auto;
            max-width: 400px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .myprofile-form h2 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
            Color:#4CAF50;
        }

        .myprofile-form input[type="text"],.myprofile-form input[type="email"],.myprofile-form input[type="integer"],
        .myprofile-form input[type="password"] {
            width: 100%;
            padding: 10px 10px;
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

        .myprofile-form a {
            color: #2196F3;
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

                        <li class="list">
                            <a href="UserServlet?page=notify" class="nav-link">
                                <i class="bx bx-bell icon"></i>
                                <span class="link">Notification</span>
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
                            <a href="UserServlet?page=logout" class="nav-link">
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
                <h2>Confirm Booking</h2>
                <form action="UserServlet?page=placeOrder" method="post">
                    <label for="fname">Futsal name:</label>
                    <input type="text" id="fname" name="name" placeholder="${futsal.name}" value="${futsal.name}">
                    <label for="location">Location:</label>
                    <input type="text" id="location" name="location" placeholder="${futsal.address}" value="${futsal.address}">
                    <label for="time">Time:</label>
                    <input type="time" id="time" name="time" placeholder="" required><br>
                    <input type="radio" id="confirm" name="confirm" value="confirm" required>
                      <label for="confirm">Cash at venue</label><br>

                    <input type="submit" value="Book">


                </form>
            </div>
        </div>
    </div>


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



</form>
</div>
</div>


</body>

</html>
