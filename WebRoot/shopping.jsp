<%@page import="com.wt.bean.User"%>
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

<title>书城</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/style.css" media="all">
<link rel="stylesheet" href="static/css/lightbox.css" media="screen">
<link rel="stylesheet" href="static/css/responsiveslides.css">
<link rel="stylesheet" href="static/css/shopping.css">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">

<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="static/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="static/js/jquery.lightbox.js"></script>
<script type="text/javascript" src="static/js/shopping.js"></script>


</head>

<body>
	<jsp:include page="nav_content.jsp"></jsp:include>

	<%
		int count = User.update_people_count();

		if (count == 1) {
			int people_count = User.query_people_count();
			session.setAttribute("people_count", people_count);
		}

		int people_count = (Integer) session.getAttribute("people_count");
	%>

	<!--start-image-slider---->
	<div class="image-slider">
		<!-- Slideshow 1 -->
		<ul class="rslides" id="slider">
			<li><img src="image/banner1.jpg" alt="">
			</li>
			<li><img src="image/banner2.jpg" alt="">
			</li>
			<li><img src="image/banner3.jpg" alt="">
			</li>
			<li><img src="image/banner4.jpg" alt="">
			</li>
		</ul>
		<!-- Slideshow 2 -->
	</div>
	<!--End-image-slider---->

	<div class="wrap">

		<div class="main">
			<%
				String username = (String) session.getAttribute("username");
				String display = "block";
				String no = "block";
				if (username == null) {
					display = "none";
				} else {
					no = "none";
				}
			%>

			<h2 style="display: <%=display%>;">
				欢迎<%=username%>您的访问， 您是第
				<%=session.getAttribute("id")%>
				位注册Swim_Bar的人 ～
			</h2>

			<h2 style="display: <%=no%>;">欢迎访问Swim_Bar，登录请点击右上方 ~~</h2>

			<h5 id="visiter">
				当前网站访问量为<%=people_count%></h5>
			<hr>
			<div>
				我的购物车：<a href="shopping_info.jsp"> <img alt="" src="image/_cart.png">
				</a>
			</div>
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping_trolley.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\html.jpg" alt="img">
								</li>
							</ul>
						</div> </a>
					<h3>有关 HTML 书籍</h3>
					<br>
					<div class="more">
						<a href="html_intent.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="java_trolley.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\java.jpg" alt="img">
								</li>
							</ul>
						</div> </a>
					<h3>有关 JAVA 书籍</h3>
					<br>
					<div class="more">
						<a href="java_content.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\js.jpg" alt="img">
								</li>
							</ul>
						</div> </a>
					<h3>有关 JavaScript 书籍</h3>
					<br>
					<p></p>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\jquery.jpg" alt="img">
								</li>
							</ul>
						</div> </a>
					<h3>有关 JQUERY 书籍</h3>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>

			<!-- The second group -->

			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\php.jpg" alt="img"></li>
							</ul>
						</div> </a>
					<h3>有关 PHP 书籍</h3>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\android.jpg" alt="img"></li>
							</ul>
						</div> </a>
					<h3>有关 ANDROID 书籍</h3>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\apple.jpg" alt="img"></li>
							</ul>
						</div> </a>
					<h3>有关 APPLE 书籍</h3>
					<br>
					<p></p>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>

				<div class="col_1_of_4 span_1_of_4">
					<a href="shopping.jsp">
						<div class="image_grid portfolio_4col">
							<ul style="" id="list" class="portfolio_list da-thumbs">
								<li><img src="image\css.jpg" alt="img"></li>
							</ul>
						</div> </a>
					<h3>有关 CSS 书籍</h3>
					<br>
					<div class="more">
						<a href="shopping.jsp" class="button">Read More</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>

		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
