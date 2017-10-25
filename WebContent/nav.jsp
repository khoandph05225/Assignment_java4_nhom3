<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="model.Users"%>
<%@page import="java.util.List"%>
<%@page import="service.LoadCategory"%>
<%@page import="model.Category"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<nav>
            <ul>
                <li> <a href="index.jsp">MẶT HÀNG </a>
                    <ul>
                        <%
                        Users user = (Users)session.getAttribute("user"); 
						LoadCategory load = new LoadCategory();
						List<Category>list=load.Loadcategory();
                    	%>
                    	<%for(Category category:list){ %>
                        <li><a href="index.jsp"><%=category.getCategoryName()%></a></li>
                        <%
                    	}
                        %>
                    </ul>
                </li>
                <%if(user.getIsQuanLy()==false){ %>
                <li>
                    <a href="giohang.jsp">GIỎ HÀNG</a>  
                </li>
                <li>
                    <a href="trogiup.jsp">TRỢ GIÚP</a>
                </li>
                <li>
                    <a href="huongdan.jsp">HƯỚNG DẪN MUA HÀNG</a>
                </li>
                <li>
                    <a href="hoso.jsp"> HỒ SƠ CÁ NHÂN</a> 
                </li>
                <%}else if(user.getIsQuanLy()==true){%>
                <li>
                    <a href="giohang.jsp">GIỎ HÀNG</a>  
                </li>
                <li>
                    <a href="hotro.jsp">PHẢN HỒI</a>
                </li>
                <li>
                    <a href="huongdan.jsp">HƯỚNG DẪN </a>
                </li>
                <li>
                    <a href="thanhvien.jsp"> QUẢN LÝ </a> 
                </li>
                <%} %>
            </ul>
        </nav>