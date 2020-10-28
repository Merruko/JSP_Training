<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response 객체</title>
<style type="text/css">
	#container{
		width: 400px;
		margin: 0 auto;
		border: 2px solid #ccc;
	}
	h2{text-align: center;}
	ul li{
		list-style: none;
		margin: 15px
	}
	li label{
		width: 80px;
		float: left;	
	}
	li input[type="submit"]{
		width: 250px;
	}		
</style>
</head>
<body>
	<div id="container">
		<h2>로그인</h2>
		<form action="response-process.jsp" method="post">
		<ul>
			<li>
				<label for="id">아이디</label>
				<input type="text" name="id">
			</li>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="password" name="passwd">
			</li>
			<li>
				<input type="submit" value="전송">
			</li>
		</ul>
		</form>
		<p>이 페이지는 5초마다 새로 고침 됩니다.</p>
		<%
			response.setIntHeader("Refresh", 5);
		%>
		<%=new Date() %>
	</div>
</body>
</html>