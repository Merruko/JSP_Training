<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
</head>
<style>
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: red; line-height: 120px; color: black;}
	.msg{height: 80px; background: white; line-height: 80px; color: black; text-align: center;}
	.msg a{text-decoration: none; color: black;}
	.msg a:hover{text-decoration: underline;}
</style>
<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h2>エラー</h3>
		</div>
	</div>
	<div class="msg">
		<h1><a href="main.jsp">ホームへ &raquo;</a></h1>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>