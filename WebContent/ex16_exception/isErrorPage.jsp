<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="isErrorPrint.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	name 파라미터 : <%=request.getParameter("name").toUpperCase() %>
	<!-- 브라우저로 열어야 정상 출력 됨 -->
</body>
</html>