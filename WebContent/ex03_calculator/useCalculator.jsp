<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="dao.Calculator" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>

	<jsp:useBean id="calc" class="dao.Calculator" />
	<!-- Calculator calc = new Calculator -->
	
	<%
		int num = calc.square(4);
		out.println("4의 제곱 : " + num);
	%>
	
</body>
</html>