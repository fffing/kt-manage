<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>框条之家|全国前100强框条市场®新疆最大框条批发集散市场</title>
<style type="text/css">
#lefttop{
	weith: 100px; 
	heigh: 45px;
	position: fixed;
	top: 0px;
	left: 0px;
}
#rtop{
	width: 120px; 
	heigh: 45px;
	position: fixed;
	right: 12.5px;
	top: 10px;
}
.iTop{
	display: flex;
	height: 45px;
	width: 110%;
	flex: 1;
	position: fixed;
	top: 0px;
	background: linear-gradient(#00CACA, #000093);
}

a:link {color: #FFFFFF; text-decoration:none;}		/* 未访问的链接 */
a:visited {color: #B9B9FF; text-decoration:none;}	/* 已访问的链接 */
a:hover {color: #E1E100; font-weight: bold;}	/* 鼠标移动到链接上 */
a:active {color: #80FFFF; font-weight: bold;}	/* 选定的链接 */

#ctop{
	
	top: -5px;
	position: absolute;
	left: 10%;
	
}
#ctop ul{
	margin:0;
	padding:0;
	text-align: center;
	
}

#ctop ul li{
	float: left;
	list-style-type: none;
}
#ctop ul li a{
	display: block;
	width: 200px;
	color: #00ffff;
	text-decoration: none;
	height:50px;
	line-height: 50px;
	
}
#ctop ul li a:hover{
	
	background: linear-gradient(#000093, #00CACA);
}
</style>
</head>
<body>
	<div class="iTop">
		<div id="lefttop">
			<img src="/images/ktzj.png" style="width: 100px;height: 45px;">
		</div>
		
		<div id="ctop">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">原木框条</a></li>
				<li><a href="#">最新资讯</a></li>
				<li><a href="#">客户论坛</a></li>
				
			</ul>
		</div>
		
		<div id="rtop">
			<table id="tb">
				<tr>
					<td><font color="#ffffff">
						<a href="http://localhost:8080/login.html" id="login-front" >登录</a>
						&nbsp;|&nbsp;
						<a href="http://localhost:8080/regist.html" id="regist-front">购物车</a>
						</font>
					</td>
				</tr>	
			</table>
		</div>
	</div>
	<div class="iCenter"></div>
	<div class="iBottom"></div>
</body>
</html>