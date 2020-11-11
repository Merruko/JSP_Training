<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 예제</title>
</head>
<body>
	<%
		// 쿠키 유효시간 만료 시키기 (삭제 시키기)
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);	// 유효기간 0 -> 삭제
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie2.jsp");
	%>
</body>
</html>