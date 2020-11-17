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
<jsp:useBean id="boDAO" class="member.BoardDAO" />
<jsp:setProperty property="*" name="boDAO" />

<body>
	<%
		int bno = Integer.parseInt(request.getParameter("bno"));
	
		if(boDAO.deleteBoard(bno)){
			response.sendRedirect("board-list.jsp");
		}	
	%>
</body>
</html>