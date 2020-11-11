<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
</head>
<style type="text/css">
	nav{margin-top: 30px; text-align: right; margin-right:30px;}
	nav ul{list-style-type: none;}
	nav ul li{display: inline; padding: 10px 15px; margin-right: 20px; border-top: 3px solid #222; }
	nav ul li a{text-decoration: none; color: black;}
	nav ul li a:hover{background: rgb(196, 196, 196);}
</style>
<body>
	<%
		int sessionId = 0;
		if(session.getAttribute("sessionId") != null){
			sessionId = (Integer)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<nav>
		<% if(sessionId == 0) { %>
		<ul>
			<li><a href="main.jsp">홈</a>
			<li><a href="login.jsp">로그인</a>
			<li><a href="add.jsp">회원가입</a>
			<li><a href="#">게시판</a>
		</ul>
		<% } else {%>
		<ul>
			<li><a href="main.jsp">홈</a>
			<li><a href="logout.jsp">[<%=sessionId %>님] 로그아웃</a>
			<li><a href="list.jsp">회원목록</a>
			<li><a href="#">게시판</a>
		</ul>
		<% } %>
	</nav>
</body>
</html>