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
    
    <title>关于</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="static/css/style.css" media="all">
	<link rel="stylesheet" href="static/css/about.css" media="all">
	
  </head>
  
  <body>
	<jsp:include page="nav_content.jsp"></jsp:include>
	
	<h2 id="title" style="text-align: center;margin-top: 50px;">Swim_Bar 简介</h2>
  	<img id="img-left" alt="" src="image/book/book2.jpg">
  	<img id="img-right" alt="" src="image/book/book3.jpg">
  	
  	<div id="content">
  		<h3 style="margin-left: 30%">这不仅仅是一个购书网站 ~</h3>
  		<h3 style="margin-left: 34%">IT书籍随时更新 ~</h3>
  		<h3 style="margin-left: 27%">在这里你可以得到最新的IT知识 ~</h3>
  		<h3 style="margin-left: 32%">学累了不如娱乐一下 ~</h3>
  		<h3 style="margin-left: 35%">轻松加愉快 ~</h3>
  		<h3 style="margin-left: 30%">&nbsp;我们有全天在线的客服 ~</h3>
  	</div>
  </body>
</html>
