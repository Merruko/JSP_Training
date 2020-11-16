<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
<meta http-equiv="refresh" content="3; url=main.jsp">	<!-- 3초 후 메인으로 이동 -->
</head>
<style>
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: red; line-height: 140px; color: black;}
	.msg{height: 80px; background: white; line-height: 80px; color: black; text-align: center;}
	h1{text-align: center;}
</style>
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
					String loginId = (String)session.getAttribute("sessionId");
					out.println("<h1>"+loginId+" 님 환영합니다.</h1>");
				}
			}else{
				session.invalidate(); // 탈퇴 후 자동 로그아웃
				out.println("<h1>회원 정보가 삭제되었습니다.</h1>");
			}
		%>
	</div>
	<h1>메인 페이지로 이동합니다.</h1>
	<jsp:include page="footer.jsp" />
</body>
</html>