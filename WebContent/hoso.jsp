<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.Users"%>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hồ sơ cá nhân</title>
<style>
*{ margin:0; padding:0;}
#tibber{
	width:960px;
	margin:0 auto;	
}
.menu{	
	background-color:#c69a39;
}
.aaa{
	position:relative;
	top:10px;
	left: 10px;
	text-align:center;	
}
.tabmenu {
	position:absolute;
	top:10px;
	right:165px;
}
.tabmenu a{
	text-decoration:none;
	color:#666;
}
.tabmenu a:hover{
	text-decoration:underline;
}
.ii{
	height:40px;
}
.ii a{
	top:10px;
}
.hi{
	text-align:right;
}
.ai{
	border-radius:5px;
	height:20px;
}
nav{
	text-align:center;
	height:50px;
	line-height:50px;
	background-color:#c69a39;
}
nav>ul{
	list-style:none;
	text-align:center;
}
nav>ul>li{
	display:inline-block;
	position:relative;
}
nav>ul>li>a{
	text-decoration:none;
	padding:0 39.3px;
	line-height:50px;
	display:block;	
	color:#FFF;
}
nav>ul>li>a:hover{
	color:#CCC;
}
nav ul ul{
	display:none;
	position:absolute;
	list-style:none;
	width:200px;
	background-color:#FFF;
}
nav ul ul a{
	text-decoration:none;
	padding:10px 10px;
	line-height:30px;
	color:black;	
	
}
nav ul ul li:hover{
	background-color:#CCC;	
}
nav>ul>li:hover>ul{
	display:block;	
}
.hh{
	color:#999;
	font-size:15px;
}
.ah img{	
	transition-duration: 0.5s;	
}
.ah img:hover{
	transform:scale(1.1);
	opacity: 0.7;
}
.ha{
	padding-left:250px;
	background-color:#fafafa;
}
footer{
	height:40px;
	line-height:40px;
	text-align:center;
}
.thongtin th{
	padding:10px;
	text-align:left;
}
.thongtin{
	padding-left:100px;
	border:2px solid #c69a39;
	position:relative;
}
.button{	
	position:absolute;
	top:50px;
	right:350px;
}
.button input{
	width:120px;
	height:40px;
	border-radius:10px;
	background-color:#c69a39;
	color:#FFF;
}
.hihi{
	text-decoration:none;
	color:black;
	}
</style>
</head>

<body>
	<div id="tibber">
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="nav.jsp"></jsp:include>
        <article>
        <% Users user=(Users)session.getAttribute("user"); %>
        	<div class="thongtin">
        		<form action="capnhapServlet" method="post">
            	<table>
                    <%if(user != null){ %>
                    <tr>
                    	<th>Tên khách hàng</th>
                        <td><input type="text" name="TenND" value="<%= user.getTENND() %>"  /></td>
                    </tr>
                    <tr>
                    	<th>Tài khoản</th>
                        <td><input type="text" name="taikhoan" value="<%= user.getTAIKHOAN() %>"  /></td>
                    </tr>
                    <tr>
                    	<th>Mật khẩu</th>
                        <td><input type="text" name="matkhau" value="<%= user.getMATKHAU() %>" /></td>
                    </tr>
                    <tr>
                    	<th>Ngày sinh</th>
                        <td><input type="text" name="ngaysinh" value="<%= user.getNGAYSINH() %>" /></td>
                    </tr>
                    <tr>
                    	<th>Địa chỉ</th>
                        <td><input type="text" name="diachi" value="<%= user.getDIACHI() %>" /></td>
                    </tr>
                    <tr>
                    	<th>Điện thoại</th>
                        <td><input type="text" name="dienthoai" value="<%= user.getDIENThOAI() %>" /></td>
                    </tr>
                    <%} %>
                </table>
                <div class="button">
                    <input type="submit" value="Sửa thông tin" /><br /><br />
                </div>
                </form>
            </div>
        </article>
        <aside>
            <div class="ha">
                <table>
                    <tr><br />
                        <th>HỆ THỐNG CỬA HÀNG</th>
                        <th>QUY ĐỊNH - CHÍNH SÁCH</th>   
                    </tr>
                    <tr>
                        <th><b>Hà Nội</b><br />
                        35 Lê Đức Thọ ,Q.Nam Từ Niêm<br />
                        Điện thoại:0962.478.150</th>
                        <th><a class="hihi" href="baohanh.html">Chính sách bảo hành</a></th>
                    </tr>
                    <tr>
                        <th>471 Lĩnh Nam,Q.Hoàng Mai<br />
                        Điện thoại:01663.306.489</th>
                        <th><a class="hihi" href="vanchuyen.html">Chính sách vận chuyển</a></th>
                    </tr>
                </table><br />
            </div>
        </aside>
        <footer>&copy;Designer by Double TH-K</footer>
    </div>
</body>
</html>
