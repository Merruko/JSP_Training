<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
</head>
<style>
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 140px; font-size: 30px; background: #eee; line-height: 120px; color: #333;}
</style>
<body>
<jsp:include page="menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>Welcome to kiki's management service</h1>
		</div>
		<div>
			<p><img src="../RESOURCES/main_images/kiki.jpg" width="650" height="350" alt="friends">
			<p>
			<%
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();
				int min = day.getMinutes();
				int sec = day.getSeconds();
				if(hour/12 == 0){
					am_pm = "AM";
				}else{
					am_pm = "PM";
					hour = hour-12;
				}
				String ct = hour + ":" + min + ":" + sec + ":" + am_pm;
				out.println("현재 접속 시각 : " + ct);
				response.setIntHeader("Refresh", 5);
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>