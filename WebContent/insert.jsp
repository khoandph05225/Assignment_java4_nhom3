<%-- 
    Document   : insert
    Created on : Oct 3, 2017, 9:13:04 PM
    Author     : tylershelter
--%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
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
        
    <body style="background-image: url(img/header.jpg); background-attachment: fixed;color: white">
                  <h1 style="font-size: 35px; text-align: center;">INSERT NEW PRODUCTS</h1>
        
                
                  <form style="text-align: center;" enctype="multipart/form-data">
            Code: <input type="text" name="txtCode" value="" class="form-control" style="width: 60%;margin-left: 260px"/><br>
            Name: <input type="text" name="txtName" value="" class="form-control"style="width: 60%;margin-left: 260px"/><br>
            Price: <input type="text" name="txtPrice" value="" class="form-control"style="width: 60%;margin-left: 260px"/><br>
            Images: <input type="file" name="img" size="50" style="margin-left: 540px; margin-bottom: 30px;" class="btn btn-primary "/><br />
            <input type="submit" value="Insert" name="action" class="btn-danger" style="border-radius: 5px; padding: 5px 28px;"/>
            <a href="search.jsp">Back to the search</a>
        </form>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=QLShop"
                           user="sa" password="123456"
                           var="con"/>
        <c:if test="${not empty param.txtCode}">
        <sql:update dataSource="${con}">
            Insert into Products values(?,?,?,?)
            <sql:param value="${param.txtCode}"/>
            <sql:param value="${param.txtName}"/>
            <sql:param value="${param.txtPrice}"/>
            <sql:param value="${param.img}" />
        </sql:update>
        
            <sql:query dataSource="${con}" var="up">
                SELECT * FROM Products where Name = ?
                <sql:param value="${param.txtAddName}" />
            </sql:query>    
        
        </c:if>
                       <table class="table text-center" style="color: black;">
                <thead>
                    <tr>
			<th>Mã SP</th>
			<th>Tên SP</th>
			<th>Giá</th>
                        <th>Thêm giỏ hàng</th>
		</tr>
                </thead>
              
<% 
        Products listSP = new Products();
        List<Product> list = listSP.showProduct("");
        for(Product sp:list){
            out.print("<form action=\"ControllerCartBean\">");
            out.print("<tr><td>" + sp.getCode() + "</td><td>"+ sp.getName() + "</td>"+
                    "<td>"+ sp.getPrice()+ "</td><td></td>"
                    + "<td><img src='img/"+sp.getImg()+"'width=170px height=100px /></td>"
                    + "<input type=\"hidden\" name=\"txtCode\" value='"+ sp.getCode()+ "' />"
                    + "<input type=\"hidden\" name=\"txtName\" value='"+ sp.getName()+ "' />"        
                    + "<input type=\"hidden\" name=\"txtPrice\" value='"+ sp.getPrice()+ "'/> "
                    + "<input type=\"hidden\" name=\"img\" value='"+ sp.getImg() + "'/>"
                      
                            + "</tr>");
                    
            out.print("</form>");
        }
%>
               
	</table>
        <sql:query dataSource="${con}" var="rs">
            select * from Products        
        </sql:query>
            
    </body>
</html>
