<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
</head>
<style type="text/css">
	nav{margin-top: 30px; text-align: right; margin-right:30px;}
	nav ul{list-style-type: none;}
	nav ul li{display: inline; padding: 10px 15px; margin-right: 20px; border-top: 3px solid red;}
	nav ul li a{text-decoration: none; color: white;}
	nav ul li a:hover{background: red;}
</style>
<body>
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<nav>
		<% if(sessionId == null) { %>
		<ul>
			<li><a href="main.jsp">ホーム</a>
			<li><a href="login.jsp">ログイン</a>
			<li><a href="add.jsp">会員登録</a>
			<li><a href="board-list.jsp">掲示板</a>
		</ul>
		<% } else {%>
		<ul>
			<li><a href="main.jsp">ホーム</a>
			<li><a href="logout.jsp">[<%=sessionId %>님] ログアウト</a>
			<li><a href="list.jsp">会員リスト</a>
			<li><a href="board-list.jsp">掲示板</a>
		</ul>
		<% } %>
	</nav>
</body>
</html>