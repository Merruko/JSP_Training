<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
<style type="text/css">
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 130px; width: 100%; font-size: 20px; background: red; line-height: 130px; color: black;}
	table{margin: 0 auto; width: 800px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid gray; padding: 10px;}
	input[type="text"]{width: 100%; height: 20px;}
	textarea{width: 100%; height: 300px;}
</style>
</head>
<body>

<%
	String sessionId = null;
	if(session.getAttribute("sessionId") != null){
		sessionId = (String)session.getAttribute("sessionId");
	}
	
	if(sessionId == null){
		out.println("<script>alert('ログインしてください。'); location.href='login.jsp'; </script>");
	}
	else{ %>

	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>スレッド作成</h1>
		</div>	
		<p>
		<form action="board-write-process.jsp" method="post">
			<table>
				<tr>
					<td><input type="text" name="title" placeholder="タイトル"></td>
				</tr>
				<tr>
					<td><textarea name="content" placeholder="内容"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="登録">
						<input type="reset" value="書き直し">
						<input type="button" value="取り消し" onclick="history.back(-1);">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<% } %>
	
</body>
</html>