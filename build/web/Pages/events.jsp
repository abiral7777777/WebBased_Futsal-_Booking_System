
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
        z-index: 1;
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
        width: 200px;
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
        width: 10%;
        opacity: 0;
        pointer-events: none;
        transition: all 0.4s ease;
        background: rgba(0, 0, 0, 0.3);
    }

    nav.open~.overlay {
        opacity: 1;
        left: 20px;
        pointer-events: auto;
    }

    .box {
        position: absolute;
        width: 380px;
        height: 55px;
        left: 528px;
        top: 100px;
        background-color: #E9FFE8;

    }

    .box input[type="text"] {
        width: 100%;
        padding: 12px 0px;
        margin: 0px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .box-1 {
        position: absolute;
        width: 790px;
        height: 70px;
        left: 180px;
        top: 175px;
        margin-left: 145px;
        background-color: #E9FFE8;
    }

    .box-1 input[type="text"],
    .box-1 input[type="date"],
    .box-1 input[type="time"] {
        width: 20%;
        padding: 12px 0px;
        margin: 0px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .column {
        float: left;
        width: 33.33%;
        padding: 5px;
    }

    /* Clearfix (clear floats) */
    .row::after {
        content: "";
        clear: both;
        display: table;
    }

    .image {
        width: 100%;
        height: 350px;
        background-image: url("image/aboutus.jpg");
    }

    

.container {
  padding: 1em;
  margin: 2em;
  display: flex;
  margin-top: 16rem;

  justify-content: center;
  flex-wrap: wrap;
}

.block {
  width: 20em;
  margin: 0.5em;
  padding: 1em;
  border-radius: 0.5em;
  background-color: #fff;
}

img {
  width: 100%;
  border-radius: 0.5em;
}

.title {
  font-size: 1.5em;
}

.location {
  font-size: 1em;
  color: #898989;
}

.read {
  font-size: 1em;
  color: #0fb736;
  margin-top: 1em;
  cursor: pointer;
}

.read:hover {
  color: #225cff;
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
                        <a href="home.jsp" class="nav-link">
                            <i class="bx bx-home-alt icon"></i>
                            <span class="link">Dashboard</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="myprofile.jsp" class="nav-link">
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
                        <a href="explore.jsp" class="nav-link">
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
                        <a href="events.jsp" class="nav-link">
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
    <div class="container">
        <div class="block">
          <img src="image/backg.jpg" alt="">
          <h1 class="title">Imadol Futsal</h1>
          <h2 class="location">Imadol, Lalitpur</h2>
          <h2 class="read" >Book Now</h2>
         
        </div>
        <div class="block">
              <img src="image/futsal.jpg" alt="">
          <h1 class="title">Kathmandu Futsal</h1>
          <h2 class="location">Baneshwor, Kathmandu</h2>
          <h2 class="read">Book Now</h2>
        </div>
        <div class="block">
              <img src="image/futsal-1.jpg" alt="">
          <h1 class="title">Lalitpur Futsal</h1>
          <h2 class="location">Imadol, Lalitpur</h2>
          <h2 class="read">Book Now</h2>
        </div>
        <div class="block">
          <img src="image/backg.jpg" alt="">
          <h1 class="title">Imadol Futsal</h1>
          <h2 class="location">Imadol, Lalitpur</h2>
          <h2 class="read" >Book Now</h2>
         
        </div>
        <div class="block">
              <img src="image/futsal.jpg" alt="">
          <h1 class="title">Kathmandu Futsal</h1>
          <h2 class="location">Baneshwor, Kathmandu</h2>
          <h2 class="read">Book Now</h2>
        </div>
        <div class="block">
              <img src="image/futsal-1.jpg" alt="">
          <h1 class="title">Lalitpur Futsal</h1>
          <h2 class="location">Imadol, Lalitpur</h2>
          <h2 class="read">Book Now</h2>
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

    <div class="box">



        <input type="text" id="searchbox" name="searchbox" placeholder="Search here">

    </div>

    

    <!-- <div class="row">
        <div class="column" style="">
            <div class="image"></div>
            <img src="image/aboutus.jpg" alt="Snow" style="width: 350px; height: 500px;">
        </div>
        <div class="column">
            <img src="image/aboutus.jpg" alt="Forest" style="width:100%">
        </div>
        <div class="column">
            <img src="image/book.jpg" alt="Mountains" style="width:100%">
        </div>
    </div> -->






</body>

</html>