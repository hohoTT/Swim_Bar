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
    
    <title>HTML详情页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="static/css/style.css" media="all">
	<link rel="stylesheet" href="static/css/html_content.css" media="all">

  </head>
  
  <body>
	<jsp:include page="nav_content.jsp"></jsp:include>
	<h1 style="text-align: center;margin-top: 50px;">HTML 详情介绍</h1>
	
	<img id="img-left" alt="" src="image/html1.jpg">
  	<img id="img-right" alt="" src="image/html2.jpg">
	
	<div id="content">
		<p>超文本标记语言，标准通用标记语言下的一个应用。</p>
		<p>“超文本”就是指页面内可以包含图片、链接，甚至音乐、程序等非文字元素。</p>
		<P>超文本标记语言的结构包括“头”部分（英语：Head）、和“主体”部分（英语：Body），
		        其中“头”部提供关于网页的信息，“主体”部分提供网页的具体内容。</P>
		<P>网页的本质就是超级文本标记语言，通过结合使用其他的Web技术（如：脚本语言、
		公共网关接口、组件等），可以创造出功能强大的网页。</p>
		<P>因而，超级文本标记语言是万维网
		（Web）编程的基础，也就是说万维网是建立在超文本基础之上的。超级文本标记语言之所以
		称为超文本标记语言，</p>
		<p>是因为文本中包含了所谓“超级链接”点。</P>
	</div>
  </body>
</html>
