<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
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
		<h2>회원 등록</h2>
			<p>회원번호 : <%=member.getMemberId() %>
			<p>비밀번호 : <%=member.getPasswd() %>
			<p>이름 : <%=member.getName() %>
			<p>성별 : <%=member.getGender() %>
			<hr>
			<a href="list.jsp">회원 목록 보기</a>
	</div>
</body>
</html>