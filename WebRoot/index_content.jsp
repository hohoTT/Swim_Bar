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

<title>My JSP 'index_content.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body>
	
	<p id="title">Swim_Bar</p>
	<p id="title-tail">join &nbsp;us</p>

	<%
		String div_style = "block";
		String is_online = "none";
		String again_login = "none";
		Object user = session.getAttribute("username");
		String username = (String) user;
		
		Boolean isValidate = (Boolean) session.getAttribute("isValidate");

		if (username != null) {
			div_style = "none";
			is_online = "block";
		}
		
		if(isValidate != null && isValidate == false){
			div_style = "none";
			again_login = "block";
			is_online = "none";
		}
		
	%>

	<div id="login" style="display: <%=div_style%>">
		<a href="login.jsp">
			<button class="btn btn-success btn-lg">
			登录
			</button> 
		</a> 
		<a href="register.jsp">
			<button class="btn btn-warning btn-lg">
			注册
			</button>
		</a>
	</div>
	
	<div id="login" style="display: <%=again_login%>">
		<a href="login.jsp">
			<button class="btn btn-success btn-lg">
			用户名或密码错误，请重新登录
			</button> 
		</a> 
		<a href="register.jsp">
			<button class="btn btn-warning btn-lg">
			注册
			</button>
		</a>
	</div>

	<div id="login" style="display: <%=is_online%>">
		<a href="index.jsp">
			<button class="btn btn-success btn-lg">
				<%=username%>
			</button> </a>
		<a href="exit.jsp">
			<button class="btn btn-warning btn-lg">
				退出登录
			</button> </a>
	</div>

	<div id="div-link">
		<a id="a1" href="shopping.jsp">
			<div class="link" id="shopping">
				<span>Surprised</span>
			</div> </a> <a href="game.jsp">
			<div class="link" id="link2">
				<span>Game</span>
			</div> </a> <a href="about.jsp">
			<div class="link" id="link3">
				<span>About</span>
			</div> </a> <a href="http://form.mikecrm.com/f.php?t=iELKEQ" target="_blank">
			<div class="link" id="link4">
				<span>feedback</span>
			</div> </a>
	</div>
</body>
</html>
