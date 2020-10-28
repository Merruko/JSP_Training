<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>Web Page</title>
</head>
<body>

	<!-- 선언문 태그 , 종료 세미콜론 -->
	<%! int num = 50; %>

	<!-- 표현문 태그 -> 결과를 문자열로 출력 -->
	<%=num %>
	<br>
	
	<!-- 스크립트릿 태그, out은 문자열 출력 내장 객체 -->
	<%
		out.println("num = +" + num);
	%>
	
</body>
</html>