<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("main.jsp");
	%>
</body>
</html>