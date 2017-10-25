<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hướng dẫn mua hàng</title>
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
article h3{
	color:#c69a39;
}
.noidung{
	text-align:justify;
	line-height:25px;	
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
        <br />
        <article>
            <div class="noidung">
                <h3>Hướng dẫn thanh toán khi mua hàng tại MobileCity</h3><br />
                <h3>I. Phương thức thanh toán – Giao tiền mặt</h3><br />
                Phương thức này hỗ trợ giao hàng cho quý khách ở khu vực có phạm vi dưới 10 km hoặc mua trực tiếp tại 2 		địa chỉ:<br /><br />
        <b>Tại Hà Nội:</b> 120 Thái Hà, Đống Đa - Điện thoại : 0433 120 120 & 0969 120 120<br /><br />
        <b>Tại TPHCM:</b> 123 Trần Quang Khải, Quận 1 - Điện thoại: 0965 123 123 & 0822 300 600<br /><br />
        Quý khách có thể đặt hàng trực tiếp thông qua website Mobilecity.vn hoặc gọi theo tổng đài (HN: 0969 120 120 - TPHCM: 0965 123 123)<br /><br />
        
        Quý khách có trách nhiệm thanh toán đầy đủ toàn bộ giá trị đơn hàng cho Nhân viên giao nhận hoặc Nhân viên bán hàng, chăm sóc khách hàng của MobileCity. Ngay sau khi hoàn tất việc kiểm tra hàng hóa và nhận phiếu giao hàng cũng như phiếu xuất kho. Quý khách thanh toán đúng số tiền được ghi trên Phiếu, nếu có bất cứ thắc mắc nào Quý khách gọi lại cho MobileCity để được thông tin cụ thể hơn.<br />
            </div><br />
            <div class="noidung">
                <h3>II. Phương thức thanh toán trước</h3><br />
                Quý khách làm theo các bước sau:<br /><br />
    1/ Đến Ngân hàng gần nhất của Quý khách để chuyển tiền/chuyển khoản theo thông tin chi tiết MobileCity cung cấp: Số tiền, Tên đơn vị, số tài khoản, Ngân hàng mở tài khoản, nội dụng chuyển tiền/chuyển khoản.<br /><br />
    2/ Thông báo cho MobileCity (qua điện thoại, email, SMS, fax ...) ngay khi Quý khách đã thực hiện chuyển tiền/chuyển khoản.<br /><br />
    3/ Hoặc Quý khách vui lòng liên hệ với Bộ phận Bán hàng trực tuyến của MobileCity theo số (HN: 0969 120 120 - TPHCM: 0965 123 123), để thông báo đã chuyển tiền.<br /><br />
    4/ Ngay khi nhận được báo cáo xác nhận từ phía Ngân hàng, MobileCity sẽ tiến hành thông báo lại cho Quý khách đồng thời xuất hàng giao hàng cho Quý khách trong thời gian quy định.<br /><br />
    <b>Tài khoản nhận tiền áp dụng với Khách hàng Khu vực phía Bắc - Hotline: 0969 120 120</b><br />
    <img src="img/nganhang.png" /><br />
    <b>Tài khoản áp dụng với Khách hàng Khu vực phía Nam - Hotline: 0965 123 123</b><br />
    <img src="img/nganhang2.png" /><br />
            </div>
            <div class="noidung">
            Xin Quý khách lưu ý:<br /><br />
    
    *	MobileCity sẽ không chịu trách nhiệm về sai sót trong quá trình chuyển khoản hoặc chuyển khoản sai thông tin.<br /><br />
    *	Quý khách hoàn toàn có thể nhờ đến phía Ngân hàng mà Quý khách thực hiện giao dịch hoặc Ngân hàng của MobileCity sử dụng để kiểm tra và đối chứng khi cần thiết.<br /><br /> 
            </div>
    <br /> 
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
