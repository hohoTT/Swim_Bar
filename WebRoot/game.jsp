<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>娱乐一下</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="static/js/game/main2048.js"></script>
<script type="text/javascript" src="static/js/game/showanimation2048.js"></script>
<script type="text/javascript" src="static/js/game/support2048.js"></script>

</head>

<body>
	<jsp:include page="nav_content.jsp"></jsp:include>
	
	<link rel="stylesheet" type="text/css" href="static/css/game/2048.css">
	
	<header>
	<h1>2048</h1>
	<a href="javascript:newgame()" id="newgame">新游戏</a>
	<br><br>
	<p>
		分数:<span id="score">0</span>
	</p>
	</header>
	
	<div id="grid-container" style="width: 500px; height: 500px;">
		<div class="grid-cell" id="grid-cell-0-0"></div>
		<div class="grid-cell" id="grid-cell-0-1"></div>
		<div class="grid-cell" id="grid-cell-0-2"></div>
		<div class="grid-cell" id="grid-cell-0-3"></div>

		<div class="grid-cell" id="grid-cell-1-0"></div>
		<div class="grid-cell" id="grid-cell-1-1"></div>
		<div class="grid-cell" id="grid-cell-1-2"></div>
		<div class="grid-cell" id="grid-cell-1-3"></div>

		<div class="grid-cell" id="grid-cell-2-0"></div>
		<div class="grid-cell" id="grid-cell-2-1"></div>
		<div class="grid-cell" id="grid-cell-2-2"></div>
		<div class="grid-cell" id="grid-cell-2-3"></div>

		<div class="grid-cell" id="grid-cell-3-0"></div>
		<div class="grid-cell" id="grid-cell-3-1"></div>
		<div class="grid-cell" id="grid-cell-3-2"></div>
		<div class="grid-cell" id="grid-cell-3-3"></div>
		<div class="dialog-success">
			<div class="success">恭喜您完成2048</div>
			<div>
				<a href="javascript:again()" id="newgame">重新开始</a>
			</div>
			<div>
				<a href="javascript:conti()" id="continue">继续挑战</a>
			</div>
		</div>
		<div class="dialog-fail">
			<div class="fail">很遗憾您失败了</div>
			<div>
				<a href="javascript:again()" id="newgame">重新开始</a>
			</div>
		</div>
	</div>
	
	<br><br>
	
	<div class="wrap">
		<div id="game-div" style="width: 500px; height: 400px">
			<h2>游戏列表</h2>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
