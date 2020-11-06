<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
<!-- EL = Expression Language -->
</head>
<body>
	<h3>문자, 숫자 데이터 표현하기</h3>
	${300}<br>
	${"감사합니다"}<br>
	${300+1}<br>
	${"300" + 20}<br>
	
	<h3>산술 연산자</h3>
	\${7+4} = ${7+4}<br>
	\${7-4} = ${7-4}<br>
	\${7*4} = ${7*4}<br>
	\${7/4} = ${7/4}<br>
	\${7%4} = ${7%4}<br>
	
</body>
</html>