<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
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
%>

	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>글쓰기 양식</h1>
		</div>	
		<p>
		<form action="board-write-process.jsp" method="post">
			<table>
				<tr>
					<td><input type="text" name="title" placeholder="글제목"></td>
				</tr>
				<tr>
					<td><textarea name="content" placeholder="글내용"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="등록">
						<input type="reset" value="리셋">
						<input type="button" value="취소" onclick="history.back(-1);">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>