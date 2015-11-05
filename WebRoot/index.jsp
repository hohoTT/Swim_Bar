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

<title>Swim Bar</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/index.css">
<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/carousel.js"></script>

</head>

<body>
	<div id="carousel-generic" class="carousel slide" data-ride="carousel"
		data-interval="2000">
		<!-- Wrapper for slides -->
		<div id="carousel" class="carousel-inner">
			<div class="item active">
				<img src="image/6.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Head to blow up</h1>
					<p>
						<button class="btn btn-success btn-lg">WANG_TT</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/1.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Mobiles are outnumbering desktops</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/2.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/3.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/4.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/5.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/7.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="image/8.jpg" alt="...">
				<div class="carousel-caption">
					<jsp:include page="index_content.jsp"></jsp:include>
					<h1>Enterprises are adopting Cloud computing fast</h1>
					<p>
						<button class="btn btn-success btn-lg">Try 30 day trial
							now
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div id="footer"></div>
</body>
</html>
