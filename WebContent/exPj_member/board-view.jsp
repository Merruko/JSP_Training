<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
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
	int bno = 0;		// 글 번호를 가져옴 
	if(request.getParameter("bno") != null){
		bno = Integer.parseInt(request.getParameter("bno"));
	}

	BoardDAO dao = new BoardDAO();
	Board board = dao.getDB(bno);
%>

	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>게시글 내용</h1>
		</div>	
		<p>
			<table>
				<tr>
					<td>No.</td>
					<td><input type="text" name="bno" value="<%=board.getBno() %>"></td>
				</tr>
				<tr>
					<td>Title</td>
					<td><input type="text" name="title" value="<%=board.getTitle() %>"></td>
				</tr>
				<tr>
					<td>Content</td>
					<td><input type="text" name="content" value="<%=board.getContent() %>"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="memberId" value="<%=board.getMemberId() %>"></td>
				</tr>
				<tr>
					<td>Date</td>
					<td><input type="text" name="regDate" value="<%=board.getRegDate() %>"></td>
				</tr>
				<tr>
					<td colspan="5">
						<input type="button" onclick="location.href='board-list.jsp'" value="목록">
					</td>
				</tr>
			</table>
	</div>
</body>
</html>