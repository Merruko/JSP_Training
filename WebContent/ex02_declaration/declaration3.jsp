<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
	<title>Web Page</title>
</head>
<body>
	<p>Today's date : <%= new Date() %></p>
	<p>Today's date : <%= new Date().toLocaleString() %></p>
	<!--  Date date = new Date() -->
</body>
</html>