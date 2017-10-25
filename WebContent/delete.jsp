<%-- 
    Document   : 4
    Created on : Oct 5, 2017, 10:14:48 AM
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
    </head>
    <body style="color: white;background-image: url(img/header.jpg)" class="text-center">
        <jsp:include page="navbar.jsp" />
        <form style="text-align: center;">
            Code: <input type="text" name="txtCode" value="" class="form-control" style="width: 60%;margin-left: 260px"/><br>
              <input type="submit" value="Delete" name="action" class="btn-danger" style="border-radius: 5px; padding: 5px 28px;"/>
              <a href="search.jsp" style="color: white";>Back to the Search Page </a>
        </form>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=QLShop"
                           user="sa" password="123456"
                           var="con"/>
        <c:if test="${not empty param.txtCode}">
        <sql:update dataSource="${con}">
            Delete from Products where Code = ?
            <sql:param value="${param.txtCode}"/>
        </sql:update>
        
            <sql:query dataSource="${con}" var="up">
                SELECT * FROM Products
            </sql:query>    
        
        </c:if>
        <sql:query dataSource="${con}" var="rs">
            select * from Products        
        </sql:query>
            <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <td>#</td><td>Code</td><td>Name</td><td>Price</td>
                    </tr>
                </thead>
                <c:set var="count" value="0" />
                <c:forEach var="dong" items="${rs.rows}">
                    <tr>
                        <c:set var="count" value="${count+1}" />
                        <td>${count}</td>
                        <td>${dong.Code}</td>
                        <td>${dong.Name}</td>
                        <td>${dong.Price}</td>
                        <td><img src="img/${dong.img}"</td>
                    </tr>
                </c:forEach>
            </table>
            </div>
                <jsp:include page="footer.jsp" />
    </body>
</html>
