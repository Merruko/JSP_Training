<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>request 객체</title>
</head>
<body>
	<%
		//요청 파라미터의 값이 한글일 경우 인코딩 코드	
		request.setCharacterEncoding("utf-8");
		//id와 passwd를 받아와서 id, pw에 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
	%>
	<p>아이디 : <%=id %>		<!-- 표현식 태그 -->
	<p>비밀번호 : <% out.println(pw); %> <!-- 스크립트릿 방식 -->	
</body>
</html>