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
		
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
			out.println("데이터베이스 연결이 성공했습니다.");
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>