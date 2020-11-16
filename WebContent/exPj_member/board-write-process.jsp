<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<%@ page import="member.BoardDAO" %>

<jsp:useBean id="board" class="member.Board" />
<jsp:setProperty property="title" name="board"/>
<jsp:setProperty property="content" name="board"/>

<%
	String sessionId = null;
	if(session.getAttribute("sessionId") != null){
		sessionId = (String)session.getAttribute("sessionId");
	}
	if(sessionId == null){
		out.println("<script>alert('로그인이 필요합니다.'); location.href='login.jsp'; </script>");
	}else{
		if(board.getTitle() == null || board.getContent() == null){
			out.println("<script>alert('입력이 되지 않은 항목이 있습니다.'); history.back(); </script>");
		}else{
			BoardDAO dao = new BoardDAO();
			dao.writing(board.getTitle(), board.getContent(), sessionId);
			response.sendRedirect("board-list.jsp");
		}
	}
%>
