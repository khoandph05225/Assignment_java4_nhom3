<%@page import="model.Product"%>
<%@page import="service.ProductDAO"%>
<%@page import="model.Category"%>
<%@page import= "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
        <%
        ProductDAO a = new ProductDAO();
        List<Product> list1 = a.loadProduct("IP", "lực, ốp");
        List<Product> list2 = a.loadProduct("IP",",,");
        List<Product> list3 = a.loadProduct("XI","lực, ốp");
        List<Product> list4 = a.loadProduct("XI",",,");
        List<Product> list5 = a.loadProduct("OP","lực, ốp");
        List<Product> list6 = a.loadProduct("OP",",,");
        %>
        <h2>&nbsp;&nbsp;Apple</h2>
            <table>
                <tr >
                	<%for(Product product:list1){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                </tr>
                <tr>
                	<%for(Product product1:list1){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                	<%for(Product product2:list1){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product:list2){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                
                </tr>
                <tr>
                    <%for(Product product1:list2){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product2:list2){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
                </tr>
                </table>
                
                <h2>&nbsp;&nbsp;Xiaomi</h2>
                <table>
                <tr >
                	<%for(Product product:list3){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                </tr>
                <tr>
                	<%for(Product product1:list3){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                	<%for(Product product2:list3){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product:list4){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                
                </tr>
                <tr>
                    <%for(Product product1:list4){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product2:list4){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
                </tr>
                </table>
            <h2>&nbsp;&nbsp;Oppo</h2>
             <table>
                <tr >
                	<%for(Product product:list5){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                </tr>
                <tr>
                	<%for(Product product1:list5){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                	<%for(Product product2:list5){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product:list6){ %>
                	
                    <th class="ah"><a href=""><img   src="<%=product.getSRC_IMAGE() %>" /></a><%=product.getPRODUCT_NAME() %></th>
                    <%} %> 
                
                </tr>
                <tr>
                    <%for(Product product1:list6){ %>
                    <th style="color:red"><%=product1.getPRICE() %>đ <a href=""><input type="button" value="Mua" /></a></th>
                    <%} %>
                </tr>
                <tr>
                    <%for(Product product2:list6){ %>
                    <th class="hh"><%=product2.getDESCRIPTION() %>
                            </th>
                    <%} %>
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
