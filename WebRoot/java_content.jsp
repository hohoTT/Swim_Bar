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

<title>JAVA详情页</title>

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
	<h1 style="text-align: center;margin-top: 50px;">JAVA 详情介绍</h1>
	
	<img id="img-left" alt="" src="image/java1.jpg">
  	<img id="img-right" alt="" src="image/java2.jpg">
  	<div id="content">
  		<p>Java是一种可以撰写跨平台应用程序的面向对象的程序设计语言。Java 技术具有
  		卓越的通用性、高效性、平台移植性和安全性，广泛应用于PC、</p>
  		<p>数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的
  		开发者专业社群。</p>
  		<P>Java是由Sun Microsystems公司推出的Java面向对象程序设计语言（以下简称Java语言）和Java平台的总称。
  		由James Gosling和同事们共同研发，</p>
  		<P> 并在1995年正式推出。Java最初被称为Oak，是1991年为消费类电子产品的嵌入式芯片而设计的。1995年更名为Java，
  		并重新设计用于开发Internet</p>
  		<p>应用程序。用Java实现的HotJava浏览器（支持Java applet）显示了Java的魅力：
  		跨平台、动态Web、Internet计算。从此，Java被广泛接受并推动了</p>
  		<p>Web的迅速发展，常用的浏览器均支持Javaapplet。另一方面，Java技术也不断更新。
  		Java自面世后就非常流行，发展迅速，对C++语言形成有力冲击。</p>
  		<p>在全球云计算和移动互联网的产业环境下，Java更具备了显著优势和广阔前景。2010年Oracle公司收购Sun Microsystems。</P>
  	</div>
</body>
</html>
