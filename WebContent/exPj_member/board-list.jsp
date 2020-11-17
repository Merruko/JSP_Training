 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
<style type="text/css">
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 130px; width: 100%; font-size: 20px; background: red; line-height: 130px; color: black;}
	table{margin: 0 auto; width: 800px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid gray; padding: 10px;}
</style>
</head>
<body>

<%
	String sessionId = null;
	if(session.getAttribute("sessionId") != null){
		sessionId = (String)session.getAttribute("sessionId");
	}
%>

	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>スレッドリスト</h1>
		</div>	
		<p>
			<table>
				<tr>
					<td>No.</td><td>Title</td><td>Content</td><td>Name</td><td>Date</td>
				</tr>
				<% 
					BoardDAO dao = new BoardDAO();
					for(Board board : dao.getListAll()){ %>
					<tr>
						<td><%=board.getBno() %></td>
						<td><a href="board-view.jsp?bno=<%=board.getBno() %>"><%=board.getTitle() %></a></td>
						<td><%=board.getContent() %></td>
						<td><%=board.getMemberId() %></td>
						<td><%=board.getRegDate() %></td>
					</tr>
					<% } %>
					<tr>
						<td colspan="5">
							<input type="button" onclick="location.href='board-write.jsp'" value="スレッド作成">
					</tr>
			</table>
	</div>
</body>
</html>