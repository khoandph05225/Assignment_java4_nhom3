<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Vận chuyển</title>
<style>
*{
	margin:0;
	padding:0;
	}
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
	z-index:1;	
}
.hihi{
	text-decoration:none;
	color:black;
	}
	.h{
	
	background-color:#c69a39;
	color:white;
	
	}
	.ha{
	padding-left:250px;
	background-color:#fafafa;
}
footer{
	text-align:center;
	}
.hu{
	text-align:center;
	padding-left:160px;
	}
</style>
</head>

<body>
<div id="tibber">
<jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="nav.jsp"></jsp:include>
        
       <br />
<h4 style="color:#c69a39"><A style="color:#c69a39" href="index.html">Trang Chủ</A> > <a style="color:#c69a39" href="vanchuyen">Vận Chuyển</a></h4><br />

<h3 style="color:#c69a39">Chính sách vận chuyển</h3><br />
Để phục vụ quý khách hàng được tốt nhất MobileCity mở dịch vụ miễn phí Ship hàng cho tất cả các khác hàng có nhu cầu mua hàng từ xa.<br /><br />
Với ưu  điểm thủ tục nhanh chóng và thuận tiện, MobileCity hi vọng sẽ làm hài lòng khách hàng nhất có thể.<br /><br />
<h3 style="color:#c69a39">Chính sách vận chuyển hàng hóa của MobileCity</h3><br />
<img class="hu" src="img/shiper.jpg" /><br />
<h3 style="color:#c69a39">Đối với khách hàng thuộc nội thành Hà Nội bán kính <10KM.</h3><br />
Hỗ trợ Ship COD hoàn toàn miễn phí.<br /><br />
Nhận hàng, thanh toán tại nhà.<br /><br />
Tích kiệm thời gian, chi phí. <br /><br />
Chỉ sau 30p - 1h quý khách sẽ nhận ngay sản phẩm đã đặt hàng.<br /><br />
Được nhân viên tư vấn và hướng dẫn sử dụng cũng như các chế độ bảo hành phù hợp<br /><br />
<h3 style="color:#c69a39">Đối với khách hàng ở xa: Ngoại thành Hà Nội và các tỉnh thành trên toàn quốc.</h3><br />
Hỗ trợ miễn phí Ship ở bất cứ đâu<br /><br />
Thanh toán > giao hàng > nhận hàng.<br /><br />
Thời gian nhận máy chỉ từ 1 - 3 ngày tùy vào khoảng cách địa lý.<br /> <br />
MobileCity kết hợp với ViettelPost vận chuyển hàng hóa đảm bảo an toàn, tin cậy.<br /><br />
Mọi thắc mắc cần hỗ trợ xin vui lòng liên hệ | Tổng đài MobileCity hỗ trợ khách hàng 24/7.<br /><br />
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
