<%-- 
    Document   : navbar
    Created on : Oct 2, 2017, 12:27:44 PM
    Author     : tylershelter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/m1.css">
        <link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/cart.css">
        <style>
             body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-image: url(../img/4.jpg);
      background-attachment: fixed;
      background-size: cover;
      opacity: 0.8;
      width: 100%;
      height: 30%;
  }

  .bg-2 { 
      background-image: url(../img/3.jpeg); /* Dark Blue */
      background-attachment: fixed;
      opacity: 0.9;
      background-size: cover;
      width: 100%;
      height: 30%;
      
  }
  .bg-4 { 
      background-image: url(../img/6.jpg); /* White */
      color: white;
      opacity: 0.9;
      background-attachment: fixed;
      background-size: cover;
      width: 100%;
      height: 30%;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 45px;
      letter-spacing: 5px;
      text-align: center;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
     
  }
        </style>
    </head>
    <body>
                        <!-- Navbar -->
        <nav class="navbar navbar-default">
          <div class="container">
            
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="index.jsp">SHOP</a></li>
                <li><a href="showcart.jsp">Giỏ hàng</a></li>
                <li><a href="login.jsp">Đăng nhập</a></li>
              </ul>
            </div>
          </div>
        </nav>
    </body>
</html>
