<%-- 
    Document   : search
    Created on : Oct 2, 2017, 7:17:33 PM
    Author     : tylershelter
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
            #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
    }
 
    #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }
    
    body{
        background-image: url(img/header.jpg);
        background-size: cover;
    }
    </style>
        </head>
    <body>
<!--            <form action="ControllerCartBean">
                <label>Name</label><br>
                <input type="text" name="txtSearch" value="" class="txtf"/><br/>
                <input type="submit" value="Search" name="action" class="btn"/>

            </form>-->
<jsp:include page="navbar.jsp" />
<form style="text-align: center;">
    Search: <input type="text" name="txtName" value="" class="form-control" style="width: 60%;margin-left: 260px"><br>
    <input type="submit" value="Search" name="action" class="btn btn-default" style="border-radius: 5px; padding: 5px 28px;" />
   <input type="submit" value="Insert" name="action" class="btn-danger" style="border-radius: 5px; padding: 5px 28px;" />
 
    <a href="update.jsp" style="border-radius: 5px; padding: 5px 28px;" class="btn btn-primary">Update</a>
    <a href="delete.jsp" style="border-radius: 5px; padding: 5px 28px;" class="btn btn-danger">Delete</a>
</form>
    
    <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=QLShop"
                           user="sa" password="123456" var="con" />
    <sql:query dataSource="${con}" var="rs">
        SELECT * FROM Products WHERE Name Like ?
        <sql:param value="%${param.txtName}%" />
    </sql:query>
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <td>#</td><td>Code</td><td>Name</td><td>Price</td><td>Image</td>
                </tr>
                </thead>
                <c:set var="count" value="0" />
                <c:forEach var="dong" items="${rs.rows}">
                    <tr>
                    <c:set var="count" value="${count+1}"/>
                    <td>${count}</td>
                    <td>${dong.Code}</td>
                    <td>${dong.Name}</td>
                    <td>${dong.Price}</td>
                    <td> <img src="img/${dong.img}" width="300px" height="200px"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    
      
                         
<jsp:include page="footer.jsp" />
    </body>
</html>
