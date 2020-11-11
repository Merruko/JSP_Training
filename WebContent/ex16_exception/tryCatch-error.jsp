<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<p>잘못된 데이터가 입력되었습니다.
	<p><%="숫자 1 : " + request.getParameter("num1") %>
	<p><%="숫자 2 : " + request.getParameter("num2") %>
	<!-- 브라우저로 열어야 정상 출력 됨 -->
</body>
</html>