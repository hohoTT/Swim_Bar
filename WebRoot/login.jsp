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

<title>用户登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">

<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="static/js/validator.js"></script>
<script type="text/javascript" src="static/js/bsAlert.js"></script>


<style type="text/css">
div {
	top: 100px;
}

#title {
	position: fixed;
	top: 50px;
	left: 100px;
	font-size: 40px;
}

#title-tail {
	position: fixed;
	top: 130px;
	left: 210px;
	font-size: 20px;
}
</style>
</head>

<body>
	<a href="/Swim_Bar/">
		<p id="title">Swim_Bar</p>
		<p id="title-tail">join &nbsp;us</p>
	</a>
	<div class="container main">
		<div class="col-md-6 col-md-offset-3">
			<h2 class="text-center">用户登录</h2>

			<form id="login-form" action="servlet/UserServlet" method="post">
				<div class="form-group">
					<label for="username">用户名</label> <input type="text"
						class="form-control input-lg" id="username" name="username"
						maxlength="30" data-error="请填写用户名" placeholder="用户名" autofocus
						required>

					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="password">密码</label> <input type="password"
						class="form-control input-lg" id="password" name="password"
						maxlength="30" data-error="请填写密码" placeholder="密码" required>

					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group" id="captcha-area"></div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">提交</button>
				</div>
				<a href="register.jsp">还没有帐号?点击注册</a> <input type="hidden"
					name="action" value="login">
			</form>
		</div>
	</div>
</body>

<script type="text/javascript" src="static/js/login.js"></script>

</html>
