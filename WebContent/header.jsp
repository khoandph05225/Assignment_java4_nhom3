<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.Users"%>
<%@page import="controller.loginServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@page import="javax.servlet.http.HttpSession" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<div id="tibber">
<header>

            <div class="ii"><a class="aaa">Hotline : 096.478.150 - 0166.3306.489 - 0163.7125.111 - 096.795.1202</a>
            <div class="tabmenu">  
                <%
                HttpSession httpsession = request.getSession();
                Users user = (Users)httpsession.getAttribute("user"); %>   
              	<%if(user!=null){ %>  
 					  	<a href="hoso.jsp"><%= user.getTENND() %></a> | 
                   		<a href="dangnhap.jsp"  onclick=""> Đăng Xuất</a>  
              	<%}else{ %>   
                        <a href="dangnhap.jsp" name="dangnhap"> Đăng nhập</a> | 
                  		<a href="dangky.jsp" name="dangky"> Đăng ký</a>  
                <%} %>  
<%-- 			<c:set var="taikhoan" value="<%= user.getTENND() %>" /> --%>
<%-- 			<a href="hoso.jsp"><c:out value="${taikhoan}" /></a> | --%>
<!-- 			<a href="dangnhap.jsp" name="dangxuat" <c:remove var="taikhoan" /> onclick="dangxuat"> Đăng Xuất</a> -->
            </div></div>
            <div class="menu">
                <img src="img/logo1.png" /> 
            </div>
            <div class="hi">
                <input class="ai" type="text" placeholder="Tìm kiếm sản phẩm..."/>
            </div>
</header>