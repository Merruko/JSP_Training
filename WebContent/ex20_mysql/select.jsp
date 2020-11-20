<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 목록</title>
</head>
<body>

	<%@ include file="dbconn.jsp" %>
	
	<h2>데이터 목록</h2>
	<table>
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th>
		</tr>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try{
				String sql = "SELECT * FROM member";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	// rs 객체를 생성
				while(rs.next()){
					String id = rs.getString("id");
					String pw = rs.getString("passwd");
					String name = rs.getString("name");
			%>
			<tr>
				<td><%=id %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
			</tr>
			<%	
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}
		%>
	</table>

</body>
</html>