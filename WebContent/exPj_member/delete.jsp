<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="member.Member" />
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	String memId = request.getParameter("memberId");
	if(memDAO.delete(memId)){
		response.sendRedirect("result.jsp?");
	}
%>