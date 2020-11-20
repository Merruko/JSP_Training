<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 추가 처리</title>
</head>
<body>
	
	<%@ include file="dbconn.jsp" %>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO member(id, passwd, name) VALUES(?, ?, ?)";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			out.println("member 테이블에 입력 성공했습니다.");
		}catch(Exception e){
			e.printStackTrace();
			out.println("member 테이블에 입력 실패했습니다.");
			
		}finally{
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>
	
</body>
</html>