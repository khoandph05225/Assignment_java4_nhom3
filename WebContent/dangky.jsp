<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Đăng ký</title>
<style>
*{
	padding:0;
	margin:0;	
}
#tib{
	width:600px;
	height:300px;
	margin:0 auto;
	
	}
header{
	background-color:#c69a39;
	height:40px;
	width:600px;
	margin-top:50px;
	border-radius:5px 5px 0 0;
}
h2{
	text-align:center;
	color:white;
	line-height:40px;
}
.hh{
	border:3px solid #c69a39;
}
.hi{
	border-radius:3px;
	height:20px;
}
.dang{
	background-color:#c69a39;
	color:white;
	height:30px;
	width:100px;
}
nav{
	width:290px;
	margin:5px 5px 0 0;
	float:left;
	margin-top:0px;
}
article{
	float:right;
	width:290px;
	height:310px;
	background-color:#c69a39;
	position:relative;
}
article img{
	position:absolute;
	top:95px;
	right:12px;	
}

</style>
</head>

<body>
<div id="tib">
<header><h2>Đăng ký</h2></header>
<div class="hh">
<nav>
<br />&nbsp;&nbsp;&nbsp; TÀI KHOẢN MOBILECITY<br /><br />&nbsp;&nbsp;&nbsp;
<form action="registerServlet" method="post">
Tài khoản:<input  class="hi" type="text" name="taikhoan"  placeholder="Mời bạn nhập tài khoản" /><br/><br />&nbsp;&nbsp;&nbsp;
Mật khẩu:&nbsp;<input class="hi" type="password" name="matkhau" placeholder="Mời bạn nhập mật khẩu" /><br /><br />&nbsp;&nbsp;&nbsp;
Tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="hi" type="text" name="tennd" placeholder="Mời bạn nhập tên" /><br /><br />&nbsp;&nbsp;&nbsp;
Ngày sinh:<input class="hi" type="text" name="ngaysinh" placeholder="Mời bạn nhập ngày sinh" /><br /><br />&nbsp;&nbsp;&nbsp;
Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="hi" type="text" name="diachi" placeholder="Mời bạn nhập địa chỉ" /><br /><br />
&nbsp;&nbsp;&nbsp;
SĐT:<input class="hi" type="text" name="dienthoai" placeholder="Mời bạn nhập sdt" /><br /><br />&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input style="margin-bottom:10px" class="dang" type="submit" value="Đăng Ký" />
</form>
</nav>
<article><img src="img/logo1.png" /></article>
<aside style="clear:both"></aside>
</div>
</div>
</body>
</html>
