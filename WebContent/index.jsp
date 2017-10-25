<%-- 
    Document   : index
    Created on : Oct 1, 2017, 3:25:37 PM
    Author     : tylershelter
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
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
                color: white;
                text-align: center;
                font-size: 14px;
        }
        
        .btn-add{
            border-radius: 5px;
            padding: 5px 20px;
            background-color: papayawhip;
        }
        
        .btn-add:hover{
            background-color: lightseagreen;
            color: white;
        }

        </style>
    </head>
    <body>
<!--        Navigator-->
        <jsp:include page="navbar.jsp" />
<!--        Header-->
<div style=" text-align: center;">
              <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d125416.76152587922!2d106.6407764047778!3d10.790329476874076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zYuG6v24geGUgYnXDvXQgcXXhuq1uIDg!5e0!3m2!1svi!2s!4v1508159895986" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
<!--End-->
        <div class="header-content">
            <h1 class="text-center w3-black">Products</h1>
        </div>
        <div class="table-responsive">
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
                    "<td>"+ sp.getPrice()+ "</td><td><input   class=\"btn-add\" type=\"submit\" "
                    + " value=\"Add to Cart\" name=\"action\" /></td>"
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
        </div>

        <form action="ControllerCartBean" style="text-align: center; color: black;">
            <input type ="submit" value="View Cart" name="action" class="btn-primary" style="padding: 5px 28px;"/>
     </form>
     <jsp:include page="footer.jsp" />
    </body>
</html>
