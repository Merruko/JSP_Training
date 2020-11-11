<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커스텀 태그 예제</title>

<style type="text/css">
	#container{width: 100%; margin: 0 auto; text-align: center;};	
</style>

</head>
<body>
	<div id="container">
		<h2>태그 파일 예제</h2>
		<hr>
		<mytag:item border="2" bgcolor="yellow">상품 목록</mytag:item>
	</div>
</body>
</html>