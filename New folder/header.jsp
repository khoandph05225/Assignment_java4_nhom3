<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.Users"%>
<%@page import="controller.loginServlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<header>

            <div class="ii"><a class="aaa">Hotline : 096.478.150 - 0166.3306.489 - 0163.7125.111 - 096.795.1202</a>
            <div class="tabmenu">     
                <%Users user = (Users)session.getAttribute("user"); %> 
            <%if(user==null){ %>  
            <a href="login.jsp"> Đăng nhập</a> |
                <a href="dangky.jsp"> Đăng ký</a>
            <%}else{ %> 
            	<a href="hoso.jsp"><%= user.getTENND() %></a> | 
                 <a href="dangnhap.jsp" onclick="dangxuat"> Đăng Xuất</a> 
                <%} %> 
            </div></div>
            <div class="menu">
                <img src="img/logo1.png" /> 
            </div>
            <div class="hi">
                <input class="ai" type="text" placeholder="Tìm kiếm sản phẩm..."/>
            </div>
</header>
</body>