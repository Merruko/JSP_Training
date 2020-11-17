<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
<meta http-equiv="refresh" content="1; url=main.jsp">	<!-- 1초 후 메인으로 이동 -->
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
			<h1>会員情報</h1>
		</div>
	</div>
	<div class="msg">
		<% 
			String msg = request.getParameter("msg");
			if(msg != null){
				if(msg.equals("0")){
					out.println("<h1>会員情報を修正しました。</h1>");
				}else if(msg.equals("1")){
					out.println("<h1>ようこそ、KMSへ。</h1>");
				}else if(msg.equals("2")){
					String loginId = (String)session.getAttribute("sessionId");
					out.println("<h1>"+loginId+"様 ようこそ。</h1>");
				}
			}else{
				session.invalidate(); // 탈퇴 후 자동 로그아웃
				out.println("<h1>会員情報を削除しました。</h1>");
			}
		%>
	</div>
	<h1>メインページに移動します。</h1>
	<jsp:include page="footer.jsp" />
</body>
</html>