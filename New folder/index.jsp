
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang chủ</title>
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
	z-index:1;	
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
#content{
	width:960px;
	height:300px;
}
#slider{
	list-style:none;
	position:relative;
}
#slider .slide{
	opacity:0;
	position:absolute;
}
#slider .showing{
	opacity: 1;
}
h2{
	color:white;
	background-color:#c69a39;
	margin-top:5px;
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
            <div id="content">
                <ul id="slider">
                    <li class="slide showing"><img src="img/anh4.png" width="960px" height="300px" /></li>
                    <li class="slide"><img src="img/anh3.png" width="960px" height="300px" /></li>
                    <li class="slide"><img src="img/anh2.png" width="960px" height="300px" /></li>
                    <li class="slide"><img src="img/anh1.png" width="960px" height="300px" /></li>
                </ul>
            </div>
            <script language="javascript">
            //mảng slides[0,1,2]
                var slides = document.querySelectorAll('#slider .slide');
                var count = slides.length;
                var tam = 0;
                var timenext = setInterval(nextSlide,2000);
                
                function nextSlide(){
                    slides[tam].className = 'slide';
                    if(tam == count - 1){
                        tam = -1;
                    }
                    tam = tam + 1;
                    slides[tam].className = 'slide showing';
                }
            </script>
        <article>
        <h2>&nbsp;&nbsp;Apple</h2>
            <table>
                <tr >
                    <th class="ah"><a href=""><img   src="img/1.png" /></a>Iphone 6 Cũ - Fullbox</th>
                    <th class="ah"><a href=""><img   src="img/2.png"  /></a>Iphone 6 Lock Nhật,Mỹ - Fullbox</th>
                    <th class="ah"><a href=""><img  src="img/2.png" /></a>Iphone 6S Lock Nhật,Mỹ  - Fullbox</th>
                    <th class="ah"><a href=""><img  src="img/2.png" /></a>Iphone 6 Plus Lock Nhật,Mỹ - Fullbox</th>   
                </tr>
                <tr>
                    <th style="color:red">4.000.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">4.750.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">4.900.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">5.400.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>
                <tr>
                    <th class="ah"><a href=""><img  src="img/3.png" /></a>Iphone 6S Plus Lock Nhật,Mỹ - Fullbox</th>
                    <th class="ah"><a href=""><img  src="img/4.png"  /></a>Iphone 6 Plus Cũ - Fullbox</th>
                    <th class="ah"><a href=""><img  src="img/4.png" /></a>Iphone 6S Plus CPO(Mới 100%)</th>
                    <th class="ah"><a href=""><img  src="img/3.png" /></a>Iphone 6S Plus Cũ - Fullbox</th>
                
                </tr>
                <tr>
                    <th style="color:red">6.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">6.750.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">7.000.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">7.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>
                </table>
                
                <h2>&nbsp;&nbsp;Xiaomi</h2>
                <table>
                <tr>
                    <th class="ah"><a href=""><img  src="img/5.png" /></a>Xiaomi Redmi 4X </th>
                    <th class="ah"><a href=""><img  src="img/6.png"  /></a>Xiaomi Redmi Note 4X</th>
                    <th class="ah"><a href=""><img  src="img/7.png" /></a>Xiaomi Mi 5X</th>
                    <th class="ah"><a href=""><img  src="img/9.png" /></a>Xiaomi Mi6</th> 
                </tr>
                <tr>
                    <th style="color:red">2.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">2.900.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">4.700.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">8.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>    
                <tr>
                    <th class="ah"><a href=""><img  src="img/8.png" /></a>Xiaomi Mi 3 </th>
                    <th class="ah"><a href=""><img  src="img/10.png"  /></a>Xiaomi 5X</th>
                    <th class="ah"><a href=""><img  src="img/11.png" /></a>Xiaomi Redmi Note 4X(Màu xanh)</th>
                    <th class="ah"><a href=""><img  src="img/12.png" /></a>Xiaomi Redmi Note 5A</th> 
                </tr>
                <tr>
                    <th style="color:red">8.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">4.700.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">3.300.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">3.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>    
            </table>
            <h2>&nbsp;&nbsp;Oppo</h2>
             <table>
                <tr>
                    <th class="ah"><a href=""><img  src="img/13.png" /></a>Oppo F3 Plus </th>
                    <th class="ah"><a href=""><img  src="img/14.png"  /></a>Oppo Find 5 Mini</th>
                    <th class="ah"><a href=""><img  src="img/15.png" /></a>Oppo Yoyo R2001</th>
                    <th class="ah"><a href=""><img  src="img/16.png" /></a>Oppo Neo 3</th> 
                </tr>
                <tr>
                    <th style="color:red">10.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">4.900.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">3.700.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">4.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>    
                <tr>
                    <th class="ah"><a href=""><img  src="img/17.png" /></a> Oppo N3</th>
                    <th class="ah"><a href=""><img  src="img/18.png"  /></a>Oppo R2</th>
                    <th class="ah"><a href=""><img  src="img/19.png" /></a>Oppo R7 Plus</th>
                    <th class="ah"><a href=""><img  src="img/14.png" /></a>Oppo Neo 5</th> 
                </tr>
                <tr>
                    <th style="color:red">8.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">4.700.000đ <a href=""><input type="button" value="Mua" /></a></th> 
                    <th style="color:red">3.300.000đ <a href=""><input type="button" value="Mua" /></a></th>
                    <th style="color:red">3.500.000đ <a href=""><input type="button" value="Mua" /></a></th>
                </tr>
                <tr>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                            </th>
                    <th class="hh">Tặng dán cường lực, ốp lưng, tai nghe khi mua BHV<br />
                            Tặng Voucher giảm giá khi mua máy & sửa chữa trị giá 50.000đ
                           </th>
                </tr>    
            </table>
        </article>
    <br />
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
                        <th><a  class="hihi" href="baohanh.html">Chính sách bảo hành</a></th>
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
