<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        <header>
            <div class="ii"><a class="aaa">Hotline : 096.478.150 - 0166.3306.489 - 0163.7125.111 - 096.795.1202</a>
            <div class="tabmenu">     
                <a href="dangnhap.html"> Đăng nhập</a> |
                <a href="dangky.html"> Đăng ký</a>
            </div></div>
            <div class="menu">
                <img src="img/logo1.png" /> 
            </div>
            <div class="hi">
                <input class="ai" type="text" placeholder="Tìm kiếm sản phẩm..."/>
            </div>
        </header>
    	<nav>
            <ul>
                <li> <a href="index.html">MẶT HÀNG </a>
                    <ul>
                        <li><a href="">Apple</a></li>
                        <li><a href="">Sony</a></li>
                        <li><a href="">Samsung</a></li>
                        <li><a href="">Xiaomi</a></li>
                        <li><a href="">Oppo</a></li>
                    </ul>
                </li>
                <li>
                    <a href="giohang.html">GIỎ HÀNG</a>  
                </li>
                <li>
                    <a href="trogiup.html">TRỢ GIÚP</a>
                </li>
                <li>
                    <a href="huongdan.html">HƯỚNG DẪN MUA HÀNG</a>
                </li>
                <li>
                    <a href="hoso.html"> HỒ SƠ CÁ NHÂN</a> 
                </li>
            </ul>
        </nav>
        <article>
        	<div class="thongtin">
            	<table>
                	<tr>
                    	<th>Mã khách hàng</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Tên khách hàng</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Tài khoản</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Mật khẩu</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Ngày sinh</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Địa chỉ</th>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                    	<th>Điện thoại</th>
                        <td><input type="text" /></td>
                    </tr>
                </table>
                <div class="button">
                	<input type="button" value="Thêm thông tin" /><br /><br />
                    <input type="button" value="Sửa thông tin" /><br /><br />
                    <input type="button" value="Xóa thông tin" />
                </div>
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
