<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
		<h4>구구단 출력하기</h4>
		<jsp:forward page="forward-data.jsp">
				<jsp:param value="5" name="dan"/>
		</jsp:forward>
		<!-- int dan = 5 -->
</body>
</html>