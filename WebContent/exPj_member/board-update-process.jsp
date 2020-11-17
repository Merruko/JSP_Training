<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.BoardDAO" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<jsp:useBean id="board" class="member.Board" />
<jsp:setProperty property="*" name="board" />
<body>

	<% 
		BoardDAO dao = new BoardDAO();
		dao.updateBoard(board);
		response.sendRedirect("board-list.jsp");
	%>

</body>
</html>