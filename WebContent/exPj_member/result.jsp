<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
</head>
<style>
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: #eee; line-height: 120px; color: #333;}
	.msg{height: 80px; background: pink; line-height: 80px; color: brown; text-align: center;}
</style>
<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>회원정보</h1>
		</div>
	</div>
	<div class="msg">
		<% 
			String msg = request.getParameter("msg");
			if(msg != null){
				if(msg.equals("0")){
					out.println("<h1>회원 정보가 수정되었습니다.</h1>");
				}else if(msg.equals("1")){
					out.println("<h1>회원 가입을 축하합니다.</h1>");
				}else if(msg.equals("2")){
					int loginId = (Integer)session.getAttribute("sessionId");
					out.println("<h1>"+loginId+" 님 환영합니다.</h1>");
				}
			}else{
				out.println("<h1>회원 정보가 삭제되었습니다.</h1>");
			}
		%>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>