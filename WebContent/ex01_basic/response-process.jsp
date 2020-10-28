<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>response 객체</title>
</head>
<body>
	<%
			request.setCharacterEncoding("utf-8");
			
			String user_id = request.getParameter("userID");
			String user_pw = request.getParameter("userPW");
			
			/*로그인 여부 처리
			요청 파라미터 값이 아이디가 "admin" 이고 비번이 "0000" 과 같다면,
			성공페이지, 아니면 실패 페이지로 이동*/
			if(user_id.equals("admin") && user_pw.equals("0000")) {
				response.sendRedirect("response-success.jsp");
			}else{
				response.sendRedirect("response-fail.jsp");
			}
			//response 객체가 페이지 강제 이동 시킴
	%>
	
</body>
</html>