<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 예제</title>
</head>
<body>

	<%
		// 다중 세션 정보 얻어오기 - 속성, 값을 함께 얻어오기
		String name;
		String value;
		
		Enumeration<String> enu = session.getAttributeNames();
		int i = 0;	// 인덱스 반복 변수
		while(enu.hasMoreElements()){	// 세션 정보가 있다면
			i++;
			name = enu.nextElement();	// 속성 이름을 가져오고
			value = session.getAttribute(name).toString();	// 속성 이름으로 값 가져옴
		
			out.print("설정된 세션의 속성 이름 [" + i + "] : " + name + "<br>");
			out.print("설정된 세션의 속성 값 [" + i + "] : " + value + "<br>");
		}
	%>
	
</body>
</html>