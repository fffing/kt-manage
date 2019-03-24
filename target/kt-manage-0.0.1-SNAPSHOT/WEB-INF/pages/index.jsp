<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>框条之家|全国前100强框条市场®新疆最大框条批发集散市场</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/front.css">

<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/product_list.css">
<script src="./js/jquery.js"></script>

</head>
<body>
	<div class="iTop">
		<div id="lefttop">
			<img src="/images/ktzj.png" style="width: 100px; height: 45px;">
		</div>

		<div id="ctop">
			<ul>
				<li><a id="load-home">首页</a></li>
				<li><a id="load-kt">原木框条</a></li>
				<li><a id="load-?">最新资讯</a></li>
				<li><a id="load-comment">客户论坛</a></li>

			</ul>
		</div>

		<div id="rtop">
			<table id="tb">
				<tr>
					<td><font color="#ffffff"> <a
							href="http://localhost:8080/login.html" id="login-front">登录</a>
							&nbsp;|&nbsp; <a href="http://localhost:8080/regist.html"
							id="regist-front">购物车</a>
					</font></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="iCenter">
		<div id="wowslider-container1">
			<div class="ws_images">
				<ul>
					<li><a target="_blank" href="#"><img title="高级职位都在这里"
							src="images/bimg1.jpg" /></a></li>
					<li><a target="_blank" href="#"><img
							title="互联网设计布道者冯铁看诊把脉" src="images/bimg2.jpg" /></a></li>
					<li><a target="_blank" href="#"><img title="颜值不高别装“表”"
							src="images/bimg3.jpg" /></a></li>
					<li><a target="_blank" href="#"><img title="高级职位都在这里"
							src="images/bimg1.jpg" /></a></li>
					<li><a target="_blank" href="#"><img
							title="互联网设计布道者冯铁看诊把脉" src="images/bimg2.jpg" /></a></li>
					<li><a target="_blank" href="#"><img title="颜值不高别装“表”"
							src="images/bimg3.jpg" /></a></li>
				</ul>
			</div>
			<div class="ws_thumbs">
				<div>
					<a target="_blank" href="#"><img src="images/simg1.jpg" /></a> <a
						target="_blank" href="#"><img src="images/simg2.jpg" /></a> <a
						target="_blank" href="#"><img src="images/simg3.jpg" /></a> <a
						target="_blank" href="#"><img src="images/simg1.jpg" /></a> <a
						target="_blank" href="#"><img src="images/simg2.jpg" /></a> <a
						target="_blank" href="#"><img src="images/simg3.jpg" /></a>
				</div>
			</div>
			<div class="ws_shadow"></div>
		</div>
	</div>
	<div class="iload"></div>
</body>

<!-- jQuery 3 -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript">
	$(function() {
		doLoadUI("#load-home", "index");
		doLoadUI("#load-kt", "kt/listUI");
		doLoadUI("#load-comment", "comment/ListUI");
	})
	function doLoadUI(id, url) {
		$(id).click(function() {
			$(".iCenter").html("").load(url, function() {
				$(".iCenter").removeData();
			});
		});
	};
	jQuery("#wowslider-container1").wowSlider({
		effect : "cube",
		prev : "",
		next : "",
		duration : 20 * 100,
		delay : 20 * 100,
		width : 1000,
		height : 400,
		autoPlay : true,
		playPause : true,
		stopOnHover : false,
		loop : false,
		bullets : 0,
		caption : true,
		captionEffect : "slide",
		controls : true,
		onBeforeStep : 0,
		images : 0
	});
</script>

</html>