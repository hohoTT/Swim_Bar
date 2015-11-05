<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>购书之旅</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/jquery.spinner.js"></script>

<script type="text/javascript" src="static/js/jquery.imagezoom.min.js"></script>

<link rel="stylesheet" href="static/css/shopping_trolley.css">
<link rel="stylesheet" href="static/css/trolley_style.css">
<link rel="stylesheet" href="static/css/add_atyle.css">
<link rel="stylesheet" href="static/css/jquery.spinner.css">

</head>

<body>
	<jsp:include page="nav_content.jsp"></jsp:include>

	<div class="box">

		<div class="tb-booth tb-pic tb-s310">
			<a href="image/book/big/html/1.jpg"><img
				src="image/book/mid/html/1.jpg" alt="html"
				rel="image/book/big/html/1.jpg" class="jqzoom" /> </a>
		</div>

		<ul class="tb-thumb" id="thumblist">
			<li class="tb-selected">
				<div class="tb-pic tb-s40">
					<a href="javascript:void(0)"> <img
						src="image/book/small/html/1.jpg" mid="image/book/mid/html/1.jpg"
						big="image/book/big/html/1.jpg"> </a>
				</div>
			</li>

			<li><div class="tb-pic tb-s40">
					<a href="javascript:void(0)"><img
						src="image/book/small/html/01.jpg"
						mid="image/book/mid/html/01.jpg" big="image/book/big/html/01.jpg">
					</a>
				</div>
			</li>

			<li><div class="tb-pic tb-s40">
					<a href="javascript:void(0)"><img
						src="image/book/small/html/001.jpg"
						mid="image/book/mid/html/001.jpg"
						big="image/book/big/html/001.jpg"> </a>
				</div>
			</li>

		</ul>

	</div>
	<form id="shopping-form" action="servlet/shoppingServlet" method="post">
		<div class="wrapper" id="computer">
			<h1
				style="padding-bottom: .2em;
          line-height: 1;
          font-size: 16px;
          font-weight: 700;
          color: #000;
          font-family: "microsoftyahei";">计算机书籍
				软件开发视频大讲堂：HTML5从入门到精通（附光盘1张） 基础经典高级模板源码开发CSS3教程教材响应式</h1>
			<a href="shopping_info.jsp"> <span class="car"><i
					class="shopping-cart"></i> </span> </a>

			<div class="clear"></div>

			<div id="quantity">
				<center>
					<input name="quantity" type="text" class="spinnerExample" />
				</center>
			</div>

			<!-- items -->
			<div class="items">
				<!-- single item -->
				<div class="item">
					<h3>请核对购物信息 ：</h3>
					<hr>
					<p>
						价格 ： RMB : 75
						<input name="price" value="75" type="hidden" />
						<input name="action" value="trolley" type="hidden" />
						<input name="bookname" value="HTML5" type="hidden" />
					</p>
					<button id="buy">购买</button>
					<button class="add-to-cart" type="button">加入购物车</button>
				</div>
				<!--/ single item -->
			</div>
			<!--/ items -->
		</div>
	</form>
	<script type="text/javascript" src="static/js/shopping_trolley.js"></script>
	<script type="text/javascript">
		$('.add-to-cart').on('click', function() {
			var cart = $('.shopping-cart');
			setTimeout(function() {
				cart.effect('shake', {
					times : 2
				}, 200);
			}, 500);
			$('#shopping-form').submit();
		});
	</script>
</body>
</html>
