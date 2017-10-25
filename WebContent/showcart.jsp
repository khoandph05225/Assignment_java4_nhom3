<%-- 
    Document   : showcart
    Created on : Oct 1, 2017, 3:25:55 PM
    Author     : tylershelter
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            .header-content h1{
                line-height: 90px;
        }

            .table thead tr th{
                color: dimgrey;
                text-align: center;
                font-size: 14px;
        }
        
       
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="header-content">
            <h1 class="text-center w3-black">Your items</h1>
        </div>
        <c:set var="shop" value="${sessionScope.SHOP}" />
        <c:if test="${not empty shop}">
        <div class="table-responsive">
            <table class="table" style="color: black; text-align: center;">
                <thead>
                    <tr style="font-weight: bold; color: dimgray;">
                        <td>Images</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Action</td>
                        <td>Image</td>
                    </tr>
                </thead>
                <tbody>
                <form action="ControllerCartBean">
                    <c:set var="count" value="0" />
                    <c:forEach var="rows" items="${shop}">
                        <c:set var="count" value="${count + 1}"/>
                        <tr>
                            <td><img src="img/${rows.value.sanpham.img}" width="200px"></td>
							<td>${rows.value.sanpham.code}</td>
							<td>${rows.value.sanpham.name}</td>
							<td>${rows.value.sanpham.price}</td>
                                                        
							<td><input size="1" type="text" value="${rows.value.quantity}" />
                                                            <input type="submit" value="Update" /></td>
							<td>
								<input type="checkbox" name="rmv" value="${rows.value.sanpham.code}">
							</td>
			</tr>
                    </c:forEach>
                        <tr>
							<c:url var="add" value="ControllerCartBean">
								<c:param name="action" value="AddMore"/>
							</c:url>
                            <td colspan="2" sty><a href=index.jsp ><input type="button" value="Add more" style="background-color: dimgray;"/></a></td>
                                                        <td><input type="submit" name="action" style="background-color: dimgray;" value="Remove"></td>
                                                        
                        </tr>
                </form>
                </tbody>
            </table>
        </c:if>
        </div>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
