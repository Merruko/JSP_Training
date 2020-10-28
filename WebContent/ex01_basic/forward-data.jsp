<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>forward 태그</title>
</head>
<body>
	<h2>오늘의 날짜 및 시간</h2>
	<p><%=new Date().toLocaleString()  %></p>
</body>
</html>