<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login process</title>
</head>
	<jsp:useBean id="login" class="dao.LoginBean" scope="request"/>
	<jsp:setProperty property="id" name="login"/>
	<jsp:setProperty property="pw" name="login"/>
<body>
	<h2>login</h2>
	<hr>
	<%
		//로그인 성공여부 알림을 표시하는 부분
		if(login.checkUser()){
			out.print("로그인이 성공하셨습니다.");
		}else{
			out.print("로그인이 실패하셨습니다.");
		}
	%>
	<p> user ID: <jsp:getProperty property="id" name="login"/>
	<p> user PW: <jsp:getProperty property="pw" name="login"/>
</body>
</html>