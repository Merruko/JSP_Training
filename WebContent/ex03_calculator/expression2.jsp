<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
	<title>1부터 10까지 출력</title>
</head>
<body>
	<p>1부터 10까지 출력</p>
	
	<%
		for(int i = 1; i <=10; i++){
			out.println(i + "<br>");
		}
	%>
	
	<p>=============</p>
	
	<!-- 표현문 태그로 작성 -->
	<%
		for(int i=1; i<=10; i++){
	%>
	<%=i%><br>
	<%
		}
	%>
	
</body>
</html>