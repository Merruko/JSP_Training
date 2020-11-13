<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import= "javax.sql.DataSource" import ="javax.naming.*"
    import ="javax.naming.InitialContext" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<%
	Connection conn = null;
	DataSource ds = null;
	PreparedStatement pstmt = null;
	
	try {
		
	Context initCtx = new InitialContext();
	Context envCtx = (Context)initCtx.lookup("java:/comp/env");
	ds = (DataSource)envCtx.lookup("jdbc/oracle");
       
	conn = ds.getConnection();  //커넥션 얻어오기
	String sql = "INSERT INTO dbcp_test VALUES (?, ?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("email"));
	pstmt.executeUpdate();
       
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 등록</title>

<style type="text/css">
	#container{width:100%; margin:0 auto; text-align:center;}
</style>

</head>
<body>
<div id = "container">
<h2>이벤트 등록</h2>
<hr>
	<form action="dbcpTest.jsp" method="post">
		<p>등록 이름 : <input type="text" name="name">
		   등록 이메일: <input type="text" name="email"></p>
		<input type="submit" value="등록">
	</form>
</div>
      
<hr>
      
<p>=== 등록목록 ===</p>

<%
	try{
	// 자료 조회
	String sql = "SELECT name, email FROM dbcp_test";
	pstmt = conn.prepareStatement(sql);
      		
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
		out.println(rs.getString(1) + ", " + rs.getString(2) + "<br>");
	}
	
	rs.close();
	pstmt.close();
	conn.close();
	
	} catch(Exception e) {
		e.printStackTrace();
	}
%>

</body>
</html>