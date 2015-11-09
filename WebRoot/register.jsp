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

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/bootstrap/bootstrap.min.css">

<script type="text/javascript" src="static/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="static/js/validator.js"></script>

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
			<h2 class="text-center">用户注册</h2>

			<form id="register-form" action="servlet/Register" method="post">
				<div class="form-group">
					<label for="username">用户名</label> <input type="text"
						class="form-control input-lg" id="username" name="username"
						placeholder="用户名" data-error="请填写用户名" required
						autofocus>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="email">邮箱地址</label> <input type="email"
						class="form-control input-lg" id="email" name="email"
						placeholder="邮箱地址" data-error="请填写正确的邮箱地址" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="password">密码</label> <input type="password"
						class="form-control input-lg" id="password" name="password"
						data-error="请填写密码" placeholder="密码" data-minlength="6"
						data-minlength-error="密码不得少于6位" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="confirm_password">确认密码</label> <input type="password"
						class="form-control input-lg" id="confirm_password"
						name="confirm_password" placeholder="确认密码" data-match="#password"
						data-match-error="两个密码不一致" data-error="请填写确认密码" required>
					<div class="help-block with-errors"></div>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary">提交</button>
				</div>

				<input type="hidden" name="action" value="register">
			</form>
		</div>
	</div>
</body>

<script type="text/javascript" src="static/js/register.js"></script>

</html>
