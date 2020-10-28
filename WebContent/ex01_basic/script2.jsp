<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>오늘의 날짜 및 시간</title>
</head>
<body>

	<p>Today is <%=new Date() %></p>
	
	<p>오늘의 날짜와 시간은 <%=new Date().toLocaleString() %></p>

</body>
</html>