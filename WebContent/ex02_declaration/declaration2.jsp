<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
	<title>Web Page</title>
</head>

	<%-- 선언문 태그에 전역 메서드 사용하기 --%>
	<%! int sum(int x, int y){		// 합계 메서드
			return x+y;
		}
		
		String makeItlower(String data){		// 소문자 변환 메서드
			return data.toLowerCase();
		}	
	%>
	
	<%
		out.println("10 + 20 = " + sum(10,20) + "<br>");	//println 이어도 줄 안 바뀜
		out.println(makeItlower("THANK YOU !!"));
	%>
	
<body>
</body>
</html>