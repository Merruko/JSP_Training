<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
</style>
</head>
<jsp:useBean id="member" class="member.Member" />
<jsp:setProperty property="*" name="member"/>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	memDAO.addMember(member);
	response.sendRedirect("result.jsp?msg=1");
%>

<body>
	<div id="container">
		<h2>会員登録</h2>
			<p>ID : <%=member.getMemberId() %>
			<p>パスワード : <%=member.getPasswd() %>
			<p>氏名 : <%=member.getName() %>
			<p>性別 : <%=member.getGender() %>
			<hr>
			<a href="list.jsp">会員リストへ</a>
	</div>
</body>
</html>