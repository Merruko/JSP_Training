<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="dao.Person" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="dao.Person" scope="request" />
	<!-- Person person = new Person --> <!-- 유즈빈 쓰면 임포트 따로 안해도 됨 -->
	<p> 아이디 : <%=person.getId() %>	
	<p> 이름 : <%=person.getName() %>
	<%
		person.setId(20101002);
		person.setName("안영이");
	%>
	<jsp:include page="usePerson.jsp"/>
</body>
</html>