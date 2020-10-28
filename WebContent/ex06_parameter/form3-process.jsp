<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터로 정리하기</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		Enumeration<String> enu = request.getParameterNames();
		while(enu.hasMoreElements()){
			String name = enu.nextElement();
			String[] values = request.getParameterValues(name);
			for(String value : values)
				out.println(name + " : " + value + "<br>");
		}
	%>
</body>
</html>