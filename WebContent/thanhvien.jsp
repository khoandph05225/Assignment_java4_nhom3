<%@page import="model.Users"%>
<%@page import="java.util.List"%>
<%@page import="service.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thành viên</title>
<style>
* {
	margin: 0;
	padding: 0;
}

#tibber {
	width: 960px;
	margin: 0 auto;
}

.menu {
	background-color: #c69a39;
}

.aaa {
	position: relative;
	top: 10px;
	left: 10px;
	text-align: center;
}

.tabmenu {
	position: absolute;
	top: 10px;
	right: 165px;
}

.tabmenu a {
	text-decoration: none;
	color: #666;
}

.tabmenu a:hover {
	text-decoration: underline;
}

.ii {
	height: 40px;
}

.ii a {
	top: 10px;
}

.hi {
	text-align: right;
}

.ai {
	border-radius: 5px;
	height: 20px;
}

nav {
	text-align: center;
	height: 50px;
	line-height: 50px;
	background-color: #c69a39;
}

nav>ul {
	list-style: none;
	text-align: center;
}

nav>ul>li {
	display: inline-block;
	position: relative;
}

nav>ul>li>a {
	text-decoration: none;
	padding: 0 39.3px;
	line-height: 50px;
	display: block;
	color: #FFF;
}

nav>ul>li>a:hover {
	color: #CCC;
}

nav ul ul {
	display: none;
	position: absolute;
	list-style: none;
	width: 200px;
	background-color: #FFF;
}

nav ul ul a {
	text-decoration: none;
	padding: 10px 10px;
	line-height: 30px;
	color: black;
}

nav ul ul li:hover {
	background-color: #CCC;
}

nav>ul>li:hover>ul {
	display: block;
	z-index: 1;
}

.hihi {
	text-decoration: none;
	color: black;
}

.h {
	background-color: #c69a39;
	color: white;
}

.ha {
	padding-left: 250px;
	background-color: #fafafa;
}

footer {
	text-align: center;
}

.hu {
	text-align: center;
	padding-left: 160px;
}

.hu {
	padding-left: 70px;
}
</style>
</head>

<body>
	<div id="tibber">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="nav.jsp"></jsp:include>

		<br />
		<h2 style="color: #c69a39">Thành Viên</h2>
		<br />
		<div style="padding-left: 270px;">
			<table class="h" border="1">
				<tr>
					<th>Tài khoản</th>
					<th>Mật khẩu</th>
					<th>Tên khách hàng</th>
					<th>Ngày sinh</th>
					<th>Địa chỉ</th>
					<th>Điện thoại</th>
				</tr>
				<%
					LoginDAO login = new LoginDAO();
					List<Users> list = login.getListOfUsers();
					for (Users users : list) {
				%>
				<tr>
					<td><%=users.getTAIKHOAN()%></td>
					<td><%=users.getMATKHAU()%></td>
					<td><%=users.getTENND()%></td>
					<td><%=users.getNGAYSINH()%></td>
					<td><%=users.getDIACHI()%></td>
					<td><%=users.getDIENThOAI()%></td>
				</tr>
				<%
					}
				%>

			</table>
			<br />
		</div>
		<br />
		<aside>
		<div class="ha">
			<table>
				<tr>
					<br />
					<th>HỆ THỐNG CỬA HÀNG</th>
					<th>QUY ĐỊNH - CHÍNH SÁCH</th>
				</tr>
				<tr>
					<th><b>Hà Nội</b><br /> 35 Lê Đức Thọ ,Q.Nam Từ Niêm<br />
						Điện thoại:0962.478.150</th>
					<th><a class="hihi" href="baohanh.html">Chính sách bảo
							hành</a></th>
				</tr>
				<tr>
					<th>471 Lĩnh Nam,Q.Hoàng Mai<br /> Điện thoại:01663.306.489
					</th>
					<th><a class="hihi" href="vanchuyen.html">Chính sách vận
							chuyển</a></th>
				</tr>
			</table>
			<br />
		</div>
		</aside>
		<footer>&copy;Designer by Double TH-K</footer>
	</div>
</body>
</html>
