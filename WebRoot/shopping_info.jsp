<%@page import="com.wt.bean.Book"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>我的购物详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="static/css/style.css" media="all">
<link rel="stylesheet" href="static/css/shopping_info.css" media="all">

</head>

<body>
	<jsp:include page="nav_content.jsp"></jsp:include>

	<%
		Thread.sleep(1500);
	 %>

	<%
		String islogin = "none";
		String info = "none";
		String list = "none";
		String username = (String) session.getAttribute("username");
		if (username == null) {
			islogin = "block";
		} else {
			Boolean isinfo = Book.isExisted(username);
			System.out.println(isinfo);
			if(isinfo){
				List<Book> books = Book.query(username);
				int count = -1;
				
				request.setAttribute("books", books);
				
				for (Book book : books) {
					System.out.println(book.getUsername());
					System.out.println(book.getBookname());
					System.out.println(book.getQuantity());
					System.out.println(book.getPrice());
					count++;
		        }
		        request.setAttribute("count", count);
	            list = "block";
			}
			else{
				info = "block";
			}
		}
	%>

	<div class="info" class="wrap" style="display: <%=islogin%>">
		<h1>你现在还未登录，请点击右上方的登录方可查看购物车信息 ~~</h1>
	</div>
	<div class="info" class="wrap" style="display: <%=info%>">
		<h1>你现在还没有购物信息 ~~</h1>
	</div>
	
	<div class="isinfo" class="wrap" style="display: <%=list%>">
		<h1>购买信息如下 ~~</h1>
	</div>

	<table id="list" class="table table-bordered text-center"
		style="display: <%=list%>;">
		<thead>
			<tr>
				<td>#</td>
				<td>用户名</td>
				<td>书名</td>
				<td>数量</td>
				<td>价格</td>
				<td>操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${books}" var="book" begin="0" end="${count}"
				step="1" varStatus="vs">
				<tr>
					<td></td>
					<td>${book.username}</td>
					<td>${book.bookname}</td>
					<td>${book.quantity}</td>
					<td>${book.quantity} * ${book.price}
					= ${book.quantity*book.price}</td>
					<td>
						<a >
							<button id="delete" type="button" class="btn btn-danger"
								onclick="window.location.href=
								'servlet/deleteInfoServlet?username=${book.username}&bookname=${book.bookname}';">
								刪除
							</button>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="result" style="display: <%=list %>">
		<h1>合计</h1>
		<hr>
		<h1 id="price">总计:</h1>
	</div>
</body>
</html>
