<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter 예제</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
	%>

	<p> 입력된 name 값 : <%=name %>

</body>
</html>