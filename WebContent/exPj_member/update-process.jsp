<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
</head>

<jsp:useBean id="member" class="member.Member" />
<jsp:setProperty property="memberId" name="member"/>
<jsp:setProperty property="passwd" name="member"/>
<jsp:setProperty property="name" name="member"/>
<jsp:setProperty property="gender" name="member"/>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>
<body>
<%
	if(memDAO.update(member)){
		response.sendRedirect("result.jsp?msg=0");
	}
%>
</body>
</html>