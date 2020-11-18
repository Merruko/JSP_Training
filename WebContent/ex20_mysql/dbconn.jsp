<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL Connection</title>
</head>
<body>

	<%
		Connection conn = null;
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/HRDB?useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pwd = "1234";
		
	
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pwd);
	%>
	
</body>
</html>