<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
*{
	padding:0px;
	margin:0px;	
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
	border-radius:10px 10px 0 0;
}
h2{
	text-align:center;
	color:white;
	line-height:40px;
}
.hh{
	border:2px solid #c69a39;
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
	min-height:200px;
	background-color:#c69a39;
	position:relative;
}
article img{
	position:absolute;
	top:30px;
	right:12px;	
}
.hi{
	border-radius:3px;
	height:20px;
	padding-left:5px;
}
.dang{
	background-color:#c69a39;
	color:white;
	height:30px;
	width:100px;
	cursor:pointer;
}
.a label{
	margin:0 20px;
}
.a{
	margin-bottom:15px;
	text-align:center;
}
.b{
	text-align:center;
	font-weight:bold;
	margin-bottom:20px;
}
.c{
	text-align:center;
}
.d{
	padding-left:20px;
}
</style>
<title>Đăng nhập</title>
</head>
<body>
	<div id="tib">
	<header><h2>Đăng nhập</h2></header>
<div class="hh">
	<nav><br />
    <div class="b">TÀI KHOẢN MOBILECITY<br /></div>
	<form action="loginServlet" method="post" onsubmit="return check()">
    <div class="a">
    <label>Tài khoản</label>
    <input class="hi" type="text" name="UserName" id="username" placeholder="Mời bạn nhập tài khoản"/><br />
    </div>
    <div class="a">
    <label>Mật khẩu</label>
    <input class="hi" type="password" name="PassWord" id="password" placeholder="Mời bạn nhập mật khẩu" /><br />
    </div>
    <div class="c">
    <input style="margin-bottom:10px" class="dang" type="submit" value="Đăng Nhập" />
    </div>
    <div class="d" style="font-size:13px;">Nếu bạn chưa có tài khoản vui lòng click vào <a href="dangky.jsp">đây</a></div>
    </form>
    </nav>
<article><img src="img/logo1.png" /></article>
<aside style="clear:both"></aside>
</div>
</div>
<script type="text/javascript">
	function check(){
		var	username =document.getElementById('username');
		var	password =document.getElementById('password');
		if(username.value==""){
			alert("Vui lòng nhập tài khoản Mobile City");
			username.focus();
			return false;
		}
		if(password.value==""){
			alert("Vui lòng nhập mật khẩu, cám ơn bạn");
			password.focus();
			return false;
		}
	}
</script>
</body>
</html>
