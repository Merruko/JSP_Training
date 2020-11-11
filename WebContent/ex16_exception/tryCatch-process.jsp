<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나누기 처리</title>
</head>
<body>

	<%
		try {
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			int result = n1 / n2;
			out.println(n1 + " / " + n2 + " = " + result);
		
		} catch(NumberFormatException e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch-error.jsp");
            dispatcher.forward(request, response);
            // RequestDispatcher 클래스는 포워딩
            // (다른 JSP파일이나 서블릿으로 정보전달) 기능을 수행
        }
	%>
	
	<!-- 브라우저로 열어야 정상 출력 됨 -->

</body>
</html>