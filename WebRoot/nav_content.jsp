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

<title>My JSP 'nav_content.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/responsiveslides.css">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">

<link rel="stylesheet" href="static/css/nav_content.css">

</head>

<body>
	<%
		String username = (String) session.getAttribute("username");
		String nav = "login.jsp";
		String exit = "none";
		
		if (username == null) {
			username = "登录";
		} else {
			nav = "shopping.jsp";
			exit = "bolck";
		}
	%>


	<nav class="navbar navbar-masthead navbar-default navbar-static-top">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#navbar" aria-expanded="false"
			aria-controls="navbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/Swim_Bar">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Swim_Bar </a>
	</div>

	<div id="navbar" class="navbar-collapse collapse">
		<ul id="nav-ul" class="nav navbar-nav navigation">
			<li><a class="navigation-a" href="shopping.jsp"> <span>书城</span>
			</a>
			</li>
			<li><a class="navigation-a" href="game.jsp"> <span>娱乐一下</span>
			</a>
			</li>
			<li><a class="navigation-a" href="shopping.jsp"> <span>讨论区</span>
			</a>
			</li>
			<li><a class="navigation-a" href="about.jsp"> <span>关于</span>
			</a>
			</li>
			<li><a class="navigation-a"
				href="http://form.mikecrm.com/f.php?t=iELKEQ" target="_blank"> <span>反馈</span>
			</a>
			</li>

			<li><a id="login-a" href=<%=nav%>> <span><%=username%></span>
			</a>
			</li>
			<a href="exit.jsp" style="display: <%= exit %>; text-decoration:none;">
				<div id="exit">
					<span id="span-exit">退出</span>
				</div> 
			</a>
		</ul>

		<ul class="nav navbar-nav navbar-right">
		</ul>
	</div>
	</nav>
</body>
</html>
