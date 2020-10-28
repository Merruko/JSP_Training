<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>param 태그</title>
</head>
<body>

	<%
			String name = request.getParameter("name");
	%>

	<p>아이디 : <%=request.getParameter("id") %></p>
	<p>이름 : <%=URLDecoder.decode(name) %></p>
	
</body>
</html>