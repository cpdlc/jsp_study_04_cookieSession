<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>session</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1></h1>
	</header>
	
	
	<section>
		<h2>▶ 세션에 값 얻어오기</h2>
		<div class="contentWrap">
			<%
			
				String id=(String)session.getAttribute("id");
				String pwd=(String)session.getAttribute("pwd");
				Integer age=(Integer)session.getAttribute("age");
			%>
			
		<table>
			<tr>
				<th>id</th>
				<th><%=id %></th>
			</tr>
			
			<tr>
				<th>pwd</th>
				<th><%=pwd %></th>
			</tr>
			
			<tr>
				<th>age</th>
				<th><%=age %></th>
			</tr>
		</table>
		</div>
	</section>
	
	
</body>
</html>