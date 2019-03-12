<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>框条之家|全国前100强框条市场®新疆最大框条批发集散市场</title>
<script type="text/javascript" src="/vue/vue.js"></script>
<script type="text/javascript" src="/vue/jquery-3.1.1.min.js"></script>
<style type="text/css">
.iTop{
	display: flex;
	height: 60px;
	weith: 100%;
	background: linear-gradient(#00CACA,#000093);
	flex: 1;
	position: fixed;
	top: 0;
}
#lefttop{
	weith: 120; 
	heigh: 60;
	position: fixed;
	top: 0;
	left: 0;
}
#rtop{
	weith: 120; 
	heigh: 60;
	position: fixed;
	right: 0;
}
#login-front{
	
}
#regist-front{
	
}
</style>
</head>
<body>
	<div class="iTop">
		<div id="lefttop">
			<img src="images/ktzj.png">
		</div>
		<div id="rtop">
			<table>
				<tr>
					<td>
						<a href="http://localhost:8080/login.html" id="login-front">登录</a>
						&nbsp;|&nbsp;
						<a href="http://localhost:8080/regist.html" id="regist-front">注册</a>
					</td>
				</tr>	
			</table>
		</div>
	</div>
	<div class="iCenter"></div>
	<div class="iBottom"></div>
</body>
</html>