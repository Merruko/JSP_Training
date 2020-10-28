<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>param 태그</title>
</head>
<body>

	<h2>param 액션 태그</h2>
	<jsp:forward page="param-data.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%= URLEncoder.encode("장영주") %>' name="name"/>
	</jsp:forward>
	<!-- id, name이 매개변수, value는 값 -->
	
</body>
</html>